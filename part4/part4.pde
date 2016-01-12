void setup()
{
    size(500,300);
    background(0);


}

void draw()
{
    PFont serifFont = createFont("Serif-48.vlw", 48);
    PFont sansFont = createFont("SansSerif-48.vlw", 48);

    MyText serif = new MyText(serifFont, 48, "Serif", 100,150);
    MyText sans  = new MyText(sansFont, 48, "Sans", 300,150);
    
    textFont(serif.fontName);
    textSize(serif.textSize);
    text(serif.content,serif.x,serif.y);

    textFont(sans.fontName);
    textSize(sans.textSize);
    text(sans.content,sans.x,sans.y);



}

class MyText
{
    public PFont fontName;
    public float textSize;
    public String content;
    public float x;
    public float y;


    public MyText(PFont fontName, float textSize, String content, float x,float y)
    {
        this.fontName = fontName;
        this.textSize = textSize;
        this.content = content;
        this.x = x;
        this.y = y;
    }


}