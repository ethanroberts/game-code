final String sbPublishChannel1 = "player1";
final String sbPublishChannel2 = "player2";
final String sbPublishChannel3 = "player3";
final String sbPublishChannel4 = "player4";
final String sbPublishChannel5 = "player5";
final String sbPublishChannel6 = "player6";
final String sbPublishChannel7 = "player7";
final String sbPublishChannel8 = "player8";
final String sbPublishChannel9 = "player9";


// Put all of your code to listen to the SB messages and pass them on to the Players

void onStringMessage( String name, String value ) {
  println("got string message " + name + " : " + value);
  char command = value.charAt(0);
  //Parse the message
  println("name: " + name + " == " + sbPublishChannel1);


  if (name.equals(sbPublishChannel1) ) {
    println("\tI recognize that channel name");
    if (command == player1.controlUP) {
      println("\t\tshould be moving up");
      player1.moveUp();
    } 
    else if (command == player1.controlDOWN) {
      player1.moveDown();
    }
    else if (command == player1.controlLEFT) {
      player1.moveLeft();
    }
    else if (command == player1.controlRIGHT) {
      player1.moveRight();
    }
    else if (command == player1.controlJUMP) {
      if (player1.alive) {
        player1.jump();
      }
    }
    else {
      println("player 1 does not understand the command: " + command );
    }
  }

  if (name.equals(sbPublishChannel2) ) {
    println("\tI recognize that channel name");
    if (command == player2.controlUP) {
      println("\t\tshould be moving up");
      player2.moveUp();
    } 
    else if (command == player2.controlDOWN) {
      player2.moveDown();
    }
    else if (command == player2.controlLEFT) {
      player2.moveLeft();
    }
    else if (command == player2.controlRIGHT) {
      player2.moveRight();
    }
    else if (command == player2.controlJUMP) {
      if (player2.alive) {
        player2.jump();
      }
    }
    else {
      println("player 2 does not understand the command: " + command );
    }
  }

  if (name.equals(sbPublishChannel3) ) {
    println("\tI recognize that channel name");
    if (command == player3.controlUP) {
      println("\t\tshould be moving up");
      player3.moveUp();
    } 
    else if (command == player3.controlDOWN) {
      player3.moveDown();
    }
    else if (command == player3.controlLEFT) {
      player3.moveLeft();
    }
    else if (command == player3.controlRIGHT) {
      player3.moveRight();
    }
    else if (command == player3.controlJUMP) {
      if (player3.alive) {
        player3.jump();
      }
    }
    else {
      println("player 3 does not understand the command: " + command );
    }
  }

  if (name.equals(sbPublishChannel4) ) {
    println("\tI recognize that channel name");
    if (command == player4.controlUP) {
      println("\t\tshould be moving up");
      player4.moveUp();
    } 
    else if (command == player4.controlDOWN) {
      player4.moveDown();
    }
    else if (command == player4.controlLEFT) {
      player4.moveLeft();
    }
    else if (command == player4.controlRIGHT) {
      player4.moveRight();
    }
    else if (command == player4.controlJUMP) {
      if (player4.alive) {
        player4.jump();
      }
    }
    else {
      println("player 4 does not understand the command: " + command );
    }
  }

  if (name.equals(sbPublishChannel5) ) {
    println("\tI recognize that channel name");
    if (command == player5.controlUP) {
      println("\t\tshould be moving up");
      player5.moveUp();
    } 
    else if (command == player5.controlDOWN) {
      player5.moveDown();
    }
    else if (command == player5.controlLEFT) {
      player5.moveLeft();
    }
    else if (command == player5.controlRIGHT) {
      player5.moveRight();
    }
    else if (command == player5.controlJUMP) {
      if (player5.alive) {
        player5.jump();
      }
    }
    else {
      println("player 5 does not understand the command: " + command );
    }
  }

  if (name.equals(sbPublishChannel6) ) {
    println("\tI recognize that channel name");
    if (command == player6.controlUP) {
      println("\t\tshould be moving up");
      player6.moveUp();
    } 
    else if (command == player6.controlDOWN) {
      player6.moveDown();
    }
    else if (command == player6.controlLEFT) {
      player6.moveLeft();
    }
    else if (command == player6.controlRIGHT) {
      player6.moveRight();
    }
    else if (command == player6.controlJUMP) {
      if (player6.alive) {
        player6.jump();
      }
    }
    else {
      println("player 6 does not understand the command: " + command );
    }
  }

  if (name.equals(sbPublishChannel7) ) {
    println("\tI recognize that channel name");
    if (command == player7.controlUP) {
      println("\t\tshould be moving up");
      player7.moveUp();
    } 
    else if (command == player7.controlDOWN) {
      player7.moveDown();
    }
    else if (command == player7.controlLEFT) {
      player7.moveLeft();
    }
    else if (command == player7.controlRIGHT) {
      player7.moveRight();
    }
    else if (command == player7.controlJUMP) {
      if (player7.alive) {
        player7.jump();
      }
    }
    else {
      println("player 7 does not understand the command: " + command );
    }
  }

  if (name.equals(sbPublishChannel8) ) {
    println("\tI recognize that channel name");
    if (command == player8.controlUP) {
      println("\t\tshould be moving up");
      player8.moveUp();
    } 
    else if (command == player8.controlDOWN) {
      player8.moveDown();
    }
    else if (command == player8.controlLEFT) {
      player8.moveLeft();
    }
    else if (command == player8.controlRIGHT) {
      player8.moveRight();
    }
    else if (command == player8.controlJUMP) {
      if (player8.alive) {
        player8.jump();
      }
    }
    else {
      println("player 8 does not understand the command: " + command );
    }
  }

  if (name.equals(sbPublishChannel9) ) {
    println("\tI recognize that channel name");
    if (command == player9.controlUP) {
      println("\t\tshould be moving up");
      player9.moveUp();
    } 
    else if (command == player9.controlDOWN) {
      player9.moveDown();
    }
    else if (command == player9.controlLEFT) {
      player9.moveLeft();
    }
    else if (command == player9.controlRIGHT) {
      player9.moveRight();
    }
    else if (command == player9.controlJUMP) {
      if (player9.alive) {
        player9.jump();
      }
    }
    else {
      println("player 9 does not understand the command: " + command );
    }
  }
}


//SPACE BREW HANDLE MESSAGE FUNCTIONS

//void onRangeMessage( String name, int value ) {
//  println("got range message " + name + " : " + value);
//}

//void onBooleanMessage( String name, boolean value ) {
//  println("got boolean message " + name + " : " + value);
//}


//void onCustomMessage( String name, String type, String value ) {
//  println("got " + type + " message " + name + " : " + value);
//}

