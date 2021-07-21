ArrayList<PImage> allImages = new ArrayList<PImage>();
int startFrame = 1;
int endFrame = 100;

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
  size(3840, 2160);
  
  for (int i = startFrame; i <= endFrame; i++) allImages.add(loadFrame(i));
   
   
   
   
   for (int i = 98; i <= 100; i++) {
     
     System.out.println("Drawing frame: " + i);
     
     background(220);
     drawMotionFrame(i, 4);
     save("output/" + i + ".png");
   }  
   
   System.out.println("Done");
 
}










void drawMotionFrame(int frameIndex, int n) {
  
    for (int i = startFrame; i < frameIndex; i++) {
          if (i % n != 0) continue;
          
          tint(255, convertPercent(0.3));
          image(allImages.get(i - startFrame), 0, 0, width, height);
    }    
    
    tint(255, 255);
    image(allImages.get(frameIndex - startFrame), 0, 0, width, height);    
  
}
