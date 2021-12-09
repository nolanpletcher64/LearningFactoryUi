#include "backend.h"
#include <QDebug>
#include <QList>
#include <QStringList>
#include <QDir>
#include <QDebug>

BackEnd::BackEnd(QObject *parent) : QObject(parent){}
QString BackEnd::newLocation()
{
    return m_newLocation;
}
QString BackEnd::mirInv(int i)
{
    //int i = size(mirInventory) - 1;
    std::string temp = mirInventory[i];
    QString str = QString::fromUtf8(temp.c_str());
    return str;
}
QString BackEnd::loc1Inv(int i)
{
    std::string temp = loc1Inventory[i];
    QString str = QString::fromUtf8(temp.c_str());
    return str;
}
QString BackEnd::loc2Inv(int i)
{
    std::string temp = loc2Inventory[i];
    QString str = QString::fromUtf8(temp.c_str());
    return str;
}
void BackEnd::appendMirInv(QString tester)
{
    std::string input = tester.toUtf8().constData();
    mirInventory.push_back(input);
}
void BackEnd::changeMirInv(QString tester, int changer)
{
    std::string input = tester.toUtf8().constData();
    mirInventory[changer] = input;
}
void BackEnd::changeLoc1Inv(QString tester, int changer)
{
    std::string input = tester.toUtf8().constData();
    loc1Inventory[changer] = input;
}
void BackEnd::changeLoc2Inv(QString tester, int changer)
{
    std::string input = tester.toUtf8().constData();
    loc2Inventory[changer] = input;
}
void BackEnd::setNewLocation(const QString &newLocation)
{
    FILE* fpt;
    if (newLocation == m_newLocation)
        return;
    m_newLocation = newLocation;
    //std::string text = newLocation.toUtf8().constData();
    //mirInventory[0] = text;
    fpt = fopen("data.csv", "a+");
    fprintf(fpt,"%s\n",newLocation.toUtf8().constData());
    fclose(fpt);
    emit newLocationChanged(m_newLocation);
}
void BackEnd::logChange(const QString &newLocation){
    qDebug()<<"New Location:"<<newLocation;
}

void BackEnd::CSVstuff(const QString &newLocation)
{
    FILE* fpt;
    fpt = fopen("data.csv", "r");
    fclose(fpt);

    fpt = fopen("mirInventory.csv", "r");
    fclose(fpt);

    fpt = fopen("loc1Inventory.csv", "r");
    fclose(fpt);

    fpt = fopen("loc2Inventory.csv", "r");
    fclose(fpt);
}


// Function for reading MiR100 inventory
void BackEnd::readMirInventory()
{
    std::ifstream myFile("mirInventory.csv");

    if(!myFile.is_open())
    {
        throw std::runtime_error("Could not open MiR100 inventory file");
    }

    std::string line;
    std::string str;

    if(myFile.good())
    {
        // Read each line from csv
        while(std::getline(myFile, line))
        {
            std::stringstream ss(line);

            // Add package name to mirInventory vector
            while (ss >> str)
            {
                mirInventory.push_back(str);
            }
        }
    }

    myFile.close();
}

// Function for writing MiR100 inventory
void BackEnd::writeMirInventory()
{
    std::ofstream myFile("mirInventory.csv", std::ofstream::trunc);

    for (int i = 0; i < mirInventory.size(); i++)
    {
        myFile << mirInventory[i];
        myFile << "\n";
    }

    myFile.close();
}

// Function for reading location 1 inventory
void BackEnd::readLoc1Inventory()
{
    std::ifstream myFile("loc1Inventory.csv");

    if(!myFile.is_open())
    {
        throw std::runtime_error("Could not open location 1 inventory file");
    }

    std::string line;
    std::string str;

    if(myFile.good())
    {
        // Read each line from csv
        while(std::getline(myFile, line))
        {
            std::stringstream ss(line);

            // Add package name to loc1Inventory vector
            while (ss >> str)
            {
                loc1Inventory.push_back(str);
            }
        }
    }

    myFile.close();
}

// Function for writing location 1 inventory
void BackEnd::writeLoc1Inventory()
{
    std::ofstream myFile("loc1Inventory.csv", std::ofstream::trunc);

    myFile.clear();

    // Write each line to csv
    for (int i = 0; i < loc1Inventory.size(); i++)
    {
        myFile << loc1Inventory[i];
        myFile << "\n";
    }

    myFile.close();
}

// Function for reading location 1 inventory
void BackEnd::readLoc2Inventory()
{
    std::ifstream myFile("loc2Inventory.csv");

    if(!myFile.is_open())
    {
        throw std::runtime_error("Could not open location 2 inventory file");
    }

    std::string line;
    std::string str;

    if(myFile.good())
    {
        // Read each line from csv
        while(std::getline(myFile, line))
        {
            std::stringstream ss(line);

            // Add package name to loc2Inventory vector
            while (ss >> str)
            {
                loc2Inventory.push_back(str);
            }
        }
    }

    myFile.close();
}

// Function for writing location 2 inventory
void BackEnd::writeLoc2Inventory()
{
    std::ofstream myFile("loc2Inventory.csv", std::ofstream::trunc);

    // Write each line to csv
    for (int i = 0; i < loc2Inventory.size(); i++)
    {
        myFile << loc2Inventory[i];
        myFile << "\n";
    }

    myFile.close();
}
