PImage testTubes;
PImage explosionImg;
PImage successImg;
import processing.sound.*;
SoundFile potassiumDichromate;
SoundFile potassiumChromate;
SoundFile nickelSulfate;
SoundFile copperHydroxide;
SoundFile potassiumPermanganate;
boolean isAvailable = true;

void setup()
{
  fullScreen();
  //image of explosion and testubes
  testTubes = loadImage("testtube.png");
  testTubes.resize(width/2, height/2);
  explosionImg = loadImage("explosion.jpg");
  explosionImg.resize(width, height);
  successImg = loadImage("success.jpg");
  successImg.resize(width, height);

  //sounds
  potassiumDichromate = new SoundFile(this, "potassiumdichromate.wav");      //w
  potassiumChromate = new SoundFile(this, "potassiumchromate.wav");          //a
  nickelSulfate = new SoundFile(this, "nickelsulfate.wav");                  //s
  copperHydroxide = new SoundFile(this, "copper2hydroxide.wav");             //d
  potassiumPermanganate = new SoundFile(this, "potassiumpermanganate.wav"); //f
}

void draw()
{
  background(0);
  image(testTubes, width/4, height/4);
  if (isAvailable = true && keyPressed && key == '1') // Potassium Dichromate
  {
    isAvailable = false;
    potassiumDichromate.play();
  }
  if (key == 'w')
  {
    image(successImg, 0, 0);
    image(testTubes, width/4, height/4);
  }

  if (isAvailable = true && keyPressed && key == '2')// Potassium Chromate
  {
    isAvailable = false;
    potassiumChromate.play();
  }
  if (key == 'a')
  {
    image(successImg, 0, 0);
    image(testTubes, width/4, height/4);
  }

  if (isAvailable = true && keyPressed && key == '3')// Nickel Sulfate
  {
    isAvailable = false;
    nickelSulfate.play();
  }

  if (key == 's')
  {
    image(successImg, 0, 0);
    image(testTubes, width/4, height/4);
  }
  if (isAvailable = true && keyPressed && key == '4')// Copper Hydroxide
  {
    isAvailable = false;
    copperHydroxide.play();
  }

  if (key == 'd')
  {
    image(successImg, 0, 0);
    image(testTubes, width/4, height/4);
  }
  if (isAvailable = true && keyPressed && key == '5')// Potassium Permanganate
  {
    isAvailable = false;
    potassiumPermanganate.play();
  }
  if (key == 'f')
  {
    image(successImg, 0, 0);
    image(testTubes, width/4, height/4);
  }
}