ArrayList <Asteroid> debris = new ArrayList <Asteroid>();
Spaceship bob = new Spaceship();//declares the spaceship
Star[] nightSky = new Star[200];//declares the array of stars
public void setup() 
{
  size(500,500);
  background(0);
  bob.accelerate(0.2);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();//declares each star within the array
  }
  for(int nI = 0; nI < 15; nI++) {
    debris.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  bob.move();//slightly moves the spaceship at the beginning
  bob.show();//initializes the spaceship
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();//initializes the array of stars
  }
  for (int h = 0; h < debris.size(); h++) {
  debris.get(h).move();
  debris.get(h).accelerate(.01);
  debris.get(h).show();
  if (dist((float)bob.myCenterX, (float)bob.myCenterY, (float)debris.get(h).getMyCenterX(), (float)debris.get(h).getMyCenterY()) < 20) {
    debris.remove(h);
  }
  }
}

public void keyPressed(){
  if(key == 'h'){//Stops the spaceship, puts the spaceship in a position in the space, and the direction is changed.
    bob.myXspeed = 0;
    bob.myYspeed = 0;
    bob.myCenterX = (int)(Math.random()*400)+50;
    bob.myCenterY = (int)(Math.random()*400)+50;
    bob.myPointDirection = (int)(Math.random()*360);
  }
  if(key == 'w'){//moves the spaceship toward where it's facing
    bob.accelerate(0.1);
    bob.move();
  }
  if(key == 'a'){//turns left
    bob.turn(-5);
  }
  if(key == 'd'){//turns right
    bob.turn(5);
  }
  if(key == 's'){//accelerates the spaceship backwards
    bob.accelerate(-0.1);
    bob.move();
  }
}
