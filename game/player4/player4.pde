import spacebrew.*;


float UPkeyBR = 0;
float DOWNkeyBR = 0;
float LEFTkeyBR = 0;
float RIGHTkeyBR = 0;
float sbBR = 0;

String command = "";

Spacebrew sb;


String server="130.195.44.115";
String name="P4";
String description ="I am Player 4";
String sbPublishChannel;
String sbSubscribeChannel = "player4";



void setup() {
  size(720, 720);
  colorMode(HSB, 360, 100, 100, 1);
  background(0, 0, 80);

  String ns[] = sketchPath("").split("/");
  sbPublishChannel = ns[ns.length-1];
  println("****  ---->   " + sbPublishChannel);
  setupSpaceBrewClient();
}


void setupSpaceBrewClient() {
  sb = new Spacebrew(this);

  // declare your publishers
  sb.addPublish( sbPublishChannel, "string", command ); 

  // declare your subscribers
  sb.addSubscribe( sbSubscribeChannel, "string" );

  // connect!
  sb.connect(server, name, description );
}



void draw() {
  background(280, 100, 100);

  //draw the arrow keys
  pushStyle();
  noStroke();
  rectMode(CENTER);
  //up arrow
  fill(0, 0, UPkeyBR);
  rect(width/2, height/2, 50, 75);
  triangle(width/2-50, height/2-37, width/2+50, height/2-37, width/2, height/2-100);
  //down arrow
  fill(0, 0, DOWNkeyBR);
  rect(width/2, height/2+100, 50, 75);
  triangle(width/2-50, height/2+137, width/2+50, height/2+137, width/2, height/2+200);
  //left arrow
  fill(0, 0, LEFTkeyBR);
  rect(width/2-90, height/2+50, 75, 50);
  triangle(width/2-127, height/2, width/2-127, height/2+100, width/2-190, height/2+50);
  //right arrow
  fill(0, 0, RIGHTkeyBR);
  rect(width/2+90, height/2+50, 75, 50);
  triangle(width/2+127, height/2, width/2+127, height/2+100, width/2+190, height/2+50);
  popStyle();

  //draw the spacebar
  pushStyle();
  noStroke();
  rectMode(CENTER);
  fill(0, 0, sbBR);
  rect(width/2, height/2+275, 500, 75);
  popStyle();

  //show the players name
  pushStyle();
  fill(0, 0, 100);
  textSize(50);
  textAlign(CENTER);
  text(sbPublishChannel, width/2, height/2-200);
  popStyle();
}

void keyPressed() {
  //store the current command
  String lastCommand = command;
  command = null;

  if (keyCode==UP) {
    //command = "P1:U";
    command = "i";
    UPkeyBR = 100;
    DOWNkeyBR = 0;
    LEFTkeyBR = 0;
    RIGHTkeyBR = 0;
  }
  if (keyCode==DOWN) {
    command = "k";
    UPkeyBR = 0;
    DOWNkeyBR = 100;
    LEFTkeyBR = 0;
    RIGHTkeyBR = 0;
  }
  if (keyCode==LEFT) {
    command = "j";
    UPkeyBR = 0;
    DOWNkeyBR = 0;
    LEFTkeyBR = 100;
    RIGHTkeyBR = 0;
  }
  if (keyCode==RIGHT) {
    command = "l";
    UPkeyBR = 0;
    DOWNkeyBR = 0;
    LEFTkeyBR = 0;
    RIGHTkeyBR = 100;
  }
  if (key==' ') {
    command = "m";
    sbBR = 100;
  }

  if (command != null) {
    sb.send(sbPublishChannel, command);
  } 
  else {
    command = lastCommand;
  }
}

void keyReleased(){
 if (key==' '){
  sbBR = 0;
 } 
}




// If something comes back handle it here
/*
void onStringMessage( String name, String value ) {
 println("got string message " + name + " : " + value);
 remote_string = value;
 }
 */
