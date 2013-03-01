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
  
  // declare variables here
  barS = 150;
  barS2 = barS/2;
}
/////////////////////////////////////////////////////


/////////////////////////////////////////////////////
// THE TABLE OF CONTENTS
/////////////////////////////////////////////////////
void draw()
{
  background(200);
  drawNavigation();
  screenWelcome();
  
  println(frameRate);
}
/////////////////////////////////////////////////////


/////////////////////////////////////////////////////
// STATIC NAVIGATION, DOES NOT CHANGE
/////////////////////////////////////////////////////
void drawNavigation()
{
  // local variables
  int minutes = minute();
  int hours = hour();
  float buttonW = 320;
  float buttonH = 75;
  float buttonW2 = buttonW/2;
  float buttonH2 = buttonH/2;
  
  // main boxes
  pushStyle();
    fill(51);
    // top bar
    rect(0,0,width,barS);
    // bottom bar
    rect(0,height-barS,width,barS);
  popStyle();
  
  // navigation buttons
  pushStyle();
    fill(51);
    stroke(70);
    strokeWeight(1);
    
    // printer settings
    pushStyle();
      if(mouseX > 0 && mouseX < buttonW && mouseY > 0 && mouseY < buttonH)
      {
        fill(100);
        rect(0,0,buttonW,buttonH);
        fill(141,198,63);
      }
      else
      {
        fill(51);
        rect(0,0,buttonW,buttonH);  
        fill(100);
      }
      text("PRINTERsettings",buttonW2,buttonH2);
    popStyle();
    
    // ink levels
    pushStyle();
      if(mouseX > buttonW && mouseX < buttonW*2 && mouseY > 0 && mouseY < buttonH)
      {
        fill(100);
        rect(buttonW,0,buttonW,buttonH);
        fill(141,198,63);
      }
      else
      {
        fill(51);
        rect(buttonW,0,buttonW,buttonH);
        fill(100);
      }
      text("INKlevels",buttonW2*3,buttonH2);
    popStyle();
    
    // recent prints
    pushStyle();
      if(mouseX > buttonW*2 && mouseX < buttonW*3 && mouseY > 0 && mouseY < buttonH)
      {
        fill(100);
        rect(buttonW*2,0,buttonW,buttonH);
        fill(141,198,63);
      }
      else
      {
        fill(51);
        rect(buttonW*2,0,buttonW,buttonH);
        fill(100);
      }
      text("RECENTprints",buttonW2*5,buttonH2);
    popStyle();
    
    // printer status
    pushStyle();
      if(mouseX > buttonW*3 && mouseX < buttonW*4 && mouseY > 0 && mouseY < buttonH)
      {
        fill(100);
        rect(buttonW*3,0,buttonW,buttonH);
        fill(141,198,63);
      }
      else
      {
        fill(51);
        rect(buttonW*3,0,buttonW,buttonH);
        fill(100);
      }
      text("PRINTERstatus",buttonW2*7,buttonH2);
    popStyle();
    
    // my recipes
    pushStyle();
      if(mouseX > 0 && mouseX < buttonW && mouseY > buttonH && mouseY < buttonH*2)
      {
        fill(100);
        rect(0,buttonH,buttonW,buttonH);
        fill(141,198,63);
      }
      else
      {
        fill(51);
        rect(0,buttonH,buttonW,buttonH);
        fill(100);
      }
      text("MYrecipes",buttonW2,buttonH2*3);
    popStyle();

    // upload recipes
    pushStyle();
      if(mouseX > buttonW && mouseX < buttonW*2 && mouseY > buttonH && mouseY < buttonH*2)
      {
        fill(100);
        rect(buttonW,buttonH,buttonW,buttonH);
        fill(141,198,63);
      }
      else
      {
        fill(51);
        rect(buttonW,buttonH,buttonW,buttonH);
        fill(100);
      }
      text("UPLOADrecipes",buttonW2*3,buttonH2*3);
    popStyle();

    // shop recipes
    pushStyle();
      if(mouseX > buttonW*2 && mouseX < buttonW*3 && mouseY > buttonH && mouseY < buttonH*2)
      {
        fill(100);
        rect(buttonW*2,buttonH,buttonW,buttonH);
        fill(141,198,63);
      }
      else
      {
        fill(51);
        rect(buttonW*2,buttonH,buttonW,buttonH);
        fill(100);
      }
      text("SHOPrecipes",buttonW2*5,buttonH2*3);
    popStyle();

    // shop inks
    pushStyle();
      if(mouseX > buttonW*3 && mouseX < buttonW*4 && mouseY > buttonH && mouseY < buttonH*2)
      {
        fill(100);
        rect(buttonW*3,buttonH,buttonW,buttonH);
        fill(141,198,63);
      }
      else
      {
        fill(51);
        rect(buttonW*3,buttonH,buttonW,buttonH);
        fill(100);
      }
      text("SHOPinks",buttonW2*7,buttonH2*3);
    popStyle();
    
  popStyle();
  
  // static text
  pushStyle();
    noStroke();
    fill(255);
    textSize(50);
    text(hours + ":" + nf(minutes,2), width/2,height-barS2);
  popStyle();
}
/////////////////////////////////////////////////////


/////////////////////////////////////////////////////
// WELCOME SCREEN
/////////////////////////////////////////////////////
void screenWelcome()
{
  pushStyle();
    noStroke();
    fill(0);
    textSize(40);
    // printer version
    text("G.E. Compact Food Printer A2.0b", width/2, barS+100);
    // welcome text
    textSize(30);
    text("Hello! What would you like to eat today?", width/2, barS+150);
  popStyle();
}
/////////////////////////////////////////////////////


/////////////////////////////////////////////////////
// MY RECIPE SCREEN - HOME
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////


/////////////////////////////////////////////////////
// MY RECIPE SCREEN - CAT FOODS
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////


/////////////////////////////////////////////////////
// MY RECIPE SCREEN - FANCY FEAST
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////


/////////////////////////////////////////////////////
// PROCESING FANCY FEAST
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////
