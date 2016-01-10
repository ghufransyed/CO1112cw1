PFont fontSans; // declare variable fontSans of type PFont
PFont fontSerif; // declare variable fontSerif of type PFont
fontSans = loadFont("SansSerif-48.vlw"); // Assign value of fontSans to be return value of loadFont call
fontSerif = loadFont("Serif-48.vlw"); // Assign value of fontSans to be return value of loadFont call



String mytext = "This is a quantity of text. You can put a lot of words here!"; 
// declare and assign String variable mytext
String [] myArray = split (mytext, " ");
// split mytext into words, and assign each one to an element of a string array called
// myArray

size(800, 600); // define size of drawing area
background(0);  // set background to black

int x,y,lineHeight,wordWidth;

for(int i=0; i<(myArray.length-1); i++){
  if(i%2 == 0)
  {
    textFont(fontSans); // define textFont for this sketch to be the value of fontSans
  }
  else
  {
    textFont(fontSerif);  // define textFont for this sketch to be the value of fontSerif
  }
  String textValue = myArray[i];
  lineHeight = Math.round(textAscent() + textDescent());
  wordWidth = Math.round(textWidth(textValue));
  x = (int) random(0, width - wordWidth);
  y= (int) random(lineHeight,height);
  text(textValue, x, y);
  //delay(150); I removed this line for the reasons below
}

// The delay function appears to have the intention of delaying each successive iteration
// of the loop by 150ms, so that there is a 150ms pause between each word being drawn. 
// However, per the processing reference, they recommend 
// the delay function should not be used to control delay in animations
// https://processing.org/reference/delay_.html