PImage testTubes;
PImage explosionImg;
import processing.sound.*;
SoundFile potassiumDichromate;
SoundFile potassiumChromate;
SoundFile nickelSulfate;
SoundFile copperHydroxide;
SoundFile potassiumPermanganate;
boolean isAvailable = true;
float value;

void setup()
{
  fullScreen();
  //image of explosion and testubes
  testTubes = loadImage("testtube.png");
  testTubes.resize(width/2, height/2);
  explosionImg = loadImage("explosion.jpg");
  explosionImg.resize(width, height);

  //sounds
  potassiumDichromate = new SoundFile(this, "potassiumdichromate.wav");
  potassiumChromate = new SoundFile(this, "potassiumchromate.wav");
  nickelSulfate = new SoundFile(this, "nickelsulfate.wav");
  copperHydroxide = new SoundFile(this, "copper2hydroxide.wav");
  potassiumPermanganate = new SoundFile(this, "potassiumpermanganate.wav");
  value = random(1, 5);
}

void draw()
{
   value = random(0, 6);
  if (value == 1 && isAvailable == true)
  {
    /*  if (isAvailable = true && keyPressed && key == 'a')
     {
     */    isAvailable = false;
    potassiumDichromate.play();
  }

  /* if (isAvailable = true && keyPressed && key == 's')
   {
   */
  if (value == 2 && isAvailable == true)
  {
    isAvailable = false;
    potassiumChromate.play();
  }
  if (value == 3 && isAvailable == true)
  {
    /* if (isAvailable = true && keyPressed && key == 'd')
     {*/
    isAvailable = false;
    nickelSulfate.play();
  }
  if (value == 4 && isAvailable == true)
  {
    /*if (isAvailable = true && keyPressed && key == 'f')
     {*/
    isAvailable = false;
    copperHydroxide.play();
  }
  if (value == 5 && isAvailable == true)
  {
    /* if (isAvailable = true && keyPressed && key == 'g')
     {*/
    isAvailable = false;
    potassiumPermanganate.play();
    // delay(100);
    if (mousePressed == false)
    {
      image(explosionImg, 0, 0);
    }
  } 
  image(testTubes, width/4, height/4);
}