import QtQuick
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property int clickCount: 0  // Create a property to track the number of clicks

    // Display the click count
    Text {
        id: counterText
        text: qsTr("Button clicked: ") + clickCount + " times"
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 24
        anchors.topMargin: 20
    }

    // Add the Button
    Button {
        text: qsTr("Click Me")
        anchors.centerIn: parent
        onClicked: {
            clickCount += 1  // Increment the click counter
        }
    }
}
