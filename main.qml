import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.0
import QtGraphicalEffects 1.0

Window {
    id: rootId
    visible: true
    width: 640
    height: 480
    title: qsTr("02 Blurr background")

    Image {
        id: imageId
        anchors.fill: parent
        source: "Images/HomePage.png"
    }

    Rectangle {
        height: 100
        width: 300
        color: "white"

        FastBlur {
            id: blurId
            height: 100
            width: 300

            radius: 30
            opacity: 0.8
           //source: imageId

            source: ShaderEffectSource {
                sourceItem: imageId
                sourceRect: Qt.rect(0,0, blurId.width, blurId.height)
            }
        }
    }
}
