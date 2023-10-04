int counter;

 void setup()
  {
      noLoop();
      size(425,489);
      noLoop();
     
  }
  void draw()
  {
    background(#F8C8DC);
    
    for(int y = 0; y<400; y+=150) 
      for (int x = 0; x<400; x+=150) {
        Die bob = new Die (x,y);
        bob.roll();
        bob.show();
      }
         fill(0);
         textSize(50);
         text("counter:" + counter, 100,460);
  }
  void mousePressed()
  {
      redraw();
      counter = 0;
  }
  class Die //models one single dice cube
  {
     //member variable declarations here
    int myX;
    int myY;
    int dots;
    
      
      Die(int x, int y) //constructor
      {
        //variable initializations here
         myX = x;
         myY = y; 
         
         dots = (int)((Math.random()*6)+1);
         
         
      }
      void roll()
      {
        dots = (int)((Math.random()*6)+1);
        counter+=dots;

      }
      void show()
      {
          //your code here
          fill(#FCFBF4);
          rect(myX,myY,110,110,28);
          fill(0);
          if (dots == 1){
           ellipse(myX + 55, myY + 55, 25,25);
          }
         if (dots ==2){
            ellipse(myX + 20, myY + 20, 25,25);
            ellipse(myX + 85, myY + 85, 25,25);
          }
          if(dots ==3) {
            ellipse(myX + 20, myY + 20, 25,25);
            ellipse(myX + 85, myY + 85, 25,25);
            ellipse(myX + 50, myY + 50, 25,25);
          }
          if(dots == 4){
            ellipse(myX + 20, myY + 20, 25,25);
            ellipse(myX + 90, myY + 20, 25, 25);
            ellipse(myX + 90, myY + 90, 25,25);
            ellipse(myX + 20, myY + 90 ,25,25);
          }
           if(dots == 5){
            ellipse(myX + 20, myY + 20, 25,25);
            ellipse(myX + 90, myY + 20, 25, 25);
            ellipse(myX + 90, myY + 90, 25,25);
            ellipse(myX + 20, myY + 90 ,25,25);
            ellipse(myX + 55, myY + 55, 25,25);
           }
           if(dots == 6){
            ellipse(myX + 20, myY + 20, 25,25);
            ellipse(myX + 90, myY + 20, 25, 25);
            ellipse(myX + 90, myY + 90, 25,25);
            ellipse(myX + 20, myY + 90 ,25,25);
            ellipse(myX + 20, myY + 55, 25,25);
            ellipse(myX + 90, myY + 55, 25,25);
           }
         
             
           }
          }


            
            
          

   
      
