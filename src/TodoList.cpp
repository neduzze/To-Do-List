//
// Created by neduzze on 2/27/20.
//

#include "TodoList.h"
#include <fstream>
#include <utility>

using namespace std;

TodoList::TodoList(string x)
        : myListName(move(x)) {
    loadList();
    startList();
}

void TodoList::startList() {
    while (!quitFlag) {
        listMenu();
        listAction();
        saveList();
    }
}

void TodoList::listMenu() {
    displayList();
    cout << "\n||\t1 - Add item\t|";
    cout << "|\t2 - Remove item\t|";
    cout << "|\t3 - Edit item\t|";
    cout << "|\t0 - End program\t||\n";
    cout << "*****************************************";
    cout << "*****************************************\n";
}

void TodoList::displayList() {
    cout << "******TO DO LIST [" << myListName << "] ******\n";
    if (myList->empty())
        messages(00);
    else {
        for (auto i = 0; i < MAX_SIZE; i++) {
            if (!(myList[i].empty()))
                cout << i + 1 << ".\t" << myList[i] << "\n";
        }
    }
}

void TodoList::addItem() {
    cout << "Enter item: ";
    string newItem;
    getline(cin, newItem);
    for (auto &i : myList) {
        if ((i.empty())) {
            i = newItem;
            break;
        }
    }
    messages(02);
}

void TodoList::removeItem() {
    int x = 0;
    cout << "choose item to remove: ";
    cin >> x;
    cin.ignore();
    myList[x - 1].erase();
    messages(03);
    for (auto i = x - 1; i < MAX_SIZE; i++) {
        myList[i] = myList[i + 1];
    }
}

void TodoList::editItem() {
    int x = 0;
    string newItem;
    cout << "choose item to edit/replace\n";
    cin >> x;
    cin.ignore();
    cout << "Enter new item: \n";
    getline(cin, newItem);
    myList[x - 1] = newItem;
    messages(04);
}

void TodoList::listAction() {
    int x;
    cout << "please choose one of the above actions action: ";
    cin >> x;
    cin.ignore();
    switch (x) {
        case 1:
            addItem();
            break;
        case 2:
            removeItem();
            break;
        case 3:
            editItem();
            break;
        case 0:
            quitList();
            break;
        default:
            messages(20);
    }
}

void TodoList::quitList() {
    quitFlag = true;
}

void TodoList::messages(const int &x) {
    cout << "\n";
    switch (x) {
        case 00://0 prefix for info. 1 prefix for warning. 2 prefix for error
            cout << "[INFO] List is empty!\n";
            break;
        case 01:
            cout << "[INFO] Program terminated!\n";
            break;
        case 02:
            cout << "[INFO] Item added to list!\n";
            break;
        case 03:
            cout << "[INFO] Item removed from list!\n";
            break;
        case 04:
            cout << "[INFO] Item edited!\n";
            break;
        case 05:
            cout << "[INFO] List loaded!\n";
            break;
        case 06:
            cout << "[INFO] List saved!\n";
            break;
        case 10:
            cout << "[WARNING] \n";
            break;
        case 20:
            cout << "[ERROR] Wrong input\n";
            break;
        case 21:
            cout << "[ERROR] Unable to open list\n";
            break;
        default:
            cout << "debug code\n";

    }
}

bool TodoList::isEmptyFile(ifstream &pFile) {
    return pFile.peek() == ifstream::traits_type::eof();
}

void TodoList::loadList() {
    string filePath = "../files/" + myListName + ".txt";
    string line;
    int lineCount = 0;
    ifstream inFile(filePath);
    if (inFile.is_open()) {
        if (isEmptyFile(inFile)) {
            messages(00);
        } else
            messages(05);

        while (getline(inFile, line)) {
            myList[lineCount] = line;
            lineCount++;
        }
        inFile.close();

    } else {
        messages(21);
    }
}

void TodoList::saveList() {
    string filePath = "../files/" + myListName + ".txt";
    ofstream outFile(filePath);
    if (outFile.is_open() && !myList->empty()) {
        for (const auto &i: myList) {
            if (!i.empty())
                outFile << i << "\n";
        }
        outFile.close();
        messages(06);
    } else {
        outFile.close();
        remove(filePath.c_str());
        messages(21);
    }
}

TodoList::~TodoList() {
    messages(01);
}



