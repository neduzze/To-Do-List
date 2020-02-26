//
// Created by neduzze on 2/27/20.
//
#pragma once

#include <string>
using namespace std;
#define MAX_SIZE 101

class TodoList {
private://variables
    string myList[MAX_SIZE];
    string item;
    bool quitFlag = false;
private://methods
    void listMenu();
    void displayList();
    void listAction();
    void addItem();
    void removeItem();
    void editItem();
    void quitList();
    static void messages(const int& x);
//TODO: method to check input and catch errors
public://variables
public://methods
    TodoList();
    void startList();
    ~TodoList();
};
