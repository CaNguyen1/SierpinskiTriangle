public void setup(){
size(1000,1000);
noLoop();
}
public void draw(){
  background(192);
  sierp(0,1000,1000);
}
public void sierp(int x, int y, int len){
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  if(len<20)
    triangle(x,y,x+len,y, x+len/2, y-len);
  else{
    sierp(x,y,len/2);
    sierp(x+len/2,y,len/2);
    sierp(x+len/4, y-len/2, len/2);


  }
}
