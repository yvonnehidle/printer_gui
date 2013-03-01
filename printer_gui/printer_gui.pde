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
float boxW;
float boxH;
float boxSp;

boolean myRecipes;
boolean selectRecipe1;

PImage catfood;

Navigation getNavigation;
Recipes getRecipes;
/////////////////////////////////////////////////////


/////////////////////////////////////////////////////
// INTIALIZE
/////////////////////////////////////////////////////
void setup()
{
  size(1280,800);
  orientation(LANDSCAPE);
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
  boxW = 231;
  boxH = 530;
  boxSp = 20;
  
  catfood = loadImage("codshrimp.jpg");
  
  myRecipes = false;
  selectRecipe1 = false;
  
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
  // go to the food processing page
  else if(selectRecipe1 == true)
  {
    getRecipes.processingCatFood();
  }
  // else go home
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
  // selected the recipe tab
  if(mouseX > 0 && mouseX < buttonW && mouseY > buttonH && mouseY < buttonH*2)
  {
    myRecipes = true;
    selectRecipe1 = false;
  }
  // selected a recipe in the recipe tab
  else if(mouseX > boxSp*6+boxW*4 && mouseX < boxSp*6+boxW*5 && mouseY > barS+boxSp*2-100 && mouseY < barS+boxSp*2+100)
  {
    myRecipes = false;
    selectRecipe1 = true;
  }
  // else go home
  else
  {
    myRecipes = false;
    selectRecipe1 = false;
  }
}
/////////////////////////////////////////////////////
