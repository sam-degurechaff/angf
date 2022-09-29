PImage[] gif;
int numberofframes;
int f;
void setup() {
  numberofframes=59;
  gif=new PImage[numberofframes];

  int i=1;
  while (i<numberofframes) {
    gif[i]=loadImage("frame_"+i+"_delay-0.03s.gif");
    i=i+i;
  }
  size(1000, 1000, FX2D);
}
void draw() {

  image(gif[f], 0, 0, width, height);
 if(frameCount%10==0) f=f+1;
  if (f==numberofframes)f=0;
}
