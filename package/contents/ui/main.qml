/*
 * Toqei is taken from the japanese word Tokei which means clock or watch.
 * The letter q in Toqei is taken from QML which is used in this plasmoid.
 */

import QtQuick 1.0

Item {
	id: clock
	width: 412
	height: 356
	
	property string currDay
	property string currDate
	property string currTime
	property int seconds
	property int looper
	property bool invert: false
	
	property variant arr1: [1,11,21,31,41,51]
	property variant arr2: [2,12,22,32,42,52]
	property variant arr3: [3,13,23,33,43,53]
	property variant arr4: [4,14,24,34,44,54]
	property variant arr5: [5,15,25,35,45,55]
	property variant arr6: [6,16,26,36,46,56]
	property variant arr7: [7,17,27,37,47,57]
	property variant arr8: [8,18,28,38,48,58]
	property variant arr9: [9,19,29,39,49,59]
	property variant arr10: [10,20,30,40,50]
	
	function refresh () {
		currTime = Qt.formatTime(new Date(), "h:mm AP")
		seconds = Qt.formatTime(new Date(), "ss")
		currDay = Qt.formatDate(new Date(), "ddd")
		currDate = Qt.formatDate(new Date(), "dd/MMM/yyyy")
		
		if (currDay == "Sat" || currDay == "Sun") {
			day.color = "maroon";
		}
	
		//Array looper start
		if (seconds >= 1 && seconds <= 10) {
			looper = 0;
			
			//Flip-flop
			if (seconds == 1 && invert == false) {
				invert = true;
			}
			
			else if (seconds == 1 && invert == true) {
				invert = false;
			}
		}
		
		else if (seconds >= 11 && seconds <= 20) {
			looper = 1;
			
			//Flip-flop
			if (seconds == 11 && invert == false) {
				invert = true;
			}
			
			else if (seconds == 11 && invert == true) {
				invert = false;
			}
		}
		
		else if (seconds >= 21 && seconds <= 30) {
			looper = 2;
			
			//Flip-flop
			if (seconds == 21 && invert == false) {
				invert = true;
			}
			
			else if (seconds == 21 && invert == true) {
				invert = false;
			}
		}
		
		else if (seconds >= 31 && seconds <= 40) {
			looper = 3;
			
			//Flip-flop
			if (seconds == 31 && invert == false) {
				invert = true;
			}
			
			else if (seconds == 31 && invert == true) {
				invert = false;
			}
		}
		
		else if (seconds >= 41 && seconds <= 50) {
			looper = 4;
			
			//Flip-flop
			if (seconds == 41 && invert == false) {
				invert = true;
			}
			
			else if (seconds == 41 && invert == true) {
				invert = false;
			}
		}
		
		else if ((seconds >= 51 && seconds <= 59) || seconds == 0) {
			looper = 5;
			
			//Flip-flop
			if (seconds == 51 && invert == false) {
				invert = true;
			}
			
			else if (seconds == 51 && invert == true) {
				invert = false;
			}
		}
		//Array looper end
		
		//Seconds animation start
		if (seconds == arr1[looper]) {
			if (invert == false) {
				one.opacity = 0.8;
				two.opacity = 0;
				three.opacity = 0;
				four.opacity = 0;
				five.opacity = 0;
				six.opacity = 0;
				seven.opacity = 0;
				eight.opacity = 0;
				nine.opacity = 0;
				ten.opacity = 0;
			}
			
			else {
				one.opacity = 0;
				two.opacity = 0.8;
				three.opacity = 0.8;
				four.opacity = 0.8;
				five.opacity = 0.8;
				six.opacity = 0.8;
				seven.opacity = 0.8;
				eight.opacity = 0.8;
				nine.opacity = 0.8;
				ten.opacity = 0.8;
			}
		}
	
		else if (seconds == arr2[looper]) {
			if (invert == false) {
				one.opacity = 0.8;
				two.opacity = 0.8;
				three.opacity = 0;
				four.opacity = 0;
				five.opacity = 0;
				six.opacity = 0;
				seven.opacity = 0;
				eight.opacity = 0;
				nine.opacity = 0;
				ten.opacity = 0;
			}
			
			else {
				one.opacity = 0;
				two.opacity = 0;
				three.opacity = 0.8;
				four.opacity = 0.8;
				five.opacity = 0.8;
				six.opacity = 0.8;
				seven.opacity = 0.8;
				eight.opacity = 0.8;
				nine.opacity = 0.8;
				ten.opacity = 0.8;
			}
		}
	
		else if (seconds == arr3[looper]) {
			if (invert == false) {
				one.opacity = 0.8;
				two.opacity = 0.8;
				three.opacity = 0.8;
				four.opacity = 0;
				five.opacity = 0;
				six.opacity = 0;
				seven.opacity = 0;
				eight.opacity = 0;
				nine.opacity = 0;
				ten.opacity = 0;
			}
			
			else {
				one.opacity = 0;
				two.opacity = 0;
				three.opacity = 0;
				four.opacity = 0.8;
				five.opacity = 0.8;
				six.opacity = 0.8;
				seven.opacity = 0.8;
				eight.opacity = 0.8;
				nine.opacity = 0.8;
				ten.opacity = 0.8;
			}
		}
	
		else if (seconds == arr4[looper]) {
			if (invert == false) {
				one.opacity = 0.8;
				two.opacity = 0.8;
				three.opacity = 0.8;
				four.opacity = 0.8;
				five.opacity = 0;
				six.opacity = 0;
				seven.opacity = 0;
				eight.opacity = 0;
				nine.opacity = 0;
				ten.opacity = 0;
			}
			
			else {
				one.opacity = 0;
				two.opacity = 0;
				three.opacity = 0;
				four.opacity = 0;
				five.opacity = 0.8;
				six.opacity = 0.8;
				seven.opacity = 0.8;
				eight.opacity = 0.8;
				nine.opacity = 0.8;
				ten.opacity = 0.8;
			}
		}
	
		else if (seconds == arr5[looper]) {
			if (invert == false) {
				one.opacity = 0.8;
				two.opacity = 0.8;
				three.opacity = 0.8;
				four.opacity = 0.8;
				five.opacity = 0.8;
				six.opacity = 0;
				seven.opacity = 0;
				eight.opacity = 0;
				nine.opacity = 0;
				ten.opacity = 0;
			}
			
			else {
				one.opacity = 0;
				two.opacity = 0;
				three.opacity = 0;
				four.opacity = 0;
				five.opacity = 0;
				six.opacity = 0.8;
				seven.opacity = 0.8;
				eight.opacity = 0.8;
				nine.opacity = 0.8;
				ten.opacity = 0.8;
			}
		}
	
		else if (seconds == arr6[looper]) {
			if (invert == false) {
				one.opacity = 0.8;
				two.opacity = 0.8;
				three.opacity = 0.8;
				four.opacity = 0.8;
				five.opacity = 0.8;
				six.opacity = 0.8;
				seven.opacity = 0;
				eight.opacity = 0;
				nine.opacity = 0;
				ten.opacity = 0;
			}
			
			else {
				one.opacity = 0;
				two.opacity = 0;
				three.opacity = 0;
				four.opacity = 0;
				five.opacity = 0;
				six.opacity = 0;
				seven.opacity = 0.8;
				eight.opacity = 0.8;
				nine.opacity = 0.8;
				ten.opacity = 0.8;
			}
		}
	
		else if (seconds == arr7[looper]) {
			if (invert == false) {
				one.opacity = 0.8;
				two.opacity = 0.8;
				three.opacity = 0.8;
				four.opacity = 0.8;
				five.opacity = 0.8;
				six.opacity = 0.8;
				seven.opacity = 0.8;
				eight.opacity = 0;
				nine.opacity = 0;
				ten.opacity = 0;
			}
			
			else {
				one.opacity = 0;
				two.opacity = 0;
				three.opacity = 0;
				four.opacity = 0;
				five.opacity = 0;
				six.opacity = 0;
				seven.opacity = 0;
				eight.opacity = 0.8;
				nine.opacity = 0.8;
				ten.opacity = 0.8;
			}
		}
	
		else if (seconds == arr8[looper]) {
			if (invert == false) {
				one.opacity = 0.8;
				two.opacity = 0.8;
				three.opacity = 0.8;
				four.opacity = 0.8;
				five.opacity = 0.8;
				six.opacity = 0.8;
				seven.opacity = 0.8;
				eight.opacity = 0.8;
				nine.opacity = 0;
				ten.opacity = 0;
			}
			
			else {
				one.opacity = 0;
				two.opacity = 0;
				three.opacity = 0;
				four.opacity = 0;
				five.opacity = 0;
				six.opacity = 0;
				seven.opacity = 0;
				eight.opacity = 0;
				nine.opacity = 0.8;
				ten.opacity = 0.8;
			}
		}
		
		else if (seconds == arr9[looper]) {
			if (invert == false) {
				one.opacity = 0.8;
				two.opacity = 0.8;
				three.opacity = 0.8;
				four.opacity = 0.8;
				five.opacity = 0.8;
				six.opacity = 0.8;
				seven.opacity = 0.8;
				eight.opacity = 0.8;
				nine.opacity = 0.8;
				ten.opacity = 0;
			}
			
			else {
				one.opacity = 0;
				two.opacity = 0;
				three.opacity = 0;
				four.opacity = 0;
				five.opacity = 0;
				six.opacity = 0;
				seven.opacity = 0;
				eight.opacity = 0;
				nine.opacity = 0;
				ten.opacity = 0.8;
			}
		}
	
		else if (seconds == arr10[looper] || seconds == 0) {
			if (invert == false) {
				one.opacity = 0.8;
				two.opacity = 0.8;
				three.opacity = 0.8;
				four.opacity = 0.8;
				five.opacity = 0.8;
				six.opacity = 0.8;
				seven.opacity = 0.8;
				eight.opacity = 0.8;
				nine.opacity = 0.8;
				ten.opacity = 0.8;
			}
			
			else {
				one.opacity = 0;
				two.opacity = 0;
				three.opacity = 0;
				four.opacity = 0;
				five.opacity = 0;
				six.opacity = 0;
				seven.opacity = 0;
				eight.opacity = 0;
				nine.opacity = 0;
				ten.opacity = 0;
			}
		}
		//Seconds animation end
	}
	
	//Seconds animation container start
	Item {
		id: container
		width: 300
		height: 300
		anchors.horizontalCenter: clock.horizontalCenter
		anchors.top: clock.top
		
		Image {
			id: contentHolder
			source: "res/chibi_ika_musume.png"
			smooth: true
			asynchronous: true
			anchors.horizontalCenter: container.horizontalCenter
			anchors.verticalCenter: container.verticalCenter
		}
		
		Rectangle {
			id: one
			opacity: 0
			width: 46
			height: 46
			color: "light blue"
			radius: 10
			smooth: true
			anchors.left: contentHolder.right
			anchors.bottom: contentHolder.bottom
			anchors.leftMargin: 5
			Behavior on opacity { PropertyAnimation { duration: 400 } }
		}
		
		Rectangle {
			id: two
			opacity: 0
			width: 46
			height: 46
			color: "slate blue"
			radius: 10
			smooth: true
			anchors.top: one.bottom
			anchors.horizontalCenter: one.horizontalCenter
			anchors.margins: 5
			Behavior on opacity { PropertyAnimation { duration: 400 } }
		}
		
		Rectangle {
			id: three
			opacity: 0
			width: 46
			height: 46
			color: "light blue"
			radius: 10
			smooth: true
			anchors.right: two.left
			anchors.verticalCenter: two.verticalCenter
			anchors.margins: 5
			Behavior on opacity { PropertyAnimation { duration: 400 } }
		}
		
		Rectangle {
			id: four
			opacity: 0
			width: 46
			height: 46
			color: "slate blue"
			radius: 10
			smooth: true
			anchors.right: three.left
			anchors.verticalCenter: three.verticalCenter
			anchors.margins: 5
			Behavior on opacity { PropertyAnimation { duration: 400 } }
		}
		
		Rectangle {
			id: five
			opacity: 0
			width: 46
			height: 46
			color: "light blue"
			radius: 10
			smooth: true
			anchors.right: four.left
			anchors.verticalCenter: four.verticalCenter
			anchors.margins: 5
			Behavior on opacity { PropertyAnimation { duration: 400 } }
		}
		
		Rectangle {
			id: six
			opacity: 0
			width: 46
			height: 46
			color: "slate blue"
			radius: 10
			smooth: true
			anchors.right: five.left
			anchors.verticalCenter: five.verticalCenter
			anchors.margins: 5
			Behavior on opacity { PropertyAnimation { duration: 400 } }
		}
		
		Rectangle {
			id: seven
			opacity: 0
			width: 46
			height: 46
			color: "light blue"
			radius: 10
			smooth: true
			anchors.right: six.left
			anchors.verticalCenter: six.verticalCenter
			anchors.margins: 5
			Behavior on opacity { PropertyAnimation { duration: 400 } }
		}
		
		Rectangle {
			id: eight
			opacity: 0
			width: 46
			height: 46
			color: "slate blue"
			radius: 10
			smooth: true
			anchors.right: seven.left
			anchors.verticalCenter: seven.verticalCenter
			anchors.margins: 5
			Behavior on opacity { PropertyAnimation { duration: 400 } }
		}
		
		Rectangle {
			id: nine
			opacity: 0
			width: 46
			height: 46
			color: "light blue"
			radius: 10
			smooth: true
			anchors.right: eight.left
			anchors.verticalCenter: eight.verticalCenter
			anchors.margins: 5
			Behavior on opacity { PropertyAnimation { duration: 400 } }
		}
		
		Rectangle {
			id: ten
			opacity: 0
			width: 46
			height: 46
			color: "slate blue"
			radius: 10
			smooth: true
			anchors.bottom: nine.top
			anchors.horizontalCenter: nine.horizontalCenter
			anchors.margins: 5
			Behavior on opacity { PropertyAnimation { duration: 400 } }
		}
	}
	//Seconds animation container end
	
	Item {
		id: content
		width: 250
		height: 130
		anchors.bottomMargin: 56
		anchors.bottom: clock.bottom
		anchors.horizontalCenter: clock.horizontalCenter
		
		FontLoader {
			id: webFont
			source: "res/KOMIKAX_.ttf"
		}
		
		Item {
			id: cLeft
			width: 200
			
			Text {
				id: dateTime
				text: clock.currTime +"\n"+ clock.currDate
				color: "slate blue"
				//style: Text.Raised; styleColor: "#AAAAAA"
				font.family: webFont.name
				font.pointSize: 20
				anchors.fill: parent
				horizontalAlignment: Text.AlignHCenter
			}
		}
		
		Item {
			id: cRight
			width: 50
			anchors.left: cLeft.right
			anchors.verticalCenter: cLeft.verticalCenter
			
			Text {
				id: day
				text: clock.currDay
				color: "slate blue"
				//style: Text.Raised; styleColor: "#AAAAAA"
				font.family: webFont.name
				font.pointSize: 25
		
				transform: Rotation {
					origin.x: 44
					origin.y: 44
					axis{ z:1 }  angle: -90
				}
			}
		}
	}
	
	Timer {
		interval: 1000; running: true; repeat: true;
		onTriggered: refresh()
	}

}