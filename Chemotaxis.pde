	Bacteria [] james;

	void setup()   
	{     
		size (300,300);  
		background(0); 
		james= new Bacteria[30];
		for (int i =0; i<james.length; i++)
	{
		james[i] = new Bacteria();
	}

	}

	void draw()
	{
		
	for (int i=0; i< james.length;i++)
		{
			james[i].move();
			james[i].show();
		}  
}

	class Bacteria    
	{  
		int x;
		int y;
		int a;
		int b;
		int c;
		Bacteria(){
			a=(int)(Math.random()*255)+1;
			b=(int)(Math.random()*255)+1;
			c=(int)(Math.random()*255)+1;
			x=(int)(Math.random()*299);
			y=(int)(Math.random()*299); 
		}   

	void move()
		{
			if ((int)(Math.random()*2+1)==1){
				x++;
			}
			else {
				x--;
			}

			if ((int)(Math.random()*2+1)==1){
				y++;
			}
			else {
				y--;
			}
		}


	void show(){
		fill(a,b,c);
		ellipse(x, y, 5, 5);
		}
	}
