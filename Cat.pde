class Cat
{
  PImage pic;
  int catNum;
  boolean on;
  boolean frozen;
  
  Cat(PImage p, int num)
  {
    pic = p;
    // cat is not on and not frozen by default
    on = false;
    frozen = false;
    // has a number label to be matched with its twin
    catNum = num;
  }
  
  void draw(int x, int y)
  {
    if (!on)
      tint(0);
    else
      noTint();
      
    image(pic, x * picwidth, y * picwidth);
    stroke(255);
    noFill();
    rect(x * picwidth, y * picwidth, picwidth, picwidth);
  }
}
