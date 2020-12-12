class Spaceship extends Floater 
{
  public Spaceship() {   
    corners = 4;
    xCorners = new int[]{-8, 16 , -8, -2};
    yCorners = new int[]{-8, 0 , 8, 0};
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0; 
    myPointDirection = (int)(Math.random()*360);
    myColor = 255;
  }
  public void setXspeed (double x) {
    myXspeed = x;
  }
  public void setYspeed (double y) {
    myYspeed = y;
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public double getXspeed() {
    return myXspeed;
  }
  public double getYspeed() {
    return myYspeed;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
