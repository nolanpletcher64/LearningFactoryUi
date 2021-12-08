#ifndef BACKEND_H
#define BACKEND_H
#include <QObject>
#include <QString>
#include <vector>
#include <fstream>
#include <sstream>
class BackEnd : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString newLocation READ newLocation WRITE setNewLocation NOTIFY newLocationChanged)
public:
    explicit BackEnd(QObject *parent = nullptr);
    QString newLocation();

    Q_INVOKABLE void setNewLocation(const QString &newLocation);
signals:
    void newLocationChanged(const QString &newLocation);

public slots:
    QString mirInv(int i);
    void appendMirInv(QString tester);
    void changeMirInv(QString tester, int changer);
    void logChange(const QString &newLocation);
    void CSVstuff(const QString &newLocation);
    void readMirInventory();
    void writeMirInventory();
    void readLoc1Inventory();
    void writeLoc1Inventory();
    void readLoc2Inventory();
    void writeLoc2Inventory();

private:
    QString m_newLocation;
    int newBox;

    std::vector<std::string> mirInventory;
    std::vector<std::string> loc1Inventory;
    std::vector<std::string> loc2Inventory;
};
#endif // BACKEND_H
