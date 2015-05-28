import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2


ApplicationWindow {
    id:window
    title: qsTr("Hello World")
    width: 380
    height: 680
    visible: true
    color: "transparent"
    modality: Qt.ApplicationModal
    flags: Qt.FramelessWindowHint|Qt.Window
    //检测鼠标是否在这个区域，若在可以进行移动
    MouseArea {
        anchors.top: parent.top
        anchors.left: parent.left
        height: 30
        width: parent.width
        property variant previousPosition
        onPressed: {
            previousPosition = Qt.point(mouseX, mouseY)
        }
        onPositionChanged : {
            if (pressedButtons == Qt.LeftButton) {
                var dx = mouseX - previousPosition.x
                var dy = mouseY - previousPosition.y
                window.x += dx;
                window.y += dy;
            }
        }
    }
    //设置边框阴影
    DDuiShadowBg{
         id:bg
         width: parent.width
         height: parent.height
         Rectangle{
             id:cc
             color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0)//随机颜色
             anchors.fill: parent
             anchors.margins: 8
             //发光闪烁效果
             DDuiLightShadow{
                 id:light
                 anchors.fill: parent
             }
         }
     }
}
