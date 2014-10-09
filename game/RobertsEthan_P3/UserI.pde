class UserI {
  float barHeight = 35;//Determines the size of the info bar


  UserI() {
    
  }

  void display() {
    pushStyle();
    rectMode(CORNER);
    fill(0,0,50);
    noStroke();
    rect(0,0,width,barHeight);
    popStyle();
  }
}
