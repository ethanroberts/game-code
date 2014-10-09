class GC {

  Boolean p1Cycle = false;//just for fun
  
  GC() {
  } 

  void display() {
    
    if (p1Cycle){
     player1.HU++; 
     if(player1.HU > 360){
       player1.HU = 0;
     }
    }
    
    //If there is only 1 player left, or 0 players left, the game is over
    if (alivePlayers<2) {
      endGameScreen = true;
    }
    //Draw the UI
    ui.display();
    //Draw the players and make them move
    if (numberOfPlayers == 1) {
     player1.update();
     player1.display();
     player1.drawColorPicker(10,5);
     cpu.update();
     cpu.display(); 
    }
    if (numberOfPlayers > 0) {
      player1.update();
      player1.display();
      player1.drawColorPicker(10, 5);
    } 
    if (numberOfPlayers > 1) {
      player2.update();
      player2.display();
      player2.drawColorPicker(100, 5);
    } 
    if (numberOfPlayers > 2) {
      player3.update();
      player3.display();
      player3.drawColorPicker(190, 5);
    } 
    if (numberOfPlayers > 3) {
      player4.update();
      player4.display();
      player4.drawColorPicker(280, 5);
    } 
    if (numberOfPlayers > 4) {
      player5.update();
      player5.display();
      player5.drawColorPicker(370, 5);
    } 
    if (numberOfPlayers > 5) {
      player6.update();
      player6.display();
      player6.drawColorPicker(460, 5);
    } 
    if (numberOfPlayers > 6) {
      player7.update();
      player7.display();
      player7.drawColorPicker(550, 5);
    } 
    if (numberOfPlayers > 7) {
      player8.update();
      player8.display();
      player8.drawColorPicker(640, 5);
    } 
    if (numberOfPlayers > 8) {
      player9.update();
      player9.display();
      player9.drawColorPicker(730, 5);
    }
  }

  void keyPressed() {
    if (numberOfPlayers > 0) {
      player1.keyPressed();
    } 
    if (numberOfPlayers > 1) {
      player2.keyPressed();
    } 
    if (numberOfPlayers > 2) {
      player3.keyPressed();
    } 
    if (numberOfPlayers > 3) {
      player4.keyPressed();
    } 
    if (numberOfPlayers > 4) {
      player5.keyPressed();
    } 
    if (numberOfPlayers > 5) {
      player6.keyPressed();
    } 
    if (numberOfPlayers > 6) {
      player7.keyPressed();
    } 
    if (numberOfPlayers > 7) {
      player8.keyPressed();
    } 
    if (numberOfPlayers > 8) {
      player9.keyPressed();
    }
    
    if(key == 'p'){
      p1Cycle = !p1Cycle;
    }
  }

  void mouseClicked() {
    if (numberOfPlayers > 0) {
      player1.mouseClicked();
    } 
    if (numberOfPlayers >1) {
      player2.mouseClicked();
    } 
    if (numberOfPlayers > 2) {
      player3.mouseClicked();
    } 
    if (numberOfPlayers > 3) {
      player4.mouseClicked();
    } 
    if (numberOfPlayers > 4) {
      player5.mouseClicked();
    } 
    if (numberOfPlayers > 5) {
      player6.mouseClicked();
    } 
    if (numberOfPlayers > 6) {
      player7.mouseClicked();
    } 
    if (numberOfPlayers > 7) {
      player8.mouseClicked();
    } 
    if (numberOfPlayers > 8) {
      player9.mouseClicked();
    }
  }
}

