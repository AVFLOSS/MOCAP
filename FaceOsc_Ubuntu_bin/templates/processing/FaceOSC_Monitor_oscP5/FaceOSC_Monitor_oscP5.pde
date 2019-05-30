import oscP5.*;

OscP5 oscP5;

void setup() {
  size(400, 400);
  frameRate(25);
  oscP5 = new OscP5(this, 8338);
}


void draw() {
  //background(255);
}

void oscEvent(OscMessage theOscMessage) {
  
  if (theOscMessage.checkAddrPattern("/pose/position")==true) {
    if (theOscMessage.checkTypetag("ff")) {
      float firstValue = theOscMessage.get(0).floatValue();
      float secondValue = theOscMessage.get(1).floatValue();
      text("whatever",width/2,height/2);
      ellipse(width/2,height/2,20,20);
      print("### received an osc message /pose/position with typetag ff.");
      println(" values: "+firstValue+", "+secondValue);
      return;
    }
  }

  if (theOscMessage.checkAddrPattern("/pose/scale")==true) {
    if (theOscMessage.checkTypetag("f")) {
      float firstValue = theOscMessage.get(0).floatValue();
      print("### received an osc message /pose/scale with typetag f.");
      println(" values: "+firstValue);
      return;
    }
  }

  if (theOscMessage.checkAddrPattern("/pose/orientation")==true) {
    if (theOscMessage.checkTypetag("fff")) {
      float firstValue = theOscMessage.get(0).floatValue();
      float secondValue = theOscMessage.get(0).floatValue();
      float thirdValue = theOscMessage.get(0).floatValue();
      print("### received an osc message /pose/orientation with typetag fff.");
      println(" values: "+firstValue+","+secondValue+","+thirdValue);
      return;
    }
  }

  if (theOscMessage.checkAddrPattern("/gesture/mouth/width")==true) {
    if (theOscMessage.checkTypetag("f")) {
      float firstValue = theOscMessage.get(0).floatValue();
      print("### received an osc message /gesture/mouth/width with typetag f.");
      println(" values: "+firstValue);
      return;
    }
  }

  if (theOscMessage.checkAddrPattern("/gesture/mouth/height")==true) {
    if (theOscMessage.checkTypetag("f")) {
      float firstValue = theOscMessage.get(0).floatValue();
      print("### received an osc message /gesture/mouth/height with typetag f.");
      println(" values: "+firstValue);
      return;
    }
  }

  if (theOscMessage.checkAddrPattern("/gesture/eyebrow/left")==true) {
    if (theOscMessage.checkTypetag("f")) {
      float firstValue = theOscMessage.get(0).floatValue();
      print("### received an osc message /gesture/eyebrow/left with typetag f.");
      println(" values: "+firstValue);
      return;
    }
  }

  if (theOscMessage.checkAddrPattern("/gesture/eyebrow/right")==true) {
    if (theOscMessage.checkTypetag("f")) {
      float firstValue = theOscMessage.get(0).floatValue();
      print("### received an osc message /gesture/eyebrow/right with typetag f.");
      println(" values: "+firstValue);
      return;
    }
  }

  if (theOscMessage.checkAddrPattern("/gesture/eye/left")==true) {
    if (theOscMessage.checkTypetag("f")) {
      float firstValue = theOscMessage.get(0).floatValue();
      print("### received an osc message /gesture/eye/left with typetag f.");
      println(" values: "+firstValue);
      return;
    }
  }

  if (theOscMessage.checkAddrPattern("/gesture/eye/right")==true) {
    if (theOscMessage.checkTypetag("f")) {
      float firstValue = theOscMessage.get(0).floatValue();
      print("### received an osc message /gesture/eye/right with typetag f.");
      println(" values: "+firstValue);
      return;
    }
  }

  if (theOscMessage.checkAddrPattern("/gesture/jaw")==true) {
    if (theOscMessage.checkTypetag("f")) {
      float firstValue = theOscMessage.get(0).floatValue();
      print("### received an osc message /gesture/jaw with typetag f.");
      println(" values: "+firstValue);
      return;
    }
  }

  if (theOscMessage.checkAddrPattern("/gesture/nostrils")==true) {
    if (theOscMessage.checkTypetag("f")) {
      float firstValue = theOscMessage.get(0).floatValue();
      print("### received an osc message /gesture/nostrils with typetag f.");
      println(" values: "+firstValue);
      return;
    }
  }

  if (theOscMessage.checkAddrPattern("/found")==true) {
    if (theOscMessage.checkTypetag("i")) {
      float firstValue = theOscMessage.get(0).intValue();
      print("### received an osc message /found with typetag i.");
      println(" values: "+firstValue);
      return;
    }
  }
  
  println("### received an osc message. with address pattern "+theOscMessage.addrPattern()+" typetag "+ theOscMessage.typetag());
}
