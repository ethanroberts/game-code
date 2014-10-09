class EGC {

  EGC() {
  } 

  void display() {
    pushStyle();
    noStroke();
    rectMode(CENTER);
    textAlign(CENTER);
    if (player1.alive) {
      fill(player1.HU, 100, 100);
      rect(width/2, height/2-20, 400, 100);
      textSize(50);
      fill(0, 0, 0);
      text("Game Over", width/2, height/2-20);
      textSize(20);
      text(player1.playerName + " WINS", width/2, height/2);
      textSize(16);
      text("Press the TAB key to restart", width/2, height/2+20);
    }
    else if (player2.alive) {
      fill(player2.HU, 100, 100);
      rect(width/2, height/2-20, 400, 100);
      textSize(50);
      fill(0, 0, 0);
      text("Game Over", width/2, height/2-20);
      textSize(20);
      text(player2.playerName + " WINS", width/2, height/2);
      textSize(16);
      text("Press the TAB key to restart", width/2, height/2+20);
    }
    else if (player3.alive) {
      fill(player3.HU, 100, 100);
      rect(width/2, height/2-20, 400, 100);
      textSize(50);
      fill(0, 0, 0);
      text("Game Over", width/2, height/2-20);
      textSize(20);
      text(player3.playerName + " WINS", width/2, height/2);
      textSize(16);
      text("Press the TAB key to restart", width/2, height/2+20);
    }
    else if (player4.alive) {
      fill(player4.HU, 100, 100);
      rect(width/2, height/2-20, 400, 100);
      textSize(50);
      fill(0, 0, 0);
      text("Game Over", width/2, height/2-20);
      textSize(20);
      text(player4.playerName + " WINS", width/2, height/2);
      textSize(16);
      text("Press the TAB key to restart", width/2, height/2+20);
    } 
    else if (player5.alive) {
      fill(player5.HU, 100, 100);
      rect(width/2, height/2-20, 400, 100);
      textSize(50);
      fill(0, 0, 0);
      text("Game Over", width/2, height/2-20);
      textSize(20);
      text(player5.playerName + " WINS", width/2, height/2);
      textSize(16);
      text("Press the TAB key to restart", width/2, height/2+20);
    } 
    else if (player6.alive) {
      fill(player6.HU, 100, 100);
      rect(width/2, height/2-20, 400, 100);
      textSize(50);
      fill(0, 0, 0);
      text("Game Over", width/2, height/2-20);
      textSize(20);
      text(player6.playerName + " WINS", width/2, height/2);
      textSize(16);
      text("Press the TAB key to restart", width/2, height/2+20);
    } 
    else if (player7.alive) {
      fill(player7.HU, 100, 100);
      rect(width/2, height/2-20, 400, 100);
      textSize(50);
      fill(0, 0, 0);
      text("Game Over", width/2, height/2-20);
      textSize(20);
      text(player7.playerName + " WINS", width/2, height/2);
      textSize(16);
      text("Press the TAB key to restart", width/2, height/2+20);
    } 
    else if (player8.alive) {
      fill(player8.HU, 100, 100);
      rect(width/2, height/2-20, 400, 100);
      textSize(50);
      fill(0, 0, 0);
      text("Game Over", width/2, height/2-20);
      textSize(20);
      text(player8.playerName + " WINS", width/2, height/2);
      textSize(16);
      text("Press the TAB key to restart", width/2, height/2+20);
    } 
    else if (player9.alive) {
      fill(player9.HU, 100, 100);
      rect(width/2, height/2-20, 400, 100);
      textSize(50);
      fill(0, 0, 0);
      text("Game Over", width/2, height/2-20);
      textSize(20);
      text(player9.playerName + " WINS", width/2, height/2);
      textSize(16);
      text("Press the TAB key to restart", width/2, height/2+20);
    }
    else {
      fill(0, 0, 100);
      rect(width/2, height/2-20, 400, 100);
      textSize(50);
      fill(0, 0, 0);
      text("Game Over", width/2, height/2-20);
      textSize(20);
      text("IT'S A TIE!", width/2, height/2);
      textSize(16);
      text("Press the TAB key to restart", width/2, height/2+20);
    }
    popStyle();
  }

  void keyPressed() {
    if (keyCode==TAB) {
      gameScreen = false;
      endGameScreen = false;
      choosePlayersScreen = true;
      g.p1Cycle = false;
      alivePlayers = numberOfPlayers;
      numberOfPlayers = 2;
      player1.alive = false;
      player2.alive = false;
      player3.alive = false;
      player4.alive = false;
      player5.alive = false;
      player6.alive = false;
      player7.alive = false;
      player8.alive = false;
      player9.alive = false;
    }
  }
}

