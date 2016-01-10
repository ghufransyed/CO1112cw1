// "Dickinson Poem" by JOHN PARK

// intialize global variables
int i=0; 
float rotater = 0;
String mytext = "A bird came down the walk: He did not know I saw; He bit an angle-worm in halves And ate the fellow, raw.And then he drank a dew From a convenient grass, And then hopped sidewise to the wall To let a beetle pass. He glanced with rapid eyes That hurried all abroad,-- They looked like frightened beads, I thought; He stirred his velvet head Like one in danger; cautious, I offered him a crumb, And he unrolled his feathers And rowed him softer home Than oars divide the ocean, Too silver for a seam, Or butterflies, off banks of noon, Leap, splashless, as they swim.";
String [] myArray = split (mytext, " "); // separate the text into separate words


void setup(){
size(800, 600); // set size of drawing area
background(0); // set color of drawing area to black
frameRate(10); // sets the number of times per second the draw function will run
PFont font; // initialize variable font to be of type PFont
font = loadFont("Monospaced-48.vlw"); // assign result of loadFont to font variable
textFont(font); // set textFont to value of font
println(); // print new line
}

// all the code in the draw block will run 10 times/second, as defined by 
// the call to framerate
void draw(){
  rotater += .1; // increment rotater by 0.1 (the rotate function takes argument in radians)
  // so the animation will take  TWO_PI/0.1, which is approx 63, frames to make
  // one revolution
  i++; // increment i by one
  if(i> (myArray.length-1)){
    i=0;
  } // check value of i, and reset to 0 to prevent array out-of-bound
  // exception, and to ensure that the animation continues to loop
  // through the array of words continuously
  
  
  fill(255,45);  // white text, 45 alpha
  translate(mouseX, mouseY); //translate coordinate system to mouse position
  rotate (rotater); //rotate coordinate system to angle defined in rotator
  text(myArray[i],0,0); // draws text to screen, the text is a value (word) from 
  // array myArray, at coordinates 0,0 (which will now have been redefined to 
  // be at the location of mouseX and mouseY by the call to translate above.
  delay(50); // in milliseconds // 
}