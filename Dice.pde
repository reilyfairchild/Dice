Die dead;
void setup()
{
  noLoop();
  size(300, 300);
  
}
void draw()
{
  background(0);
  int rDiv = (int)(Math.random() * 30) * 10;
  
  
  for(int r = 0; r <= 300 ; r+= rDiv ){
    for(int col = 0; col <= 300; col+=rDiv){
      dead = new Die(r, col);
      dead.roll();
      dead.show();
  }
  }
  


}
void mousePressed()
{
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
  }
  void show()
  {
    int siz = 100;
    //double dot = siz/;
    fill(255, 0, 0);
    rect(myX, myY, siz, siz);
    fill(0, 255, 0);
    text(rollVal, myX+siz/2, myY+siz/2);
    //six if statements
    /*if(rollVal == 1){
      fill(255, 0, 0);
      //m
      ellipse(myX, myY, dot , dot);

    }else if(rollVal ==2 ){
      fill(255, 0, 0);
      //topright
      ellipse(myX + myX/9 , myY + myY/9, siz/7, siz/7);

    }else if(rollVal == 3){
      fill(255, 0, 0);
      //m
      ellipse(myX, myY, dot , dot);
    }else if(rollVal == 4){
      fill(255, 0, 0);
    }else if(rollVal == 5){
      fill(255, 0, 0);
      //m
      ellipse(myX, myY, dot , dot);
    }else{
      fill(255, 0, 0);
      //6
    }
    */
  }
}
