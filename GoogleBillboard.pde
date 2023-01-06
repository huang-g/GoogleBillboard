public final static String e = "2.71828182845904523536028747135266249775724709369995957496696762772407663035354759457138217852516642742746639193200305992181741359662904357290033429526059563073813232862794349076323382988075319525101901157383418793070215408914993488416750924476146066808226480016847741185374234544243710753907774499206955170";  
String frag = e.charAt(0)+e.substring(2,11);
double fragNum = Double.parseDouble(frag);
public void setup() {  
  part1();
  part2(5);
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

public boolean isSum49(String digits) {
  int sum = 0;
  for(int i = 0; i < digits.length(); i++) {
    sum += Character.getNumericValue(digits.charAt(i));
  }
  if (sum == 49)
    return true;
  return false;
}

public void part1 () {
  if (isPrime(fragNum)) {
    System.out.println(String.format("%.0f", fragNum));
  }
  for(int i = 2; i < e.length() - 10; i++) {
    frag = e.substring(i, i+10); 
    fragNum = Double.parseDouble(frag);
    if (isPrime(fragNum)) {
      System.out.println(String.format("%.0f", fragNum) + ".com");
      break;
    }
  }
}

public void part2 (int n) {
  int count = 0;
  boolean found = false;
  for(int i = 2; i < e.length() - 10; i++) {
    frag = e.substring(i, i+10); 
    if (isSum49(frag)) {
      count++;
    }
    if(count == n) {
      System.out.println("f(5) = " + frag);
      found = true;
      break;
    }
  }
  if(!found) {
    System.out.println("No solutions found in given digits of e.");
  }
}
