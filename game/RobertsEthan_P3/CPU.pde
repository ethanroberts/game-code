class CPU {

  AudioSnippet explosion;

  String playerName;

  Boolean alive = false;//Whether or not the player is alive
  Boolean nameHideTimer = false;
  int nameHide;

  PVector pos;
  PVector vel;

  float W;
  float H;
  float HU = 50;
  float SA = 100;
  float BR = 100;
  float AL = 1;

  float nameAL = 1;


  color storedC, colorPickerC;//storedC: the colour of the pixel being checked infront of the player. colorPickerC: The colour the mouse gets when the player is using the colour picker

  //Colour picker variables
  float colorPickerHU;
  float colorPickerAL;//Opacity of the colour picker box (used to show or hide the box)
  float CPboxSize = 10;
  float CPX;//x position of colour picker
  float CPY;//y position of colour picker
  //Hues for the different colours available in the colour picker
  float HU1 = 1;//Red
  float HU2 = 40;//Orange
  float HU3 = 60;//Yellow
  float HU4 = 90;//Green
  float HU5 = 200;//Light Blue
  float HU6 = 250;//Dark Blue
  float HU7 = 280;//Purple
  float HU8 = 300;//Pink

  //Variables that check the HU of the pixel in front of the player for collision detection
  float checkHU;
  int checkX, checkY;
  int checkXSize = 2;//Determines how far in front of the player to check
  int checkYSize = 2;
  int PcheckXSize = 4;
  int PcheckYSize = 4;

  String direction;//Says which direction the player is moving in
  char controlUP, controlDOWN, controlLEFT, controlRIGHT, controlJUMP;

  //String: player name, float: x position, float: y position, float: width, float: height, float: initial hue, char: keys that control player movement
  CPU(String TPN, float tXpos, float tYpos, float tW, float tH, float tHU) {
    pos = new PVector(tXpos, tYpos);
    vel = new PVector(-playersStepSize, 0);
    this.W = tW;
    this.H = tH;
    this.HU = tHU;
    this.playerName = TPN;

    explosion = minim.loadSnippet("explosion.wav");
  } 

  void update() {
    //If the game is not over keep the player moving
    if (endGameScreen==false && alive) {
      pos.add(vel);
    }

    //If the player leaves the screen bring them back on the opposite side
    if (pos.x>width) {
      pos.x=0;
    }
    if (pos.x<0) {
      pos.x=width;
    }
    if (pos.y>height) {
      pos.y=ui.barHeight;
    }
    if (pos.y<ui.barHeight) {
      pos.y=height;
    }

    if (endGameScreen == false) {
      //Determines which pixel to check the Hue of
      checkX = (int)pos.x+checkXSize;
      checkY = (int)pos.y+checkYSize;

      //Gets the colour of the pixel being check and then takes the Hue of that colour
      storedC = get(checkX, checkY);
      checkHU = hue(storedC);

      //If the player colides with their own or another players line the player dies
      if (checkHU>0 && alive) {
        alive = false;
        alivePlayers--;
        explosion.rewind();
        explosion.play();
      }
    }
  }

  void drawColorPicker(float CPxPos, float CPyPos) {
    this.CPX = CPxPos;
    this.CPY = CPyPos;

    //Draws the colour picker which the player can use to change the colour of their line
    pushStyle();
    rectMode(CORNER);
    noStroke();
    textSize(12);
    fill(0, 0, 100);
    text(playerName, CPxPos + CPboxSize + 10, CPyPos + CPboxSize);
    fill(HU, 100, 100);
    rect(CPxPos, CPyPos, CPboxSize, CPboxSize);
    fill(HU1, 100, 100, colorPickerAL);
    rect(CPxPos, CPyPos+CPboxSize+2, CPboxSize, CPboxSize);
    fill(HU2, 100, 100, colorPickerAL);
    rect(CPxPos+CPboxSize, CPyPos+CPboxSize+2, CPboxSize, CPboxSize);
    fill(HU3, 100, 100, colorPickerAL);
    rect(CPxPos+CPboxSize*2, CPyPos+CPboxSize+2, CPboxSize, CPboxSize);
    fill(HU4, 100, 100, colorPickerAL);
    rect(CPxPos+CPboxSize*3, CPyPos+CPboxSize+2, CPboxSize, CPboxSize);
    fill(HU5, 100, 100, colorPickerAL);
    rect(CPxPos+CPboxSize*4, CPyPos+CPboxSize+2, CPboxSize, CPboxSize);
    fill(HU6, 100, 100, colorPickerAL);
    rect(CPxPos+CPboxSize*5, CPyPos+CPboxSize+2, CPboxSize, CPboxSize);
    fill(HU7, 100, 100, colorPickerAL);
    rect(CPxPos+CPboxSize*6, CPyPos+CPboxSize+2, CPboxSize, CPboxSize);
    fill(HU8, 100, 100, colorPickerAL);
    rect(CPxPos+CPboxSize*7, CPyPos+CPboxSize+2, CPboxSize, CPboxSize);
    noFill();
    stroke(0, 0, 100, colorPickerAL);
    rect(CPxPos, CPyPos+CPboxSize+2, CPboxSize*8, CPboxSize);
    popStyle();
  }


  void display() {
    pushStyle();
    noStroke();
    textAlign(CENTER);
    textSize(12);
    fill(0, 0, 0, nameAL);
    rectMode(CENTER);
    if (pos.x > width/2 && pos.y > height/2) {
      rect(pos.x-50, pos.y-20, 100, 15);
      fill(0, 0, 100, nameAL);
      text(playerName, pos.x-50, pos.y-15);
    } 
    else if (pos.x > width/2) {
      rect(pos.x-50, pos.y+20, 100, 15); 
      fill(0, 0, 100, nameAL);
      text(playerName, pos.x-50, pos.y+25);
    } 
    else if (pos.y > height/2) {
      rect(pos.x+50, pos.y-20, 100, 15);
      fill(0, 0, 100, nameAL);
      text(playerName, pos.x+50, pos.y-15);
    }
    else {
      rect(pos.x+50, pos.y+20, 100, 15);
      fill(0, 0, 100, nameAL);
      text(playerName, pos.x+50, pos.y+25);
    }
    fill(HU, SA, BR, AL);
    ellipseMode(CENTER);
    ellipse(pos.x, pos.y, W, H);

    if (nameHideTimer) {
      nameHide++;
    }

    if (nameHide==1) {
      fill(0, 0, bgBR);
      rect(pos.x, pos.y, 300, 300);
    }
    popStyle();
  }


  void moveUp() {
    println("I am moving up now...");
    if (direction != "DOWN") {
      direction = "UP";
      checkXSize = 0;
      checkYSize = -4;
      PcheckXSize = 0;
      PcheckYSize = -10;
      vel.x = 0;
      vel.y = -playersStepSize;
      nameAL = 0;
      nameHideTimer = true;
    }
  }

  void moveDown() {
    if (direction != "UP") {
      direction = "DOWN";
      checkXSize = 0;
      checkYSize = 4;
      PcheckXSize = 0;
      PcheckYSize = 10;
      vel.x = 0;
      vel.y = playersStepSize;
      nameAL = 0;
      nameHideTimer = true;
    }
  }

  void moveLeft() {
    if (direction != "RIGHT") {
      direction = "LEFT";
      checkXSize = -4;
      checkYSize = 0;
      PcheckXSize = -10;
      PcheckYSize = 0;
      vel.x = -playersStepSize;
      vel.y = 0;
      nameAL = 0;
      nameHideTimer = true;
    }
  }

  void moveRight() {
    if (direction != "LEFT") {
      direction = "RIGHT";
      checkXSize = 4;
      checkYSize = 0;
      PcheckXSize = 10;
      PcheckYSize = 0;
      vel.x = playersStepSize;
      vel.y = 0;
      nameAL = 0;
      nameHideTimer = true;
    }
  }

  /*
    void jump() {

    if (direction == "UP") {
      pos.y -= playersJumpSize;
    } 
    if (direction == "DOWN") {
      pos.y += playersJumpSize;
    }
    if (direction == "LEFT") {
      pos.x -= playersJumpSize;
    }
    if (direction == "RIGHT") {
      pos.x += playersJumpSize;
    }
    nameAL = 0;
    nameHideTimer = true;
  }
  */

 /*
  void keyPressed() {



    //changes the direction of the player and limits it so the player can not turn back on themself
    if (key==controlUP) {
      if (direction != "DOWN") {
        direction = "UP";
        checkXSize = 0;
        checkYSize = -4;
        vel.x = 0;
        vel.y = -playersStepSize;
        nameAL = 0;
        nameHideTimer = true;
      }
    }
    else if (key==controlDOWN) {
      if (direction != "UP") {
        direction = "DOWN";
        checkXSize = 0;
        checkYSize = 4;
        vel.x = 0;
        vel.y = playersStepSize;
        nameAL = 0;
        nameHideTimer = true;
      }
    }
    else if (key==controlLEFT) {
      if (direction != "RIGHT") {
        direction = "LEFT";
        checkXSize = -4;
        checkYSize = 0;
        vel.x = -playersStepSize;
        vel.y = 0;
        nameAL = 0;
        nameHideTimer = true;
      }
    }
    else if (key==controlRIGHT) {
      if (direction != "LEFT") {
        direction = "RIGHT";
        checkXSize = 4;
        checkYSize = 0;
        vel.x = playersStepSize;
        vel.y = 0;
        nameAL = 0;
        nameHideTimer = true;
      }
    }

    //makes the player jump
    else if (key==controlJUMP) {
      if (endGameScreen==false) {
        if (direction == "UP") {
          pos.y -= playersJumpSize;
        } 
        if (direction == "DOWN") {
          pos.y += playersJumpSize;
        }
        if (direction == "LEFT") {
          pos.x -= playersJumpSize;
        }
        if (direction == "RIGHT") {
          pos.x += playersJumpSize;
        }
        nameAL = 0;
        nameHideTimer = true;
      }
    }
  }

  void mouseClicked() {
    //Shows the box of colours the player can choose from
    if (endGameScreen==false) {
      if (mouseX > CPX && mouseX < CPX+CPboxSize && mouseY > CPY && mouseY < CPY+CPboxSize) {
        colorPickerAL = 1;
      }
      //changes the colour of the player to the colour clicked on inside the colour picker box
      if (mouseX > CPX && mouseX < CPX+CPboxSize*8 && mouseY > CPY+CPboxSize && mouseY < CPY+CPboxSize*2+2) {
        colorPickerC = get(mouseX, mouseY);
        colorPickerHU = hue(colorPickerC);
        HU = colorPickerHU;
        colorPickerAL = 0;
      }
    }
  }
  */
}

