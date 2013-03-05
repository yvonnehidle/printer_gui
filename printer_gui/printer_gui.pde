/////////////////////////////////////////////////////
// GRAPHIC USER INTERFACE FOR 3D FOOD PRINTER
// Design Fictions and Imagined Futures
// M. Yvonne Hidle
/////////////////////////////////////////////////////


/////////////////////////////////////////////////////
// GLOBAL VARIABLES
/////////////////////////////////////////////////////
// my floats-zees
  float barS;
  float barS2;
  float buttonW;
  float buttonH;
  float buttonW2;
  float buttonH2;
  float boxW;
  float boxH;
  float boxSp;
// my int-zees
  int startTimer;
  int startTimer2;
// my boolean-zees
  boolean myRecipes;
  boolean selectRecipe1;
  boolean selectRecipe2;
  boolean processRecipe;
  boolean chickenYes;
  boolean catfoodYes;
  boolean atHome;
// str strings!
  String printStatus;
  String printStatus2;
// and images too
  PImage catfood;
  PImage chicken;
// time for classes!
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
  // my floats-zees
    barS = 150;
    barS2 = barS/2;
    buttonW = 320;
    buttonH = 75;
    buttonW2 = buttonW/2;
    buttonH2 = buttonH/2;
    boxW = 231;
    boxH = 530;
    boxSp = 20;
  // my int-zees
    startTimer = 0;
    startTimer2 = 0;
  // my boolean-zees
    myRecipes = false;
    selectRecipe1 = false;
    selectRecipe2 = false;
    processRecipe = false;
    chickenYes = false;
    catfoodYes = false;
    atHome = true;
  // str strings!
    printStatus = "Print Shrimp & Cod";
    printStatus2 = "Print Rotisserie Chicken";
  // and images too
    catfood = loadImage("codshrimp.jpg");
    chicken = loadImage("chicken.png");
  // time for classes!
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
  
  // issues issues issues
  //println(startTimer);
  //println(catfoodYes);
  //println(chickenYes);
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
  // go to catfood page
  else if(selectRecipe1 == true)
  {
    getRecipes.showCatFood();
  }
  // go to chicken page
  else if(selectRecipe2 == true)
  {
    getRecipes.showChicken();
  }
  // else go home
  else if(atHome == true)
  {
    getRecipes.myWelcome();
  }
  
  // process the food
  if(processRecipe == true && catfoodYes == true)
  {
    getRecipes.processCatFood();
  }
  else if(processRecipe == true && chickenYes == true)
  {
    getRecipes.processChicken();
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
    selectRecipe2 = false;
    processRecipe = false;
    chickenYes = false;
    catfoodYes = false;
    atHome = false;
  }
  // selected the cat food recipe
  else if(mouseX > boxSp*6+boxW*4 && mouseX < boxSp*6+boxW*5 && mouseY > barS+boxSp*2+70-20 && mouseY < barS+boxSp*2+70+20)
  {
    myRecipes = false;
    selectRecipe1 = true;
    selectRecipe2 = false;
    processRecipe = false;
    chickenYes = false;
    catfoodYes = true;
    atHome = false;
  }
  // select the chicken recipe
  else if(mouseX > boxSp*4+boxW*2 && mouseX < boxSp*4+boxW*3 && mouseY > barS+boxSp*2+370-20 && mouseY < barS+boxSp*2+370+20)
  {
    myRecipes = false;
    selectRecipe1 = false;
    selectRecipe2 = true;
    processRecipe = false;
    chickenYes = true;
    catfoodYes = false;
    atHome = false;
  }
  // hit the print button (catfood)
  else if(mouseX > boxW*3 && mouseX < boxW*3+250 && mouseY > barS+boxSp*2-30 && mouseY < barS+boxSp*2+30 && catfoodYes == true)
  {
    myRecipes = false;
    selectRecipe1 = false;
    selectRecipe2 = false;
    processRecipe = true;
    atHome = false;
    startTimer=millis();
  }
  // hit the print button (chicken)
  else if(mouseX > boxW*3 && mouseX < boxW*3+250 && mouseY > barS+boxSp*2-30 && mouseY < barS+boxSp*2+30 && chickenYes == true)
  {
    myRecipes = false;
    selectRecipe1 = false;
    selectRecipe2 = false;
    processRecipe = true;
    atHome = false;
    startTimer2=millis();
  }
  // else go home
  else
  {
    startTimer=0;
  }
}
/////////////////////////////////////////////////////
