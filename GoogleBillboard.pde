public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
void setup(){
  double ePart = 0;

  for(int i = 0; i < e.length()-10 ; i++){
    if(i == 0){
    ePart = Math.pow(10,9) * (Double.parseDouble(e.substring(i,i+11)));
  }else if(i == 1){
    ePart = Math.pow(10,10) * (Double.parseDouble(e.substring(i,i+11)));
  }else {
    ePart = (Double.parseDouble(e.substring(i,i+10)));
  }
  if(isPrime(ePart)){
    System.out.println("The first prime is " + ePart);
    break;
  }
  }
}
public void draw()  
{   
  //not needed for this assignment
}  
boolean isPrime(double n){
  if(n<2){
  return false;
}
  for(double i = 2; i<=Math.sqrt(n); i++){
    if(n%i == 0){
      return false;
    }
  }
  return true;
}
