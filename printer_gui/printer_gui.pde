/////////////////////////////////////////////////////
// GRAPHIC USER INTERFACE FOR 3D FOOD PRINTER
// Design Fictions and Imagined Futures
// M. Yvonne Hidle
/////////////////////////////////////////////////////


/////////////////////////////////////////////////////
// GLOBAL VARIABLES
/////////////////////////////////////////////////////
float barS;
float barS2;
float buttonW;
float buttonH;
float buttonW2;
float buttonH2;
float iconSpacing;
float homeSize;
float infoSize;
float boxW;
float boxH;
float boxSp;

PShape home;
PShape bright;
PShape info;

boolean myRecipes;
boolean selectRecipe1;

Navigation getNavigation;
Recipes getRecipes;
/////////////////////////////////////////////////////


/////////////////////////////////////////////////////
// INTIALIZE
/////////////////////////////////////////////////////
void setup()
{
  size(1280,800);
  background(200);
  smooth();
  noStroke();
  textAlign(CENTER, CENTER);
  textSize(25);
  shapeMode(CENTER);
  
  // declare variables here
  barS = 150;
  barS2 = barS/2;
  buttonW = 320;
  buttonH = 75;
  buttonW2 = buttonW/2;
  buttonH2 = buttonH/2;
  iconSpacing = 70;
  homeSize = 70;
  infoSize = 65;
  boxW = 231;
  boxH = 460;
  boxSp = 20;
  
  myRecipes = false;
  selectRecipe1 = false;
  
  home = loadShape("home.svg");
  bright = loadShape("brightness.svg");
  info = loadShape("info.svg");
  
  getNavigation = new Navigation();
  getRecipes = new Recipes();
}
/////////////////////////////////////////////////////


/////////////////////////////////////////////////////
// THE TABLE OF CONTENTS
/////////////////////////////////////////////////////
void draw()
{
  background(200);
  getNavigation.show();
  getScreen();
  
  println(frameRate);
}
/////////////////////////////////////////////////////


/////////////////////////////////////////////////////
// WELCOME SCREEN
/////////////////////////////////////////////////////
void getScreen()
{  
  // go to myrecipes
  if(myRecipes == true)
  {
    getRecipes.myRecipes();
  }
  else if(selectRecipe1 == true)
  {
    getRecipes.processingCatFood();
  }
  else
  {
    getRecipes.myWelcome();
  }
}
/////////////////////////////////////////////////////


/////////////////////////////////////////////////////
// WE ONLY WANT TO CLICK ONCE
/////////////////////////////////////////////////////
void mousePressed()
{
  // setup the booleans
  if(mouseX > 0 && mouseX < buttonW && mouseY > buttonH && mouseY < buttonH*2)
  {
    myRecipes = true;
    selectRecipe1 = false;
  }
  else if(mouseX > boxSp*6+boxW*4+15 && mouseX < boxSp*6+boxW*5+15 && mouseY > barS+boxSp*2+60 && mouseY < barS+boxSp*2+80)
  {
    myRecipes = false;
    selectRecipe1 = true;
  }
  else
  {
    myRecipes = false;
    selectRecipe1 = false;
  }
}
/////////////////////////////////////////////////////
