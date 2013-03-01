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
  // local variables
  int minutes = minute();
  int hours = hour();
  
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
  
  // home icon
  pushStyle();
    if(mouseX > iconSpacing-homeSize/2 && mouseX < iconSpacing+homeSize/2 && mouseY > height-barS2-homeSize && mouseY < height-barS2+homeSize)
    {
      home.enableStyle();
    }
    else
    {
      fill(100);
      home.disableStyle();
    }
    shape(home,iconSpacing,height-barS2,homeSize,homeSize);
  popStyle();
  
  // brightness icon
  pushStyle();
    if(mouseX > iconSpacing*2.5-homeSize/2 && mouseX < iconSpacing*2.5+homeSize/2 && mouseY > height-barS2-homeSize && mouseY < height-barS2+homeSize)
    {
      bright.enableStyle();
    }
    else
    {
      fill(100);
      bright.disableStyle();
    }
    shape(bright,iconSpacing*2.5,height-barS2,homeSize,homeSize);
  popStyle();
  
  // info icon
  pushStyle();
    if(mouseX > iconSpacing*4-infoSize/2 && mouseX < iconSpacing*4+infoSize && mouseY > height-barS2-infoSize && mouseY < height-barS2+infoSize)
    {
      info.enableStyle();
    }
    else
    {
      fill(100);
      info.disableStyle();
    }
    shape(info,iconSpacing*4,height-barS2,infoSize,infoSize);
  popStyle();
  
}
/////////////////////////////////////////////////////

}
