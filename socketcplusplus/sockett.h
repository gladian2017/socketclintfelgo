#ifndef SOCKETT_H
#define SOCKETT_H
#include <QTcpSocket>
#include <QObject>
#include <QDebug>
#include <QString>

class Sockett : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString ipp READ IPred WRITE connect);
public:
    explicit Sockett(QObject *parent = nullptr);
    QTcpSocket *socket1;
    QString ipp;
    QString  IPred(void);
public slots:

    void connect(const QString);
signals:



};

#endif // SOCKETT_H
