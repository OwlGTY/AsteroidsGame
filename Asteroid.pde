class Asteroid extends Floater
{
   private double rotSpeed = 3; //randomly + or -
   public Asteroid(){
    corners = 6;
    xCorners = new int[]{-11, 7 , 13, 6, -11, -5};
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = Math.random();
    myYspeed = Math.random(); 
    myPointDirection = (double)Math.random()*360;
    myColor = 255;
   }
   public void move(){
     turn(rotSpeed);
     super.move();
   }
  public double getMyCenterX() {
    return myCenterX;
  }
  public double getMyCenterY() {
    return myCenterY;
  }
}
