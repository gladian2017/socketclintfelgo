import Felgo 3.0
import QtQuick 2.0
//import com.mycompany.messaging 1.0
import com.yourcompany.xyz 1.0

App {
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    NavigationStack {

        Navigation{
            id:navigation
            anchors.topMargin: 90
    NavigationItem{
        id:page1
        title:  "connect"

        Page {
            id:connectpage
            //title: qsTr("Main Page")


            Sockett{
            id:sock1
            }

            AppTextField {
                      id: ipadress
                      width: 0.75*(parent.width)
                      anchors.verticalCenter: parent.verticalCenter
                      anchors.horizontalCenter: parent.horizontalCenter
                      placeholderText: qsTr("Enter IP Address")
                      showClearButton: true
                      validator: RegExpValidator { regExp:  /^((?:[0-1]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5])\.){0,3}(?:[0-1]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5])$/}

                      }
            AppButton{
                id:connectbutten
                width: 0.5*(parent.width)
                text: "connect"
                anchors.top: ipadress.bottom
                anchors.topMargin: 0
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked:{
                    console.log(ipadress.text)
                    sock1.connect(ipadress.text)
                }

            }

//            Image {
//                source: "../assets/felgo-logo.png"
//                anchors.centerIn: parent
//            }
        }
    }
    NavigationItem{
        id:page2
        title:  qsTr("chart")
        Page {
            title: qsTr("Main Page")

            Image {
                source: "../assets/felgo-logo.png"
                anchors.centerIn: parent
            }
        }
    }
      }
    }
}

/*##^##
Designer {
    D{i:7;anchors_width:93}
}
##^##*/
