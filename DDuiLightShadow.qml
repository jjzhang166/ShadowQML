import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    width: 100
    height: 62

//    Rectangle{
//        id:main
//        anchors.fill: parent
//        radius: 10
//        color: "transparent"
//    }
//    RectangularGlow {
//        id: effect
//        anchors.fill: main
//        glowRadius: 10
//        spread: 0.1
//        color: "gray"
//        cornerRadius: 10
//    }
    Rectangle {
        width: 10
        height: width
        radius: 5
        color: "white"
        anchors.centerIn: parent
        property alias running: lop.running
        RectangularGlow {
            anchors.fill: parent
            glowRadius: 0
            spread: 0
            color: parent.color
            cornerRadius: parent.radius
            SequentialAnimation on glowRadius {
                id: lop
                loops: Animation.Infinite
                alwaysRunToEnd: true

                PropertyAnimation{
                    to: 10
                    duration: 1700
                }
                PropertyAnimation{
                    to: 0
                    duration: 1700
                }
            }
        }
    }
}

