class startScreenC {
  
  startScreenC(){
    
  }
  
  void display(){
    pushStyle();
    background(0, 0, bgBR);
    textSize(120);
    textAlign(CENTER);
    text("LINES", width/2, height/2);
    rectMode(CENTER);
    fill(0, 0, 50);
    rect(width/2-110, height/2+50, 200, 50);
    rect(width/2+110, height/2+50, 200, 50);
    fill(0, 0, 100);
    textSize(25);
    text("START", width/2-110, height/2+60);
    text("HOW TO PLAY", width/2+110, height/2+60);
    popStyle();
  }
  
  void mousePressed(){
    if (mouseX > width/2-210 && mouseX < width/2-10 && mouseY > height/2 && mouseY < height/2 + 100) {
      startScreen = false;
      choosePlayersScreen = true;
    }
    if (mouseX > width/2+10 && mouseX < width/2+210 && mouseY > height/2 && mouseY < height/2 + 100) {
      startScreen = false;
      howToPlayScreen = true;
    }
  }
  
  
  
}
