class Navigation
{

  
Navigation()
{
}


/////////////////////////////////////////////////////
// STATIC NAVIGATION, DOES NOT CHANGE
/////////////////////////////////////////////////////
void show()
{
  // main boxes
  pushStyle();
    fill(0);
    // top bar
    rect(0,0,width,barS);
    // bottom bar
    rect(0,height-barS2,width,barS2);
  popStyle();
  
  // navigation buttons
  pushStyle();
    fill(0);
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
        fill(0);
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
        fill(0);
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
        fill(0);
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
        fill(0);
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
      else if(myRecipes == true || selectRecipe1 == true || selectRecipe2 == true || processRecipe == true)
      {
        fill(100);
        rect(0,buttonH,buttonW,buttonH);
        fill(141,198,63);
      }
      else
      {
        fill(0);
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
        fill(0);
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
        fill(0);
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
        fill(0);
        rect(buttonW*3,buttonH,buttonW,buttonH);
        fill(100);
      }
      text("SHOPinks",buttonW2*7,buttonH2*3);
    popStyle();
    
  popStyle();  
}
/////////////////////////////////////////////////////

}
