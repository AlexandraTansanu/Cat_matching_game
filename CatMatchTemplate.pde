import java.util.Collections;

ArrayList <Integer> moves;
ArrayList <Cat> cats;
int numpics = 8;
final int picwidth = 100;
int lastCat;
int clicks;

void setup()
{
  size(400,400);
  cats = new ArrayList<Cat>();
  moves = new ArrayList<Integer>();
  for (int p = 0; p < numpics; p++)
  {
    String filename="picture_" + p + ".jpg";
    PImage readImage = loadImage(filename);
    readImage.resize(picwidth, picwidth);
    Cat tmpCat1 = new Cat(readImage, p);
    Cat tmpCat2 = new Cat(readImage, p);
    cats.add(tmpCat1);
    cats.add(tmpCat2);
  } 
  Collections.shuffle(cats);
  lastCat = -1;
  clicks = 0;
}

void draw()
{
  background(0);
  for (int p = 0; p < cats.size(); p++)
  {
    cats.get(p).draw(p%4, p/4);
  }
}

void mouseClicked()   // num of clicks checks for matches 
{
  int theCat = -1;
  for (int p=0; p<cats.size(); p++)
  {
    if (PointInside(mouseX, mouseY, p%4*picwidth, p/4*picwidth, picwidth, picwidth))
      theCat=p;
  }
 
  if (theCat!=-1)
  {
    if (!cats.get(theCat).frozen && cats.get(theCat).on==false) //not visible
    {
      cats.get(theCat).on=true;
      moves.add(theCat);
      clicks++;
      
      if (clicks==2)
      {
        int first = moves.get(0);
        int second = moves.get(1);
        
        if (cats.get(first).catNum == cats.get(second).catNum)
        {
          cats.get(first).frozen = true;
          cats.get(second).frozen = true;
          clicks = 0;
          // this allows us to clear the array list
          moves.clear();
        }
        
      }
      else
      if (clicks==3)
      {
          for (int p=0; p<cats.size(); p++)
          {
            if (!cats.get(p).frozen)
             cats.get(p).on = false;
          }
          clicks=0;
          moves.clear();
      }
    }
  }     
}

boolean PointInside(int PX, int PY, int RX, int RY, int RW, int RH)
{
  if ((PX>=RX && PX<=RX+RW) && (PY>=RY && PY<=RY+RH))
    return (true);
  else
    return (false);
}
