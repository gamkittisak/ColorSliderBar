class Hue extends ColorSlider{
  
  //private MouseEvent event;
  float color_;
  Hue(int colorMode,int positionX,int positionY,int sliderW,int sliderH){
   this.colorMode = colorMode;
   this.positionX = positionX;
   this.positionY = positionY;
   this.sliderWidth = sliderW;
   this.sliderHeight = sliderH;
  }
 /*
   ColorSliderHue(int colorMode,int positionX,int positionY,int sliderW,int sliderH,MouseEvent event){
   this.colorMode = colorMode;
   this.positionX = positionX;
   this.positionY = positionY;
   this.sliderWidth = sliderW;
   this.sliderHeight = sliderH;
   this.event = event;
  }
 */ 
  //OverrideMethod
  public void init(){
    
    
  };
  
  //OverrideMethod
  public void updateSlider(){
    createColor();
    iconCurSorOnslider((int)mouseOnSlider(),positionY);
  }
  
  //for 
  private float mouseOnSlider(){
       if(mousePressed && mouseX>positionX && mouseX< ((positionX+sliderWidth)-3) && mouseY>positionY
    && mouseY<positionY+sliderHeight){  
      float target = mouseX - positionX;  
      color_=map(target,0.0,sliderWidth,0.0,256.0);
      pickColor();
      
    }
    return color_;
  }
  
  //this method for pick color when mousePressed on Colorslider
  private void pickColor(){
       int r =(int)red(get().pixels[mouseX + mouseY * width]);
       int g = (int)green(get().pixels[mouseX+mouseY*width]);
       int b = (int)blue(get().pixels[mouseX+mouseY*width]);
       setColor(r,g,b);
  }
  
  
  //OverrideMethod
  public void createColor(){
    //translate(positionX,positionY);
  float lenghtColor = map(sliderWidth,0,sliderWidth,0,256);
  for(int i=0;i<(int)lenghtColor;i++){
      stroke(i,saturation,brightness);
      line(positionX+i,positionY,positionX+i,sliderHeight+positionY);
    }
  }
  
  void iconCurSorOnslider(int positionX,int positionY){
      //noStroke();
      stroke(255);
      float start =this.positionX+positionX; //eazy reading (old position + new position) from MousePressed
      int w =15;
      int h = 40;
        fill(color_,255,255); 
        setColor(this.color_);
        rect(start-w/2,positionY-4,w,h);
  }
}