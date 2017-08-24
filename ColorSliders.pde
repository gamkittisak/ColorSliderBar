
class ColorSliders<T>{
  public T getColorSliders(String titleClass,int colorMode,int positionX,int positionY,int sliderW,int sliderH){
    T t =null;
    if(titleClass.equals("hue"))
        t = (T)new Hue(colorMode,positionX,positionY,sliderW,sliderH);
    if(titleClass.equals("saturation"))
        t = (T)new Saturation(colorMode,positionX,positionY,sliderW,sliderH);
    if(titleClass.equals("brightness"))
        t = (T)new BrightNess(colorMode,positionX,positionY,sliderW,sliderH);
    return t;
  }
  
}