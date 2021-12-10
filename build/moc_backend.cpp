/****************************************************************************
** Meta object code from reading C++ file 'backend.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../backend.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'backend.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_BackEnd_t {
    QByteArrayData data[23];
    char stringdata0[277];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_BackEnd_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_BackEnd_t qt_meta_stringdata_BackEnd = {
    {
QT_MOC_LITERAL(0, 0, 7), // "BackEnd"
QT_MOC_LITERAL(1, 8, 18), // "newLocationChanged"
QT_MOC_LITERAL(2, 27, 0), // ""
QT_MOC_LITERAL(3, 28, 11), // "newLocation"
QT_MOC_LITERAL(4, 40, 6), // "mirInv"
QT_MOC_LITERAL(5, 47, 1), // "i"
QT_MOC_LITERAL(6, 49, 7), // "loc1Inv"
QT_MOC_LITERAL(7, 57, 7), // "loc2Inv"
QT_MOC_LITERAL(8, 65, 12), // "appendMirInv"
QT_MOC_LITERAL(9, 78, 6), // "tester"
QT_MOC_LITERAL(10, 85, 12), // "changeMirInv"
QT_MOC_LITERAL(11, 98, 7), // "changer"
QT_MOC_LITERAL(12, 106, 13), // "changeLoc1Inv"
QT_MOC_LITERAL(13, 120, 13), // "changeLoc2Inv"
QT_MOC_LITERAL(14, 134, 9), // "logChange"
QT_MOC_LITERAL(15, 144, 8), // "CSVstuff"
QT_MOC_LITERAL(16, 153, 16), // "readMirInventory"
QT_MOC_LITERAL(17, 170, 17), // "writeMirInventory"
QT_MOC_LITERAL(18, 188, 17), // "readLoc1Inventory"
QT_MOC_LITERAL(19, 206, 18), // "writeLoc1Inventory"
QT_MOC_LITERAL(20, 225, 17), // "readLoc2Inventory"
QT_MOC_LITERAL(21, 243, 18), // "writeLoc2Inventory"
QT_MOC_LITERAL(22, 262, 14) // "setNewLocation"

    },
    "BackEnd\0newLocationChanged\0\0newLocation\0"
    "mirInv\0i\0loc1Inv\0loc2Inv\0appendMirInv\0"
    "tester\0changeMirInv\0changer\0changeLoc1Inv\0"
    "changeLoc2Inv\0logChange\0CSVstuff\0"
    "readMirInventory\0writeMirInventory\0"
    "readLoc1Inventory\0writeLoc1Inventory\0"
    "readLoc2Inventory\0writeLoc2Inventory\0"
    "setNewLocation"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_BackEnd[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      17,   14, // methods
       1,  144, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   99,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       4,    1,  102,    2, 0x0a /* Public */,
       6,    1,  105,    2, 0x0a /* Public */,
       7,    1,  108,    2, 0x0a /* Public */,
       8,    1,  111,    2, 0x0a /* Public */,
      10,    2,  114,    2, 0x0a /* Public */,
      12,    2,  119,    2, 0x0a /* Public */,
      13,    2,  124,    2, 0x0a /* Public */,
      14,    1,  129,    2, 0x0a /* Public */,
      15,    1,  132,    2, 0x0a /* Public */,
      16,    0,  135,    2, 0x0a /* Public */,
      17,    0,  136,    2, 0x0a /* Public */,
      18,    0,  137,    2, 0x0a /* Public */,
      19,    0,  138,    2, 0x0a /* Public */,
      20,    0,  139,    2, 0x0a /* Public */,
      21,    0,  140,    2, 0x0a /* Public */,

 // methods: name, argc, parameters, tag, flags
      22,    1,  141,    2, 0x02 /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString,    3,

 // slots: parameters
    QMetaType::QString, QMetaType::Int,    5,
    QMetaType::QString, QMetaType::Int,    5,
    QMetaType::QString, QMetaType::Int,    5,
    QMetaType::Void, QMetaType::QString,    9,
    QMetaType::Void, QMetaType::QString, QMetaType::Int,    9,   11,
    QMetaType::Void, QMetaType::QString, QMetaType::Int,    9,   11,
    QMetaType::Void, QMetaType::QString, QMetaType::Int,    9,   11,
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // methods: parameters
    QMetaType::Void, QMetaType::QString,    3,

 // properties: name, type, flags
       3, QMetaType::QString, 0x00495103,

 // properties: notify_signal_id
       0,

       0        // eod
};

void BackEnd::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<BackEnd *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->newLocationChanged((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: { QString _r = _t->mirInv((*reinterpret_cast< int(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 2: { QString _r = _t->loc1Inv((*reinterpret_cast< int(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 3: { QString _r = _t->loc2Inv((*reinterpret_cast< int(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 4: _t->appendMirInv((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 5: _t->changeMirInv((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 6: _t->changeLoc1Inv((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 7: _t->changeLoc2Inv((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 8: _t->logChange((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 9: _t->CSVstuff((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 10: _t->readMirInventory(); break;
        case 11: _t->writeMirInventory(); break;
        case 12: _t->readLoc1Inventory(); break;
        case 13: _t->writeLoc1Inventory(); break;
        case 14: _t->readLoc2Inventory(); break;
        case 15: _t->writeLoc2Inventory(); break;
        case 16: _t->setNewLocation((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (BackEnd::*)(const QString & );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::newLocationChanged)) {
                *result = 0;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<BackEnd *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->newLocation(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<BackEnd *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setNewLocation(*reinterpret_cast< QString*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

QT_INIT_METAOBJECT const QMetaObject BackEnd::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_BackEnd.data,
    qt_meta_data_BackEnd,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *BackEnd::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *BackEnd::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_BackEnd.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int BackEnd::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 17)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 17;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 17)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 17;
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 1;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void BackEnd::newLocationChanged(const QString & _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
