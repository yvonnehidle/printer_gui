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
    text("Raspberry oatmeal", boxSp*2+15, barS+boxSp*2+40);
    text("Chocolate oatmeal", boxSp*2+15, barS+boxSp*2+70);
    text("Strawberry poptart", boxSp*2+15, barS+boxSp*2+100);
    text("Chocolate chip pancake", boxSp*2+15, barS+boxSp*2+130);
    text("Plain bagel", boxSp*2+15, barS+boxSp*2+160);
    text("Sweet onion bagel", boxSp*2+15, barS+boxSp*2+190);
    text("Four cheese souffle", boxSp*2+15, barS+boxSp*2+220);
    text("Pecan sticky roll", boxSp*2+15, barS+boxSp*2+250);
    text("Artichoke souffle", boxSp*2+15, barS+boxSp*2+280);
    text("Cinnamon oatmeal", boxSp*2+15, barS+boxSp*2+310);
    text("Plain waffle", boxSp*2+15, barS+boxSp*2+340);
    text("Waffle and syrup", boxSp*2+15, barS+boxSp*2+370);
    textSize(18);
    text("More...", boxSp*2+15, barS+boxSp*2+410);
    
    // lunch
    textSize(15);
    text("Meatball sandwich", boxSp*3+boxW+15, barS+boxSp*2+40);
    text("Italian sandwich", boxSp*3+boxW+15, barS+boxSp*2+70);
    text("Fried chicken strips", boxSp*3+boxW+15, barS+boxSp*2+100);
    text("Surf and turf", boxSp*3+boxW+15, barS+boxSp*2+130);
    text("Garlic pasta", boxSp*3+boxW+15, barS+boxSp*2+160);
    text("Coconut chicken", boxSp*3+boxW+15, barS+boxSp*2+190);
    text("Roast beef sandwich", boxSp*3+boxW+15, barS+boxSp*2+220);
    text("Fish sandwich", boxSp*3+boxW+15, barS+boxSp*2+250);
    text("Chicken burrito", boxSp*3+boxW+15, barS+boxSp*2+280);
    text("Beef tacos", boxSp*3+boxW+15, barS+boxSp*2+310);
    text("Asian noodles", boxSp*3+boxW+15, barS+boxSp*2+340);
    text("Plain beef burger", boxSp*3+boxW+15, barS+boxSp*2+370);
    textSize(18);
    text("More...", boxSp*3+boxW+15, barS+boxSp*2+410);
    
    // dinner
    textSize(15);
    text("Baked chicken with rice", boxSp*4+boxW*2+15, barS+boxSp*2+40);
    text("Spanish rice and beans", boxSp*4+boxW*2+15, barS+boxSp*2+70);
    text("Wild rice risotto", boxSp*4+boxW*2+15, barS+boxSp*2+100);
    text("Rosemary lamb and leeks", boxSp*4+boxW*2+15, barS+boxSp*2+130);
    text("Veggie pasta sauce", boxSp*4+boxW*2+15, barS+boxSp*2+160);
    text("Meatballs and pasta", boxSp*4+boxW*2+15, barS+boxSp*2+190);
    text("Chicken alfredo", boxSp*4+boxW*2+15, barS+boxSp*2+220);
    text("Duck in orange sauce", boxSp*4+boxW*2+15, barS+boxSp*2+250);
    text("Lemon chicken", boxSp*4+boxW*2+15, barS+boxSp*2+280);
    text("Japanese stirfry", boxSp*4+boxW*2+15, barS+boxSp*2+310);
    text("Tom kha soup", boxSp*4+boxW*2+15, barS+boxSp*2+340);
    text("Spicy basil", boxSp*4+boxW*2+15, barS+boxSp*2+370);
    textSize(18);
    text("More...", boxSp*4+boxW*2+15, barS+boxSp*2+410);
    
    // snacks
    textSize(15);
    text("Fun celery sticks", boxSp*5+boxW*3+15, barS+boxSp*2+40);
    text("Strawberry shapes", boxSp*5+boxW*3+15, barS+boxSp*2+70);
    text("Fruitty snacks", boxSp*5+boxW*3+15, barS+boxSp*2+100);
    text("Crackers", boxSp*5+boxW*3+15, barS+boxSp*2+130);
    text("Crackers and cheese", boxSp*5+boxW*3+15, barS+boxSp*2+160);
    text("Hummus", boxSp*5+boxW*3+15, barS+boxSp*2+190);
    text("Strawberry sticks", boxSp*5+boxW*3+15, barS+boxSp*2+220);
    text("Cherry chews", boxSp*5+boxW*3+15, barS+boxSp*2+250);
    text("Seasoned beef jerky", boxSp*5+boxW*3+15, barS+boxSp*2+280);
    text("Mom's pesto", boxSp*5+boxW*3+15, barS+boxSp*2+310);
    text("Spicy jerky", boxSp*5+boxW*3+15, barS+boxSp*2+340);
    text("Peanut butter sticks", boxSp*5+boxW*3+15, barS+boxSp*2+370);
    textSize(18);
    text("More...", boxSp*5+boxW*3+15, barS+boxSp*2+410);
    
    // cat foods
    textSize(15);
    text("Seafood melody", boxSp*6+boxW*4+15, barS+boxSp*2+40);
    // this is the first item clicked on in the video
    if(mouseX > boxSp*6+boxW*4+15 && mouseX < boxSp*6+boxW*5+15 && mouseY > barS+boxSp*2+60 && mouseY < barS+boxSp*2+80)
    {
      pushStyle();
        textSize(18);
        text("Shrimp and Cod", boxSp*6+boxW*4+15, barS+boxSp*2+70);
      popStyle();
    }
    else
    {
      text("Shrimp and Cod", boxSp*6+boxW*4+15, barS+boxSp*2+70);
    }
    text("Whitefish and Tuna", boxSp*6+boxW*4+15, barS+boxSp*2+100);
    text("Salmon feast", boxSp*6+boxW*4+15, barS+boxSp*2+130);
    text("Turkey and giblets", boxSp*6+boxW*4+15, barS+boxSp*2+160);
    text("Chicken and fish", boxSp*6+boxW*4+15, barS+boxSp*2+190);
    text("Duck and turkey", boxSp*6+boxW*4+15, barS+boxSp*2+220);
    text("Beef feast", boxSp*6+boxW*4+15, barS+boxSp*2+250);
    text("Duck with gravy", boxSp*6+boxW*4+15, barS+boxSp*2+280);
    text("Lamb pate", boxSp*6+boxW*4+15, barS+boxSp*2+310);
    text("Meat melody", boxSp*6+boxW*4+15, barS+boxSp*2+340);
    text("Feline surf and turf", boxSp*6+boxW*4+15, barS+boxSp*2+370);
    textSize(18);
    text("More...", boxSp*6+boxW*4+15, barS+boxSp*2+410);
  popStyle();
}
/////////////////////////////////////////////////////


/////////////////////////////////////////////////////
// PROCESSING THE CAT FOOD
/////////////////////////////////////////////////////
void processingCatFood()
{
  pushStyle();
    noStroke();
    fill(0);
    textSize(40);
    // printer version
    text("YUMMY CAT FOODS!", width/2, barS+100);
  popStyle();
}
/////////////////////////////////////////////////////

}
