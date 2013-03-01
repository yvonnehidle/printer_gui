class Recipes
{
  

Recipes()
{
}


/////////////////////////////////////////////////////
// WELCOME SCREEN
/////////////////////////////////////////////////////
void myWelcome()
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
void myRecipes()
{
  // local variables
  float boxW = 231;
  float boxH = 460;
  float boxSp = 20;
  
  // boxes
  pushStyle();
    stroke(240);
    strokeWeight(1);
    fill(230);
    // breakfast
    rect(boxSp, barS+boxSp, boxW, boxH);
    // lunch
    rect(boxSp*2+boxW, barS+boxSp, boxW, boxH);
    // dinner
    rect(boxSp*3+boxW*2, barS+boxSp, boxW, boxH);
    // snacks
    rect(boxSp*4+boxW*3, barS+boxSp, boxW, boxH);
    // cat foods
    rect(boxSp*5+boxW*4, barS+boxSp, boxW, boxH);
  popStyle();
  
  // category text
  pushStyle();
    noStroke();
    fill(0);
    textSize(25);
    textAlign(LEFT, CENTER);
    text("BREAKFAST", boxSp*2, barS+boxSp*2);
    text("LUNCH", boxSp*3+boxW, barS+boxSp*2);
    text("DINNER", boxSp*4+boxW*2, barS+boxSp*2);
    text("SNACKS", boxSp*5+boxW*3, barS+boxSp*2);
    text("CAT FOODS", boxSp*6+boxW*4, barS+boxSp*2);
  popStyle();
  
  // recipes
  pushStyle();
    noStroke();
    fill(0);
    textSize(15);
    textAlign(LEFT,CENTER);
    // breakfast
    text("Raspberry oatmeal", boxSp*2+20, barS+boxSp*2+40);
    text("Chocolate oatmeal", boxSp*2+20, barS+boxSp*2+70);
    text("Strawberry poptart", boxSp*2+20, barS+boxSp*2+100);
    text("Strawberry pancakes", boxSp*2+20, barS+boxSp*2+130);
    text("Strawberry pancakes", boxSp*2+20, barS+boxSp*2+160);
    text("Strawberry pancakes", boxSp*2+20, barS+boxSp*2+190);
    text("Strawberry pancakes", boxSp*2+20, barS+boxSp*2+220);
    text("Strawberry pancakes", boxSp*2+20, barS+boxSp*2+250);
    text("Strawberry pancakes", boxSp*2+20, barS+boxSp*2+280);
    text("Strawberry pancakes", boxSp*2+20, barS+boxSp*2+310);
    text("Strawberry pancakes", boxSp*2+20, barS+boxSp*2+340);
    text("Strawberry pancakes", boxSp*2+20, barS+boxSp*2+370);
    textSize(18);
    text("More...", boxSp*2+20, barS+boxSp*2+410);
    
    // lunch
    textSize(15);
    text("Raspberry oatmeal", boxSp*3+boxW+20, barS+boxSp*2+40);
    text("Chocolate oatmeal", boxSp*3+boxW+20, barS+boxSp*2+70);
    text("Strawberry poptart", boxSp*3+boxW+20, barS+boxSp*2+100);
    text("Strawberry pancakes", boxSp*3+boxW+20, barS+boxSp*2+130);
    text("Strawberry pancakes", boxSp*3+boxW+20, barS+boxSp*2+160);
    text("Strawberry pancakes", boxSp*3+boxW+20, barS+boxSp*2+190);
    text("Strawberry pancakes", boxSp*3+boxW+20, barS+boxSp*2+220);
    text("Strawberry pancakes", boxSp*3+boxW+20, barS+boxSp*2+250);
    text("Strawberry pancakes", boxSp*3+boxW+20, barS+boxSp*2+280);
    text("Strawberry pancakes", boxSp*3+boxW+20, barS+boxSp*2+310);
    text("Strawberry pancakes", boxSp*3+boxW+20, barS+boxSp*2+340);
    text("Strawberry pancakes", boxSp*3+boxW+20, barS+boxSp*2+370);
    textSize(18);
    text("More...", boxSp*3+boxW+20, barS+boxSp*2+410);
    
    // dinner
    textSize(15);
    text("Raspberry oatmeal", boxSp*4+boxW*2+20, barS+boxSp*2+40);
    text("Chocolate oatmeal", boxSp*4+boxW*2+20, barS+boxSp*2+70);
    text("Strawberry poptart", boxSp*4+boxW*2+20, barS+boxSp*2+100);
    text("Strawberry pancakes", boxSp*4+boxW*2+20, barS+boxSp*2+130);
    text("Strawberry pancakes", boxSp*4+boxW*2+20, barS+boxSp*2+160);
    text("Strawberry pancakes", boxSp*4+boxW*2+20, barS+boxSp*2+190);
    text("Strawberry pancakes", boxSp*4+boxW*2+20, barS+boxSp*2+220);
    text("Strawberry pancakes", boxSp*4+boxW*2+20, barS+boxSp*2+250);
    text("Strawberry pancakes", boxSp*4+boxW*2+20, barS+boxSp*2+280);
    text("Strawberry pancakes", boxSp*4+boxW*2+20, barS+boxSp*2+310);
    text("Strawberry pancakes", boxSp*4+boxW*2+20, barS+boxSp*2+340);
    text("Strawberry pancakes", boxSp*4+boxW*2+20, barS+boxSp*2+370);
    textSize(18);
    text("More...", boxSp*4+boxW*2+20, barS+boxSp*2+410);
    
    // snacks
    textSize(15);
    text("Raspberry oatmeal", boxSp*5+boxW*3+20, barS+boxSp*2+40);
    text("Chocolate oatmeal", boxSp*5+boxW*3+20, barS+boxSp*2+70);
    text("Strawberry poptart", boxSp*5+boxW*3+20, barS+boxSp*2+100);
    text("Strawberry pancakes", boxSp*5+boxW*3+20, barS+boxSp*2+130);
    text("Strawberry pancakes", boxSp*5+boxW*3+20, barS+boxSp*2+160);
    text("Strawberry pancakes", boxSp*5+boxW*3+20, barS+boxSp*2+190);
    text("Strawberry pancakes", boxSp*5+boxW*3+20, barS+boxSp*2+220);
    text("Strawberry pancakes", boxSp*5+boxW*3+20, barS+boxSp*2+250);
    text("Strawberry pancakes", boxSp*5+boxW*3+20, barS+boxSp*2+280);
    text("Strawberry pancakes", boxSp*5+boxW*3+20, barS+boxSp*2+310);
    text("Strawberry pancakes", boxSp*5+boxW*3+20, barS+boxSp*2+340);
    text("Strawberry pancakes", boxSp*5+boxW*3+20, barS+boxSp*2+370);
    textSize(18);
    text("More...", boxSp*5+boxW*3+20, barS+boxSp*2+410);
    
    // cat foods
    textSize(15);
    text("Seafood melody", boxSp*6+boxW*4+20, barS+boxSp*2+40);
    text("Shrimp and Cod", boxSp*6+boxW*4+20, barS+boxSp*2+70);
    text("Whitefish and Tuna", boxSp*6+boxW*4+20, barS+boxSp*2+100);
    text("Salmon feast", boxSp*6+boxW*4+20, barS+boxSp*2+130);
    text("Turkey and giblets", boxSp*6+boxW*4+20, barS+boxSp*2+160);
    text("Chicken and fish", boxSp*6+boxW*4+20, barS+boxSp*2+190);
    text("Duck and turkey", boxSp*6+boxW*4+20, barS+boxSp*2+220);
    text("Beef feast", boxSp*6+boxW*4+20, barS+boxSp*2+250);
    text("Duck with gravy", boxSp*6+boxW*4+20, barS+boxSp*2+280);
    text("Lamb pate", boxSp*6+boxW*4+20, barS+boxSp*2+310);
    text("Meat melody", boxSp*6+boxW*4+20, barS+boxSp*2+340);
    text("Feline surf and turf", boxSp*6+boxW*4+20, barS+boxSp*2+370);
    textSize(18);
    text("More...", boxSp*6+boxW*4+20, barS+boxSp*2+410);
  popStyle();
}
/////////////////////////////////////////////////////

}
