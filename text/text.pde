PFont font; // declare variable font of type PFont
font = loadFont("Monospaced-48.vlw"); // Assign value of font to be return value of loadFont call
textFont(font); // define textFont for this sketch to be the value of font

String mytext = "This is a quantity of text. You can put a lot of words here!"; 
// declare and assign String variable mytext
String [] myArray = split (mytext, " ");
// split mytext into words, and assign each one to an element of a string array called
// myArray

size(800, 600); // define size of drawing area
background(0);  // set background to black

for(int i=0; i<(myArray.length-1); i++){
  text(myArray[i], random(0,width), random(0,height));
  delay(150);
}
// The for loop iterates over myArray, using the text function to print each word
// in the array to the screen. 
// The calls to random generate a random value on the half-open interval 0<=x<width
// and 0<=y<height, and pass these value to the text function, so that each word 
// in the array will be printed at a random position on the screen
// The delay function appears to have the intention of delaying each successive iteration
// of the loop by 150ms, so that there is a 150ms pause between each word being drawn. 
// However, per the processing reference, they recommend 
// the delay function should not be used to control delay in animations
// https://processing.org/reference/delay_.html