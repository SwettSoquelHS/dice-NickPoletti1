Die die1;
Die die2;
Die die3;
Die die4;
Die die5;
Die die6;
Die die7;
Die die8;
Die die9;

int total;



void setup(){
  size(600,600);
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  noLoop();
  die1 = new Die(30,30);
  die2 = new Die(150, 30);
  die3 = new Die(270, 30);
  die4 = new Die(30, 150);
  die5 = new Die(150, 150);
  die6 = new Die(270, 150);
  die7 = new Die(30, 270);
  die8 = new Die(150, 270);
  die9 = new Die(270, 270);
  

  
}

void draw(){
  background(0, 255, 0);
  die1.show();
  die2.show();
  die3.show();
  die4.show();
  die5.show();
  die6.show();
  die7.show();
  die8.show();
  die9.show();
  
  textSize(48);
  fill (0);
 
  text("Current Total: " + total, 30, 450);
}

void mousePressed(){
  redraw();
  die1.roll();
  die2.roll();
  die3.roll();
  die4.roll();
  die5.roll();
  die6.roll();
  die7.roll();
  die8.roll();
  die9.roll();

}



//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
  int x_pos, y_pos;
  int randside;
  
  //variable declarations for your Die instances here
  
  //constructor
  Die(int x, int y){
    x_pos = x;
    y_pos = y;
    
    //variable initializations here
  }
  
  //Simulate a roll of a die
  void roll(){
    randside = (int)(Math.random() * 6) + 1;
    total = 0;
    
    
    
  }
  
  /*
    Use the randomly assigned roll value to draw the face of a die
  */
  void show(){
    pushMatrix();
    translate(x_pos, y_pos);
    //die
    fill(255);
    rect(0,0,90,90);
    fill(0);
    if (randside == 1){
      ellipse(45,45,10,10);
      total++;
    } else if (randside == 3){
      ellipse(45,45,10,10);
      ellipse(25,25,10,10);
      ellipse(65,65,10,10);
      total+=3;
    } else if (randside == 2) { 
      ellipse(25,25,10,10);
      ellipse(65,65,10,10);
      total+=2;
    } else if (randside == 4) { 
      ellipse(25,25,10,10);
      ellipse(25,65,10,10);
      ellipse(65,25,10,10);
      total+=4;
      ellipse(65,65,10,10);
    } else if (randside == 5){
      ellipse(25,25,10,10);
      ellipse(25,65,10,10);
      ellipse(65,25,10,10);
      ellipse(65,65,10,10);
      ellipse(45,45,10,10);
      total+=5;
    } else if (randside == 6){
      ellipse(25,25,10,10);
      ellipse(25,65,10,10);
      ellipse(65,25,10,10);
      ellipse(65,65,10,10);
      ellipse(25,45,10,10);
      ellipse(65,45,10,10);
      total+=6;
    }
    
    popMatrix();
    
  }
}
