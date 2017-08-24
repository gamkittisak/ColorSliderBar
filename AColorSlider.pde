
Hue c;
Saturation c2;
BrightNess c3;



void setup(){
  size(500,500);
  colorMode(HSB);
  ColorSliders cs = new ColorSliders();
  c = (Hue)cs.getColorSliders("hue",HSB,150,50,255,30);
  c2 = (Saturation)cs.getColorSliders("saturation",HSB,150,110,255,30);
  c3 = (BrightNess)cs.getColorSliders("brightness",GRAY,150,160,255,30);
  
}
void draw(){
  background(123,58,105);
  c.updateSlider();
  c2.setColor(c.getColor());
  c2.setBrightness(c3.getColor());
  c2.updateSlider();
  c3.updateSlider();
  fill(c.getColor(),c2.getColor(),c3.getColor());
  rect(0,0,50,50);
}

/*
void setup(){
  size(500,500);
  colorMode(HSB);
   c = new Hue(HSB,150,50,255,30);
   c2 = new Saturation(HSB,150,110,255,30);
   c3 = new BrightNess(GRAY,150,160,255,30);

   
}
void draw(){
  background(123,80,120);
  c.updateSlider();
  c2.setColor(c.getColor());
  c2.setBrightness(c3.getColor());
  c2.updateSlider();
  c3.updateSlider();
  
  
  fill(c.getColor(),c2.getColor(),c3.getColor());
  rect(0,0,50,50);
}
*/