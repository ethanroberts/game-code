class CPC {


  CPC() {
  }
  
  void display(){
    pushStyle();
    background(0, 0, bgBR);
    textSize(50);
    textAlign(CENTER);
    fill(0, 0, 100);
    text("Enter Number of Players", width/2, height/2-25);
    textSize(16);
    text("Press ENTER to confirm (max:9)", width/2, height/2);
    textSize(50);
    text(numberOfPlayers, width/2, height/2+50);
    fill(0, 0, 50);
    rect(10, height-60, 200, 50);
    fill(0, 0, 100);
    textSize(20);
    text("Back", 110, height-30);
    popStyle();
  }
  
  void keyPressed(){
    if (key=='1') {
     numberOfPlayers = 1; 
    }
     if (key=='2') {
      numberOfPlayers = 2;
    }
    if (key=='3') {
      numberOfPlayers = 3;
    }
    if (key=='4') {
      numberOfPlayers = 4;
    }
    if (key=='5') {
      numberOfPlayers = 5;
    }
    if (key=='6') {
      numberOfPlayers = 6;
    }
    if (key=='7') {
      numberOfPlayers = 7;
    }
    if (key=='8') {
      numberOfPlayers = 8;
    }
    if (key=='9') {
      numberOfPlayers = 9;
    }
    //Confirm number of players
    if (keyCode==ENTER) {
      pushStyle();
      fill(0, 0, bgBR);
      noStroke();
      rect(-10, -10, width+20, height+20);
      popStyle();
      alivePlayers = numberOfPlayers;
      choosePlayersScreen = false;
      gameScreen = true;
      //Create number of players that user selected
      if (numberOfPlayers == 1) {
        player1 = new Player(P1name, 20, height/2, 5, 5, 40, 'w', 's', 'a', 'd', ' ');
        cpu = new CPU("CPU", width-20, height/2, 5, 5, 200);
        player1.alive = true;
        cpu.alive = true;
      } 
      else if (numberOfPlayers == 2) {
        player1 = new Player(P1name, 20, height/2, 5, 5, 40, 'w', 's', 'a', 'd', ' ');
        player2 = new Player(P2name, width-20, height/2, 5, 5, 200, 'i', 'k', 'j', 'l', 'm');
        player1.alive = true;
        player2.alive = true;
      } 
      else if (numberOfPlayers == 3) {
        player1 = new Player(P1name, 20, height-55, 5, 5, 40, 'w', 's', 'a', 'd', ' ');
        player2 = new Player(P2name, width-20, height-55, 5, 5, 200, 'i', 'k', 'j', 'l', 'm');
        player3 = new Player(P3name, width/2, 55, 5, 5, 90, 'i', 'k', 'j', 'l', 'm');
        player1.alive = true;
        player2.alive = true;
        player3.alive = true;
      } 
      else if (numberOfPlayers == 4) {
        player1 = new Player(P1name, 20, 55, 5, 5, 40, 'w', 's', 'a', 'd', ' ');
        player2 = new Player(P2name, width-20, 55, 5, 5, 200, 'i', 'k', 'j', 'l', 'm');
        player3 = new Player(P3name, 20, height-55, 5, 5, 90, 'i', 'k', 'j', 'l', 'm');
        player4 = new Player(P4name, width-20, height-55, 5, 5, 280, 'i', 'k', 'j', 'l', 'm');
        player1.alive = true;
        player2.alive = true;
        player3.alive = true;
        player4.alive = true;
      } 
      else if (numberOfPlayers == 5) {
        player1 = new Player(P1name, 20, 55, 5, 5, 40, 'w', 's', 'a', 'd', ' ');
        player2 = new Player(P2name, width-20, 55, 5, 5, 200, 'i', 'k', 'j', 'l', 'm');
        player3 = new Player(P3name, 20, height-55, 5, 5, 90, 'i', 'k', 'j', 'l', 'm');
        player4 = new Player(P4name, width-20, height-55, 5, 5, 280, 'i', 'k', 'j', 'l', 'm');
        player5 = new Player(P5name, width/2, height/2, 5, 5, 60, 'i', 'k', 'j', 'l', 'm');
        player1.alive = true;
        player2.alive = true;
        player3.alive = true;
        player4.alive = true;
        player5.alive = true;
      } 
      else if (numberOfPlayers == 6) {
        player1 = new Player(P1name, 20, 55, 5, 5, 40, 'w', 's', 'a', 'd', ' ');
        player2 = new Player(P2name, width/2, 55, 5, 5, 200, 'i', 'k', 'j', 'l', 'm');
        player3 = new Player(P3name, width-20, 55, 5, 5, 90, 'i', 'k', 'j', 'l', 'm');
        player4 = new Player(P4name, 20, height-55, 5, 5, 280, 'i', 'k', 'j', 'l', 'm');
        player5 = new Player(P5name, width/2, height-55, 5, 5, 60, 'i', 'k', 'j', 'l', 'm');
        player6 = new Player(P6name, width-20, height-55, 5, 5, 1, 'i', 'k', 'j', 'l', 'm');
        player1.alive = true;
        player2.alive = true;
        player3.alive = true;
        player4.alive = true;
        player5.alive = true;
        player6.alive = true;
      } 
      else if (numberOfPlayers == 7) {
        player1 = new Player(P1name, 20, 55, 5, 5, 40, 'w', 's', 'a', 'd', ' ');
        player2 = new Player(P2name, width/2, 55, 5, 5, 200, 'i', 'k', 'j', 'l', 'm');
        player3 = new Player(P3name, width-20, 55, 5, 5, 90, 'i', 'k', 'j', 'l', 'm');
        player4 = new Player(P4name, 20, height-55, 5, 5, 280, 'i', 'k', 'j', 'l', 'm');
        player5 = new Player(P5name, width/2, height-55, 5, 5, 60, 'i', 'k', 'j', 'l', 'm');
        player6 = new Player(P6name, width-20, height-55, 5, 5, 1, 'i', 'k', 'j', 'l', 'm');
        player7 = new Player(P7name, width/2, height/2, 5, 5, 300, 'i', 'k', 'j', 'l', 'm');
        player1.alive = true;
        player2.alive = true;
        player3.alive = true;
        player4.alive = true;
        player5.alive = true;
        player6.alive = true;
        player7.alive = true;
      } 
      else if (numberOfPlayers == 8) {
        player1 = new Player(P1name, 20, 55, 5, 5, 40, 'w', 's', 'a', 'd', ' ');
        player2 = new Player(P2name, width/2, 55, 5, 5, 200, 'i', 'k', 'j', 'l', 'm');
        player3 = new Player(P3name, width-20, 55, 5, 5, 90, 'i', 'k', 'j', 'l', 'm');
        player4 = new Player(P4name, 20, height-55, 5, 5, 280, 'i', 'k', 'j', 'l', 'm');
        player5 = new Player(P5name, width/2, height-55, 5, 5, 60, 'i', 'k', 'j', 'l', 'm');
        player6 = new Player(P6name, width-20, height-55, 5, 5, 1, 'i', 'k', 'j', 'l', 'm');
        player7 = new Player(P7name, width/2-400, height/2, 5, 5, 300, 'i', 'k', 'j', 'l', 'm');
        player8 = new Player(P8name, width/2+400, height/2, 5, 5, 240, 'i', 'k', 'j', 'l', 'm');
        player1.alive = true;
        player2.alive = true;
        player3.alive = true;
        player4.alive = true;
        player5.alive = true;
        player6.alive = true;
        player7.alive = true;
        player8.alive = true;
      } 
      else if (numberOfPlayers == 9) {
        player1 = new Player(P1name, 20, 55, 5, 5, 40, 'w', 's', 'a', 'd', ' ');
        player2 = new Player(P2name, width/2, 55, 5, 5, 200, 'i', 'k', 'j', 'l', 'm');
        player3 = new Player(P3name, width-20, 55, 5, 5, 90, 'i', 'k', 'j', 'l', 'm');
        player4 = new Player(P4name, 20, height-55, 5, 5, 280, 'i', 'k', 'j', 'l', 'm');
        player5 = new Player(P5name, width/2, height-55, 5, 5, 60, 'i', 'k', 'j', 'l', 'm');
        player6 = new Player(P6name, width-20, height-55, 5, 5, 1, 'i', 'k', 'j', 'l', 'm');
        player7 = new Player(P7name, 20, height/2, 5, 5, 300, 'i', 'k', 'j', 'l', 'm');
        player8 = new Player(P8name, width-20, height/2, 5, 5, 240, 'i', 'k', 'j', 'l', 'm');
        player9 = new Player(P9name, width/2, height/2, 5, 5, 150, 'i', 'k', 'j', 'l', 'm');
        player1.alive = true;
        player2.alive = true;
        player3.alive = true;
        player4.alive = true;
        player5.alive = true;
        player6.alive = true;
        player7.alive = true;
        player8.alive = true;
        player9.alive = true;
      }
    }
  }
  
  void mousePressed(){
    if (mouseX > 10 && mouseX < 210 && mouseY > height-60 && mouseY < height-10) {
      choosePlayersScreen = false;
      startScreen = true;
    }
  }
}

