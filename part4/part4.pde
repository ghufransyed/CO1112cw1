

void setup()
{
    size(500,400);
    background(0);
}



void draw()
{

    PFont serifFont = loadFont("Serif-48.vlw");
    PFont sansFont = loadFont("SansSerif-48.vlw");

    // section to draw "Before" text

    alternateFont(serifFont,sansFont, 32, "Before...", 0,32);


    // section to draw first pair

    float firstPairY = 125;


    textFont(serifFont);
    textSize(48);
    text("Serif", 100,firstPairY);

    textFont(sansFont);
    textSize(48);
    text("v", 226, firstPairY);

    textFont(sansFont);
    textSize(48);
    text("s", 250 , firstPairY);


    textFont(sansFont);
    textSize(48);
    text("Sans", 300,firstPairY);


    // section to draw dividing line

    
    stroke(255);
    for (int j = 0; j < width; j++)
    {
        if (j%5==0) {point(j,height/2);}
    }


    // section to draw "...and After" text

    alternateFont(serifFont,sansFont, 32, "...and After", 0,390);

    // section to draw (first part of) second pair

    float secondPairY = 300;

    textFont(serifFont);
    textSize(48);
    text("Serif", 100,secondPairY);

    // section using transformations to rotate 'V'to use as '<'
    pushMatrix();
    translate(224,275);
    rotate(PI/2);

    textFont(sansFont);
    textSize(48);
    text("v", 0, 0);

    popMatrix();

    // section to draw (second part of) second pair

    textFont(sansFont);
    textSize(36);
    text("3", 250 , secondPairY);

    textFont(sansFont);
    textSize(48);
    text("Sans", 300,secondPairY);
}

void alternateFont(PFont font1, PFont font2, float size, String wd, float x, float y)
{
    float offset = 0; // used to ensure each successive
                      // letter is placed correctly

    for (int i = 0; i < wd.length(); i++)
    {
        if(i%2==0)
        {
            textFont(font1);
            textSize(size);
            text(wd.charAt(i),x+offset, y );
        }
        else
        {
            textFont(font2);
            textSize(size);
            text(wd.charAt(i),x+offset, y );
        }
        offset += textWidth(wd.charAt(i));

    }
}
