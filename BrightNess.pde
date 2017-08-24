final class BrightNess extends ColorSlider{
     float color_;
     
     BrightNess(int colorMode,int positionX,int positionY,int sliderW,int sliderH){
       this.colorMode = colorMode;
       this.positionX = positionX;
       this.positionY = positionY;
       this.sliderWidth = sliderW;
       this.sliderHeight = sliderH;
     }
  
     void init(){}
     
     void createColor(){
       float lenghtColor = map(sliderWidth,0,sliderWidth,0,256);
        for(int i=(int)lenghtColor;i>0;i--){
          stroke(i);
          line(positionX+i,positionY,positionX+i,sliderHeight+positionY);
        }
     
     }
     
     void updateSlider(){
       createColor();
       iconCurSorOnslider((int)mouseOnSlider(),positionY);
     }
     
     void iconCurSorOnslider(int positionX,int positionY){
      //noStroke();
      stroke(255);
      float start =this.positionX+positionX; //eazy reading (old position + new position) from MousePressed
      int w =15;
      int h = 40;
        fill(color_); 
        setColor(this.color_);
        rect(start-w/2,positionY-4,w,h);
  }
  
   private float mouseOnSlider(){
       if(mousePressed && mouseX>positionX && mouseX< ((positionX+sliderWidth)-3) && mouseY>positionY
    && mouseY<positionY+sliderHeight){  
      float target = mouseX - positionX;  
      color_=map(target,0.0,sliderWidth,0.0,256.0);
      pickColor();
      
    }
    return color_;
  }
  
    private void pickColor(){
       int r =(int)red(get().pixels[mouseX + mouseY * width]);
       int g = (int)green(get().pixels[mouseX+mouseY*width]);
       int b = (int)blue(get().pixels[mouseX+mouseY*width]);
       setColor(r,g,b);
  }
}