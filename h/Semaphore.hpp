//
// Created by os on 10/16/25.
//

#ifndef PROJECT_BASE_V1_1_SEMAPHORE_H
#define PROJECT_BASE_V1_1_SEMAPHORE_H

#include "list.hpp"
#include "ccb.hpp"

class Semaphore {
public:
    explicit Semaphore(unsigned int init = 1) : val(init), closed(false) {}
    virtual ~Semaphore();

    int wait();
    int signal();
    int close();

    int getValue() const { return val; }

protected:
    void block();
    void unblock();

private:
    int val;
    bool closed;
    List<CCB> blocked;
};

int lck = 0; // lock

#endif //PROJECT_BASE_V1_1_SEMAPHORE_H
