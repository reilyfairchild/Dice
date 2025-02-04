Die dead;
int rDiv;
int sum;
int rainbow = 0;
void setup()
{
  noLoop();
  size(300, 310);
  
}
void draw()
{
  background(0);
   
  rDiv = 300/(int)((Math.random() * 5)+1);
  for (int r = 0; r <= 300- rDiv; r+= rDiv ) {
    for (int col = 0; col <= 300 - rDiv; col+=rDiv) {
      dead = new Die(r, col);
      dead.roll();
      dead.show();
    }
  }
  text("Sum: " + sum, 240, 310);
}
void mousePressed()
{
	rainbow++;
  redraw();
  
}
class Die //models one single dice cube
{
  int myX, myY, rollVal;//variable declarations here

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    //variable initializations here
  }
  void roll()
  {
    rollVal = (int)(Math.random()*6 + 1);
    sum += rollVal;
  }
  void show()
  {
    
    if(rainbow == 0){ 
      //red
      fill(255, 0, 0);
    }else if(rainbow == 1){
      //orange
      fill(255, 165, 0 );
    }else if(rainbow == 2 ){
      //yellow
      fill(255, 255, 0);
    }else if(rainbow == 3){
      //green
      fill(0, 255, 0);
    }else if(rainbow == 4){
      //blue
      fill(0, 0, 255);
    }else if(rainbow == 5){
      //purple
      fill(128, 0, 128);
    }else{
      rainbow = 0;
      fill(255, 0, 0);
    }
    
    rect(myX, myY, rDiv, rDiv);
   
   
    //six if statements
      if(rollVal == 1){
     fill(255);
     //m
     ellipse(myX+rDiv/2, myY+rDiv/2, rDiv/9, rDiv/9);
     
     }else if(rollVal == 2 ){
     fill(255);
     //topright
    ellipse(myX+rDiv/4, myY+rDiv/4, rDiv/9, rDiv/9);
     //bottomright
     ellipse(myX+3*rDiv/4, myY+3*rDiv/4, rDiv/9, rDiv/9);
     
     }else if(rollVal == 3){
     fill(255);
     //m
     ellipse(myX+rDiv/2, myY+rDiv/2, rDiv/9, rDiv/9);
     //topright
    ellipse(myX+rDiv/4, myY+rDiv/4, rDiv/9, rDiv/9);
     //bottomright
     ellipse(myX+3*rDiv/4, myY+3*rDiv/4, rDiv/9, rDiv/9);
    
     }else if(rollVal == 4){
     fill(255);
     //topright
    ellipse(myX+rDiv/4, myY+rDiv/4, rDiv/9, rDiv/9);
     //bottomright
     ellipse(myX+3*rDiv/4, myY+3*rDiv/4, rDiv/9, rDiv/9);
     //topleft
    ellipse(myX+3*rDiv/4, myY+rDiv/4, rDiv/9, rDiv/9);
     //bottomleft
     ellipse(myX+rDiv/4, myY+3*rDiv/4, rDiv/9, rDiv/9);
     
     }else if(rollVal == 5){
     fill(255);
     //m
     ellipse(myX+rDiv/2, myY+rDiv/2, rDiv/9, rDiv/9);
     //topright
    ellipse(myX+rDiv/4, myY+rDiv/4, rDiv/9, rDiv/9);
     //bottomright
     ellipse(myX+3*rDiv/4, myY+3*rDiv/4, rDiv/9, rDiv/9);
     //topleft
    ellipse(myX+3*rDiv/4, myY+rDiv/4, rDiv/9, rDiv/9);
     //bottomleft
     ellipse(myX+rDiv/4, myY+3*rDiv/4, rDiv/9, rDiv/9);
     
     }else{
     fill(255);
     //6
      //topright
    ellipse(myX+rDiv/4, myY+rDiv/4, rDiv/9, rDiv/9);
     //bottomright
     ellipse(myX+3*rDiv/4, myY+3*rDiv/4, rDiv/9, rDiv/9);
     //topleft
    ellipse(myX+3*rDiv/4, myY+rDiv/4, rDiv/9, rDiv/9);
     //bottomleft
     ellipse(myX+rDiv/4, myY+3*rDiv/4, rDiv/9, rDiv/9);
     //mid left
     ellipse(myX+rDiv/4, myY+2*rDiv/4, rDiv/9, rDiv/9);
      //mid right
     ellipse(myX+3*rDiv/4, myY+2*rDiv/4, rDiv/9, rDiv/9);
     }
     
  }
}