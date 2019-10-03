Die dead;
void setup()
{
	noLoop();
	size(300, 300);
	dead = new Die(100, 100);
}
void draw()
{
	background(0);
	dead.roll();
	dead.show();


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
		rollVal = 1;
		// (int)(Math.random()*6 + 1);
	}
	void show()
	{
		fill(255);
		rect(myX, myY, 100, 100);
		//six if statements
		if(rollVal == 1){
			fill(255, 0, 0);
			ellipse(myX, myY, 15, 15);
		}else if(rollVal ==2 ){

		}else if(rollVal == 3){

		}else if(rollVal == 4){

		}else if(rollVal == 5){

		}else{
			//6
		}
	}
}
