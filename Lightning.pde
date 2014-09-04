//Vivian Lam, Lightning, AP Computer Science, Mod 6/7
int startX =0;
int startY=150;
int endX=0;
int endY=150;
void setup()
{
  size(300,300);
  strokeWeight(2);
}
void draw()
{
  background(0);
  stroke(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
  while(endX<300){
   endX=startX+((int)random(0,9));
   endY=startY+((int)random(-9,9));
   line(startX,startY,endX,endY);
   startX=endX;
   startY=endY;
}
}

void mousePressed()
{
  startX=0;
  startY=mouseY;
  endX=0;
  draw();
}