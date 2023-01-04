public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup() {  
  String frag = e.charAt(0)+e.substring(2,11);
  double fragNum = Double.parseDouble(frag);
  if (isPrime(fragNum)) {
    System.out.println(String.format("%.0f", fragNum));
  }
  for(int i = 2; i < e.length() - 10; i++) {
    frag = e.substring(i, i+10); 
    fragNum = Double.parseDouble(frag);
    if (isPrime(fragNum)) {
      System.out.println(String.format("%.0f", fragNum));
      break;
    }
  }
}  
  
public boolean isPrime(double dNum) {   
  double maxFactor = Math.sqrt(dNum);   
  for (int i = 2; i <= maxFactor; i++) {
    if (dNum % i == 0) {
      return false;
    }
  }
  return true;
} 
