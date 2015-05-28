import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    width: 100
    height: 62
    Rectangle{
        width: 500
        height: 500
        color: "dark grey"
        Rectangle {
            id: backgroundRect
            width: 200
            height: 150
            radius: 5
            anchors.centerIn: parent
            color: "red"
            Rectangle {
                id: dropShadowRect
                property real offset: Math.min(parent.width*0.025, parent.height*0.025)
                color: "gray"
                width: parent.width
                height: parent.height
                z: -1
                opacity: 0.75
                radius: backgroundRect.radius + 2
                anchors.left: parent.left
                anchors.leftMargin: -offset
                anchors.top: parent.top
                anchors.topMargin: offset
            }
        }
    }
}

