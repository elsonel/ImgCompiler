int STARTFRAME = 1;        //Frame stats at 0001.png
int ENDFRAME = 20;         //Frame ends at 0020.png
int DENSITY = 4;           //Trail density
float TRANSPARENCY = 0.3;  //Trail transparency
ArrayList<PImage> allImages = new ArrayList<PImage>();

PImage loadFrame(int frameIndex) {
    String s = "000" + (frameIndex) + ".png";
    String n = "input/" + s.substring(s.length()-8);
    
    System.out.println("Loading frame: " + n);
    
    return loadImage(n);
}

int convertPercent(float percent) {
   int value = (int) (percent * 255); 
   
   if (value > 255) return value;
   else if (value < 0) return 0;
   else return value;
}

void setup() {
  size(1920, 1080);
  
  for (int i = STARTFRAME; i <= ENDFRAME; i++) allImages.add(loadFrame(i));  
  for (int i = STARTFRAME; i <= ENDFRAME; i++) {
     System.out.println("Drawing frame: " + i);
     drawMotionFrame(i, DENSITY);
     save("output/" + i + ".png");
  }  
  System.out.println("Done");
}

void drawMotionFrame(int frameIndex, int n) {
    background(220);
    for (int i = STARTFRAME; i < frameIndex; i++) {
          if (i % n != 0) continue;
          
          tint(255, convertPercent(TRANSPARENCY));
          image(allImages.get(i - STARTFRAME), 0, 0, width, height);
    }    
    
    tint(255, 255);
    image(allImages.get(frameIndex - STARTFRAME), 0, 0, width, height);    
  
}
