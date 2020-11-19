class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  public void show()
  {
    fill((int)(Math.random()*26)+230, 255, (int)(Math.random()*181)+75);//slightly changes the color of the star to a yellowish color
    ellipse(myX, myY, (int)(Math.random()*3)+2, (int)(Math.random()*3)+2);//with the array constantly changing the sizes of the stars, it allows the stars to *flicker*
  }
}
