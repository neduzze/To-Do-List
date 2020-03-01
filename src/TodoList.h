//
// Created by neduzze on 2/27/20.
//
#pragma once

#include <iostream>
#include <string>
#include <fstream>
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
    //methods to save to and load from file
    static bool isEmptyFile(std::ifstream &pFile);
    void loadList(const string &myListName);
    void saveList(const string& myListName);
    //TODO: method to check input and catch errors
public://variables
public://methods
    explicit TodoList(const char *myListName);
    void startList(const string &myListName);
    ~TodoList();
};
