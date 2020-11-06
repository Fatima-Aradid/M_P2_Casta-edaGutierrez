class Bola{

  int d=30;
  float x= random(50, 450), y= random(50,450);
  float spx=random(-5,5), spy=random(-5,5);
  float friccion=1;
  
  
  void mover(){
  x +=(spx/friccion);
  y += (spy/friccion); 
  if(x > (width -d/2) ||x < d/2) spx *= -1;
  if(y > (height-d/2) || y < d/2) spy *= -1;
  circle(x,y,d);
  friccion += 0.01;
  }

}
