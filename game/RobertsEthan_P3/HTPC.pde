class HTPC {
  
 float p1y = height/2 - 200;
 float textLineH = 30;
  
 HTPC(){
  
 } 
  
  void display(){
    pushStyle();
    background(0, 0, bgBR);
    fill(0, 0, 50);
    rect(10, height-60, 200, 50);
    fill(0, 0, 100);
    textSize(72);
    textAlign(CENTER);
    text("HOW TO PLAY", width/2, 200);
    textSize(textLineH);
    textAlign(CENTER);
    text("The objective of Lines is to make other players crash into the line that is left behind you as you move.", width/2, p1y);
    text("Players use the arrow keys to control the direction their line is travelling in.", width/2, p1y + textLineH);
    text("Players use the spacebar to make the head of their line jump forward.", width/2, p1y + textLineH*2);
    text("If you hit a line you will die.", width/2, p1y + textLineH*3);
    text("The game ends when there is either 1 player left alive, or no players left alive.", width/2, p1y + textLineH*4);
    text("The last player left alive wins, if all players are dead at the end of the game,", width/2, p1y + textLineH*5);
    text("the game is considered a tie.", width/2, p1y + textLineH*6);
    text("When the game is over press the TAB key to return to the 'Choose Number of Players' screen.", width/2, p1y + textLineH*8);
    fill(0, 0, 100);
    textSize(20);
    textAlign(CENTER);
    text("Back", 110, height-30);
    popStyle();
  }
  
  void mousePressed(){
    if (mouseX > 10 && mouseX < 210 && mouseY > height-60 && mouseY < height-10) {
      howToPlayScreen = false;
      startScreen = true;
    }
  }
}
