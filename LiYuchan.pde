// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

//《扫"地"机器人》李育婵 2020.3
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;


float x = 100;
float y = 100;
float xspeed = 5.5;
float yspeed = 5;

void setup() {
  size(1280, 800);
  smooth();
  frameRate(32.0);
  minim=new Minim(this);
  song=minim.loadFile("Quiet.mp3");
  song.loop();
  background(100, 225, 100);
}

void draw() {
  float songIntensity=song.mix.level();
  x = x + xspeed*songIntensity*6;
  y = y + yspeed*songIntensity*6;

  if ((x > width) || (x <0)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }
  stroke(0);
  strokeWeight(2);

  target(x, y, 5, 38);

  target2(x+random(-500, 500), y+random(-500, 500), 3, random(8, 20));
  target2(x+random(-500, 500), y+random(-500, 500), 3, 18);


  if (mousePressed)
  {
    float xdist=x-mouseX;
    float ydist=y-mouseY;
    x-=xdist*0.1*songIntensity;
    y-=ydist*0.1*songIntensity;
    target(x, y, 8, 48);
  }
}
