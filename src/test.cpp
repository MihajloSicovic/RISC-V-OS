//
// Created by marko on 20.4.22..
//

#include "../h/ccb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/Semaphore.hpp"

int main()
{
    CCB *coroutines[3];

    coroutines[0] = CCB::createCoroutine(nullptr);
    CCB::running = coroutines[0];

    coroutines[1] = CCB::createCoroutine(workerBodyC);
    printString("CoroutineC created\n");
    coroutines[2] = CCB::createCoroutine(workerBodyD);
    printString("CoroutineD created\n");

    while (!(coroutines[1]->isFinished() &&
             coroutines[2]->isFinished()))
    {
        CCB::yield();
    }

    for (auto &coroutine: coroutines)
    {
        delete coroutine;
    }
    printString("Finished\n");

    return 0;
}