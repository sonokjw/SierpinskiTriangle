int r, g, b;

public void setup()
{
	size(500, 500);
	background(0);
}
public void draw()
{
	sierpinski(50, 450, 400);
}
public void mouseDragged()//optional
{
	int length = 0;
	r = (int)(Math.random()*250);
	g = (int)(Math.random()*250);
	b = (int)(Math.random()*250);
	background(r, g, b);
	sierpinski(mouseX, mouseY, length);
	length+=5;
}
public void sierpinski(int x, int y, int len) 
{
	if(len < 20)
	{
		noStroke();
		triangle(x, y, x+len, y, x + len/2, y-len);
	}

	else
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}