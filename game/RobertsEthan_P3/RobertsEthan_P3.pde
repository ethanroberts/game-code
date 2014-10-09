/*
Ethan Roberts
 300284644
 MDDN 242
 Project 3
 
 Spacebrew library retrieved from http://docs.spacebrew.cc/
 
 Music found at www.freeplaymusic.com and is used under an education license.
 Explosion sound effect retrieved from www.freesound.org
 */

import spacebrew.*;

String server="130.195.44.115";
//String server="localhost";  // 127.0.0.1
String name="GAME";
String description ="The main game display";


import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;
AudioPlayer musicStartScreen, musicGameScreen;

UserI ui;
Player player1, player2, player3, player4, player5, player6, player7, player8, player9;
CPU cpu;
startScreenC sS;
HTPC htp;
CPC cp;
GC g;
EGC eg;
Spacebrew sb;

//Players names
String P1name = "Player 1";
String P2name = "Player 2";
String P3name = "Player 3";
String P4name = "Player 4";
String P5name = "Player 5";
String P6name = "Player 6";
String P7name = "Player 7";
String P8name = "Player 8";
String P9name = "Player 9";

Boolean startScreen = true;
Boolean choosePlayersScreen = false;
Boolean howToPlayScreen = false;
Boolean gameScreen = false;
Boolean endGameScreen = false;//Is the game finished?

int playersStepSize = 4;//How fast the players move
int playersJumpSize = 70;//How far the player can jump

int numberOfPlayers = 2;//How many players there are
int alivePlayers;//How many players are alive

float bgBR = 80;//Background brightness

void setup() {
  size(1780, 980); 
  //noCursor();
  colorMode(HSB, 360, 100, 100, 1);
  background(0, 0, bgBR);


  // instantiate the sb variable
  setupSpaceBrewGame();


  // add each thing you publish to
  // sb.addPublish( "buttonPress", "boolean", buttonSend ); 

  // add each thing you subscribe to
  // sb.addSubscribe( "color", "range" );




  minim = new Minim(this);
  musicStartScreen = minim.loadFile("Ready To Box.mp3");
  musicStartScreen.loop();

  ui = new UserI();
  sS = new startScreenC();
  htp = new HTPC();
  cp = new CPC();
  g = new GC();
  eg = new EGC();

  //create the players but do not turn them on
  player1 = new Player(P1name, 20, 55, 5, 5, 1, 'w', 's', 'a', 'd', ' ');
  player2 = new Player(P2name, 200, 55, 5, 5, 40, 'i', 'k', 'j', 'l', 'm');
  player3 = new Player(P3name, 400, 55, 5, 5, 60, 'i', 'k', 'j', 'l', 'm');
  player4 = new Player(P4name, 600, 55, 5, 5, 90, 'i', 'k', 'j', 'l', 'm');
  player5 = new Player(P5name, 800, 55, 5, 5, 200, 'i', 'k', 'j', 'l', 'm');
  player6 = new Player(P6name, 100, height-55, 5, 5, 250, 'i', 'k', 'j', 'l', 'm');
  player7 = new Player(P7name, 300, height-55, 5, 5, 280, 'i', 'k', 'j', 'l', 'm');
  player8 = new Player(P8name, 500, height-55, 5, 5, 300, 'i', 'k', 'j', 'l', 'm');
  player9 = new Player(P9name, 700, height - 55, 5, 5, 330, 'i', 'k', 'j', 'l', 'm');
  
  //create the cpu
  cpu = new CPU("CPU",200,55,5,5,40);
}


void setupSpaceBrewGame() {
  sb = new Spacebrew( this );

  // add each thing you publish to -- we are not publishing anything yet
  // sb.addPublish( "buttonPress", "boolean", buttonSend ); 

  // subscribe to all of the players
  sb.addSubscribe( "player1", "string" );
  sb.addSubscribe( "player2", "string" );
  sb.addSubscribe( "player3", "string" );
  sb.addSubscribe( "player4", "string" );
  sb.addSubscribe( "player5", "string" );  
  sb.addSubscribe( "player6", "string" );
  sb.addSubscribe( "player7", "string" );
  sb.addSubscribe( "player8", "string" );
  sb.addSubscribe( "player9", "string" );    


  // connect to spacebrew
  sb.connect(server, name, description);
}


void draw() {
  if (startScreen) {
    sS.display();
  }

  if (howToPlayScreen) {
    htp.display();
  }

  if (choosePlayersScreen) {
    cp.display();
  }

  if (gameScreen) {
    g.display();
  }

  if (endGameScreen) {
    eg.display();
  }
}

void keyPressed() {
  if (choosePlayersScreen) {
    cp.keyPressed();
  }

  if (gameScreen) {
    g.keyPressed();
  }

  //Reset the game if TAB is pressed (but only once the game is finished)
  if (endGameScreen) {
    eg.keyPressed();
  }
}

void mousePressed() {
  if (startScreen) {
    sS.mousePressed();
  }

  if (howToPlayScreen) {
    htp.mousePressed();
  }

  if (choosePlayersScreen) {
    cp.mousePressed();
  }
}

void mouseClicked() {
  if (gameScreen) {
    g.mouseClicked();
  }
}





