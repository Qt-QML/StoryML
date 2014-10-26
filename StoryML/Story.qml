import QtQuick 2.0
import StoryML 1.0

Group
{
  id: root

  readonly property bool isStory: true

  property Component defaultLayout: Qt.createComponent("Layouts/TitleContent.qml")
  property Component defaultStyle: Qt.createComponent("Styles/Simple.qml")
  property Component presentationMode: Qt.createComponent("PresentationModes/Linear.qml")

  property PresentationMode presentationMode_instance: presentationModeLoader.item
  property bool animationsEnabled: true
  property bool videosEnabled: true

  focus: true

  Loader
  {
    id: presentationModeLoader
    sourceComponent: root.presentationMode
    property alias __story: root
  }

  property variant elements: []
}