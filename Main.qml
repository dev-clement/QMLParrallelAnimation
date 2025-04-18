import QtQuick

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Animations")

    color: "#202020"

    Rectangle {
        id: myRect
        anchors.centerIn: parent
        width: 150
        height: 150
        color: "gold"

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            hoverEnabled: true

            onEntered: parallelAnimation.start()
            onExited: exitAnimation.start()

            ParallelAnimation {
                id: parallelAnimation
                NumberAnimation {
                    id: numberAnimation
                    target: myRect
                    property: "scale"
                    from: 1
                    to: 2
                    duration: 600
                }


                ColorAnimation {
                    id: colorAnimation
                    target: myRect
                    property: "color"
                    from: "gold"
                    to: "lightgreen"
                    duration: 600
                }
            }

            ParallelAnimation {
                id: exitAnimation

                NumberAnimation {
                    id: numberExitAnimation
                    target: myRect
                    property: "scale"
                    from: 2
                    to: 1
                    duration: 600
                }


                ColorAnimation {
                    id: exitColorAnim
                    target: myRect
                    property: "color"
                    from: "lightgreen"
                    to: "gold"
                    duration: 600
                }
            }
        }
    }
}
