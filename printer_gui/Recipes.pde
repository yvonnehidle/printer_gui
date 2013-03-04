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
    text("Blueberry muffin", boxSp*2+15, barS+boxSp*2+400);
    text("Banana muffin", boxSp*2+15, barS+boxSp*2+430);
    textSize(18);
    text("More...", boxSp*2+15, barS+boxSp*2+480);
    
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
    text("Deluxe burger", boxSp*3+boxW+15, barS+boxSp*2+400);
    text("Sweet potato fries", boxSp*3+boxW+15, barS+boxSp*2+430);
    textSize(18);
    text("More...", boxSp*3+boxW+15, barS+boxSp*2+480);
    
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
    text("Mom's meatloaf", boxSp*4+boxW*2+15, barS+boxSp*2+400);
    text("Turkey burger", boxSp*4+boxW*2+15, barS+boxSp*2+430);
    textSize(18);
    text("More...", boxSp*4+boxW*2+15, barS+boxSp*2+480);
    
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
    text("Hot dog", boxSp*5+boxW*3+15, barS+boxSp*2+400);
    text("Bread slices", boxSp*5+boxW*3+15, barS+boxSp*2+430);
    textSize(18);
    text("More...", boxSp*5+boxW*3+15, barS+boxSp*2+480);
    
    // cat foods
    textSize(15);
    text("Seafood melody", boxSp*6+boxW*4+15, barS+boxSp*2+40);
    text("Shrimp and Cod", boxSp*6+boxW*4+15, barS+boxSp*2+70);
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
    text("Fish cakes", boxSp*6+boxW*4+15, barS+boxSp*2+400);
    text("Steak and liver", boxSp*6+boxW*4+15, barS+boxSp*2+430);
    textSize(18);
    text("More...", boxSp*6+boxW*4+15, barS+boxSp*2+480);
  popStyle();
}
/////////////////////////////////////////////////////


/////////////////////////////////////////////////////
// SHOW CAT FOOD NOWZ
/////////////////////////////////////////////////////
void showCatFood()
{
  // local variables
  String info = "A delightful mix of shrimp and cod for your feline friend. Bio ink manufactured by Purina Fancy Feast Gourmet Cat Food.";
  String ingredients = "Bio Ink Ingredients: Cod, liver, meat by-products, fish, fish broth, sole, shrimp, artificial and natural flavors, guar gum, added color (Red 3 and other color), calcium phosphate, potassium chloride, salt, zinc sulfate, thiamine mononitrate, Vitamin E supplement, ferrous sulfate, niacin, manganese sulfate, calcium pantothenate, Vitamin A supplement, copper sulfate, menadione sodium bisulfite complex (source of Vitamin K activity), pyridoxine hydrochloride, riboflavin supplement, Vitamin B-12 supplement, biotin, folic acid, Vitamin D-3 supplement, potassium iodide. ";
  
  pushStyle();
    noStroke();
    fill(0);
    textAlign(LEFT, CENTER);
    textSize(40);
    
    // food item
    text("Shrimp and Cod", boxW, barS+boxSp*2);
    
    // print zee food
    text(printStatus, boxW*3, barS+boxSp*2);
    
    // information
    textAlign(LEFT, TOP);
    textSize(15);
    text(info, boxW, barS*1.5, 300, 80);
    
    // ingredients list
    textSize(10);
    text(ingredients, boxW, barS*1.5+80, 300, 300);
    
    // picture of food
    image(catfood, boxSp, barS+boxSp*1.5);
    
  popStyle();
}
/////////////////////////////////////////////////////


/////////////////////////////////////////////////////
// PROCESS SAID CAT FOODS!
/////////////////////////////////////////////////////
void processCatFood()
{ 
  pushStyle();
  noStroke();
  fill(0);
  textAlign(LEFT, CENTER);
  textSize(20);
  
  showCatFood();
  printStatus = "Processing...";
  
  // warming up
  if(millis()-startTimer > 2000)
  {
    int percent = (millis()-2000)/100;
    
    if(percent < 100)
    {
    text("Warming up... " + percent + "%", boxW*3, barS+80);
    }
    else
    {
    text("Warming up... 100%", boxW*3, barS+80);
    }
  }
  
  // printing plate
  if(millis()-startTimer > 10000)
  {
    text("Printing biodegradable plate...", boxW*3, barS+110);
  }
  
  popStyle();
  
}
/////////////////////////////////////////////////////
}
