import oscP5.*;
import netP5.*;

OscP5 oscP5;

float posX,posY,scale,oriX,oriY,oriZ,mouthX,mouthY,eyeBLeft,eyeBRight,eyeLeft,eyeRight,jaw,nostrils;
float posObjX, posObjY,scaleObj,oriObjX,oriObjY,oriObjZ;

void setup() {
  size(800,400,P3D);
  frameRate(25);
  oscP5 = new OscP5(this,8338);
  oscP5.plug(this,"position","/pose/position");
  oscP5.plug(this,"scale","/pose/scale");
  oscP5.plug(this,"orientation","/pose/orientation");
  oscP5.plug(this,"mouthWidth","/gesture/mouth/width");
  oscP5.plug(this,"mouthHeight","/gesture/mouth/height");
  oscP5.plug(this,"eyebrowLeft","/gesture/eyebrow/left");
  oscP5.plug(this,"eyebrowRight","/gesture/eyebrow/right");
  oscP5.plug(this,"eyeLeft","/gesture/eye/left");
  oscP5.plug(this,"eyeRight","/gesture/eye/right");
  oscP5.plug(this,"jaw","/gesture/jaw");
  oscP5.plug(this,"nostrils","/gesture/nostrils");
}


public void position (float theA, float theB) {
  posX = theA;
  posY = theB;  
}

public void scale(float theA) {
  scale = theA; 
}

public void orientation(float theA,float theB,float theC) {
  oriX = theA;
  oriY = theB;
  oriZ = theC;
}

public void mouthWidth(float theA) {
  mouthX = theA;  
}

public void mouthHeight(float theA) {
  mouthY = theA;  
}

public void eyebrowLeft(float theA) {
  eyeBLeft = theA;  
}

public void eyebrowRight(float theA) {
  eyeBRight = theA;  
}

public void eyeRight(float theA) {
  eyeRight = theA;  
}

public void eyeLeft(float theA) {
  eyeLeft = theA;  
}

public void jaw(float theA) {
  jaw = theA;  
}

public void nostrils(float theA) {
  nostrils = theA;  
}

void draw() {
  background(0);
  fill(255);
  text("Position X: "+posX,20,20);
  text("Position Y: "+posY,20,40);
  text("Scale: "+scale,20,60);
  text("Orientation X: "+oriX,20,80);
  text("Orientation Y: "+oriY,20,100);
  text("Orientation Z: "+oriZ,20,120);
  text("Mouth width: "+mouthX,20,140);
  text("Mouth height: "+mouthY,20,160);
  text("Eyebrow Left: "+eyeBLeft,20,180);
  text("Eyebrow Right: "+eyeBRight,20,200);
  text("Eye Left: "+eyeLeft,20,220);
  text("Eye Right: "+eyeRight,20,240);
  text("Jaw: "+jaw,20,260);
  text("Nostrils Flate: "+nostrils,20,280);
  
  posObjX = map(posX,0,1280,0,width);
  posObjY = map(posY,0,720,0,height);
  scaleObj = map(scale,0,6,0,75);
  translate(posObjX,posObjY);
  rotateX(oriX);
  rotateY(oriY);
  rotateZ(oriZ);
  fill(#E1FF03);
  stroke(#0000FF);
  box(scaleObj,scaleObj,scaleObj);
}
