void setup()
{
  size(500,500);
  noLoop();
}
int r = 0;
void draw() {
  for(int i = -200; i< 300; i+=120){
    for(int s = -180; s < 250; s+= 120)
      scale(s,i);
      r = (int)(Math.random()*255);
  }
}

void scale(int x,int y){
  //headpiece
  stroke(0,0,0);
  strokeWeight(3);
  fill(r,0,0);
  arc(x+250,y+200,60,60,radians(315),radians(360));
  arc(x+250,y+200,60,60,radians(225),radians(315));
  arc(x+250,y+200,60,60,radians(180),radians(225));
  //body
  stroke(0,0,0);
  strokeWeight(3);
  fill(#08CB3E);
  rect(x+200,y+200,100,100,20);
  strokeWeight(7);
  stroke(#3C8E52);
  line(x+220,y+204,x+220,y+296);
  line(x+250,y+204,x+250,y+296);
  line(x+280,y+204,x+280,y+296);
  //face
  fill(0,0,0);
  noStroke();
  ellipse(x+231,y+227,27,27);
  ellipse(x+269,y+227,27,27);
  ellipse(x+250,y+255,20,20);
}

