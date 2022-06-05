#include "Sockett.h"

Sockett::Sockett(QObject *parent) : QObject(parent)
{

}
 void Sockett::connect(const QString ip)
 {
    qDebug() <<"IP address:"<< ip;
    socket1 = new QTcpSocket(this);
    socket1->connectToHost(ip,5600);
    if(socket1->waitForConnected(3000))
        {
            qDebug() << "Connected!";
    
            // send
            socket1->write("hello server\r\n\r\n\r\n\r\n");
            socket1->waitForBytesWritten(1000);
            socket1->waitForReadyRead(3000);
            qDebug() << "Reading: " << socket1->bytesAvailable();
    
            qDebug() << socket1->readAll();
    
            socket1->close();
        }
        else
        {
            qDebug() << "Not connected!";
        }        

 }
QString Sockett::IPred(void)
 {
return("null");
 }
