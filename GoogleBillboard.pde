public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
boolean prime = false;
public void setup()  
{ 
  String digits = e.substring(0, 10);
  double num = Double.parseDouble(digits);

  for (int i = 1; i+10 < e.length(); i++) {
    digits = e.substring(i, i+10);
    num = Double.parseDouble(digits);
    if (isPrime(num)) {
      System.out.println(num);
      break;
    }
  }
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
  if (dNum < 2) {
    return prime = false;
  }
  for (int i = 2; i <= Math.sqrt(dNum); i++) {
    if (dNum%i == 0) {
      return prime = false;
    }
  }
  return prime = true;
} 
