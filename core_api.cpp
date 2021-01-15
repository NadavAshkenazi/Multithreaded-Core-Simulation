/* 046267 Computer Architecture - Spring 2020 - HW #4 */

#include "core_api.h"
#include "sim_api.h"
#include "vector"

#include <stdio.h>
#include <string>

using namespace std;

class ThreadData{
public:
    int tid;
    bool isHalt;
    int cyclesOnHold;
    tcontext* context;
    int lastLine;
    ThreadData(int tid): tid(tid), isHalt(false), cyclesOnHold(0), lastLine(-1){
        context = new tcontext();
    }
    ~ThreadData(){
        delete context;
    }
};

class BlockedMT{
    int numOfThreads;
    std::vector<ThreadData*>* threads;
    double cycles;
    double instructionCounter;
    bool _noOp;
    bool _isIdle;
public:
    BlockedMT();
    ~BlockedMT();
    bool isOver();
    void reduceHoldCounter();
    int getNextCycle(int currentThread);
    void executeLine(Instruction* inst, int threadNum);
    void runSim();
    void getContext(tcontext* context, int threadNum);
    double getCPI();
};


BlockedMT::BlockedMT(): cycles(0), instructionCounter(0), _noOp(false), _isIdle(false) {
    numOfThreads = SIM_GetThreadsNum();
    threads = new vector<ThreadData*>();
    for (int i = 0; i < this->numOfThreads; i++){
        threads->push_back(new ThreadData(i));
    }
}

BlockedMT::~BlockedMT(){
    for (int i = 0; i < this->numOfThreads; i++){
        ThreadData* temp = threads->at(i);
        delete temp;
    }
}

bool BlockedMT::isOver(){
    for (vector<ThreadData*>::iterator it = threads->begin(); it != threads->end(); it++){
        if (!(*it)->isHalt)
            return false;
    }
    return true;
}

int BlockedMT::getNextCycle(int currentThread){
    if (isOver())
        return currentThread;
    if (threads->at(currentThread)->isHalt || threads->at(currentThread)->cyclesOnHold > 0){
        _noOp = true;
        for (int i = currentThread; i < numOfThreads + currentThread; i++) {
            int tempThread = i % numOfThreads;
            if (threads->at(tempThread)->isHalt || threads->at(tempThread)->cyclesOnHold >0) {
                continue;
            }
            _isIdle = false;
            return tempThread;
        }
        _isIdle = true;
        return currentThread;
    }
    else{
        _noOp = false;
        _isIdle = false;
        return currentThread;
    }
}

void BlockedMT::reduceHoldCounter(){
    for (vector<ThreadData*>::iterator it = threads->begin(); it != threads->end(); it++){
        if ((*it)->cyclesOnHold > 0)
            (*it)->cyclesOnHold --;
    }
}
void BlockedMT::executeLine(Instruction* inst, int threadNum){
    if (inst->opcode == CMD_HALT) {
        threads->at(threadNum)->isHalt = true;
        return;
    }
    int* dstReg = &threads->at(threadNum)->context->reg[inst->dst_index];
    int src1 = threads->at(threadNum)->context->reg[inst->src1_index];
    int src2 = NULL;
    if (inst->isSrc2Imm)
        src2 = inst->src2_index_imm;
    else
        src2 = threads->at(threadNum)->context->reg[inst->src2_index_imm];

    switch (inst->opcode) {
        case CMD_ADD:
            *dstReg = src1 + src2;
            break;
        case CMD_ADDI:
            *dstReg = src1 + src2;
            break;
        case CMD_SUB:
            *dstReg = src1 - src2;
            break;
        case CMD_SUBI:
            *dstReg = src1 - src2;
            break;
        case CMD_STORE:
            SIM_MemDataWrite((*dstReg + src2), src1);
            threads->at(threadNum)->cyclesOnHold = SIM_GetStoreLat();
            break;
        case CMD_LOAD:
            int32_t* data = new int32_t();
            SIM_MemDataRead((src1+src2), data);
            *dstReg = *data;
            threads->at(threadNum)->cyclesOnHold = SIM_GetLoadLat();
            break;
    }

}


void BlockedMT::runSim(){
    Instruction* inst = new Instruction();

    int line;
    int threadNum = 0;

    while(!isOver()){
        cycles++;
        if (_noOp){
            if (!_isIdle){
                cycles += SIM_GetSwitchCycles() -1;
                for (int i = 0; i < SIM_GetSwitchCycles() -1; i++) {
                    reduceHoldCounter();
                }
            }

            else {
                int debug = 0;
            }
        }
        else {
            line = threads->at(threadNum)->lastLine + 1;
            SIM_MemInstRead (line, inst, threadNum);
            executeLine(inst, threadNum);
            threads->at(threadNum)->lastLine  = line;
            instructionCounter ++;
        }
        threadNum = getNextCycle(threadNum);
        reduceHoldCounter();
    }
}


void BlockedMT::getContext(tcontext* context, int threadNum){
    for (int i = 0; i < REGS_COUNT; i++){
        context->reg[i] = threads->at(threadNum)->context->reg[i];
    }
    return;
}

double BlockedMT::getCPI(){
    return cycles/instructionCounter;
}


BlockedMT* blockedMt;


void CORE_BlockedMT() {
    blockedMt = new BlockedMT();
    blockedMt->runSim();
}

void CORE_FinegrainedMT() {
}

double CORE_BlockedMT_CPI(){
	double res = blockedMt->getCPI();
	delete blockedMt;
	return res;
}

double CORE_FinegrainedMT_CPI(){
	return 0;
}

void CORE_BlockedMT_CTX(tcontext* context, int threadid) {
    blockedMt->getContext((context+threadid), threadid);
    return;
}

void CORE_FinegrainedMT_CTX(tcontext* context, int threadid) {
}
