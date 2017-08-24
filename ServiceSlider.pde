interface ServiecSlider{
  
public void init();
public void updateSlider();
public void createColor();
public void setWidth(int w);
public void setHeight(int h);
public void setPositionX(int x);
public void setPositionY(int y);
public void setRed(int red);
public void setGreen(int green);
public void setBlue(int blue);
public void setHue(float hue);
public void setSaturation(float saturation);
public void setBrightness(float brightness);
public void setColor(float color_);
public void setColor(int red,int green,int blue);

public int getWidth();
public int getHeight();
public int getPositionX();
public int getPositionY();
public float getColor();
public float getHue();
public float getBrightness();
public float getSaturation();
public int getRed();
public int getGreen();
public int getBlue();
}