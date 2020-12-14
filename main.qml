import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12



ApplicationWindow
{
    id: demo
    title: "Material Авторизация"
    visible: true
    width: 600
    height: 600
    minimumHeight: 450

    property int defMargin: 15
    //Ставим тёмную тему и цвет Orange
    // Material.theme: Material.Dark
    Material.accent: Material.LightBlue

    Pane
    {
        anchors.centerIn: parent
        width: 500
        height: 450
        Material.elevation: 6


        Column {
            id: column
            anchors.centerIn: parent

            Label
            {
                text: "Добро пожаловать в Qt 5"
                font.pointSize: 16
                font.bold: true
                //anchors.bottomMargin: parent


            }
            Label
            {

                text: "Введите Email"

            }
            TextField
            {
                placeholderText: "Vargels@gmail.com"
                width: 400
                horizontalAlignment: Text.AlignLeft
            }

            Item
            {
                height: 20
            }
            Label
            {
                text: "Введите Пароль"
            }
            TextField
            {
                placeholderText: "secret"
                width: 400
                horizontalAlignment: Text.AlignLeft
                echoMode: TextField.Password
            }

            CheckBox { text: qsTr("Запомнить пароль?") }

            Row{
                Button
                {
                    Material.background: Material.LightBlue
                    text: qsTr("Авторизация")

                    highlighted: true
                }

                Button{
                    Material.background: Material.LightBlue
                    text: qsTr("Выход")
                     highlighted: true
                }
            }
        }

    }




}
