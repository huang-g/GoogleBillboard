public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059921817413596629043572900334295260595630738132328627943490763233829880753195251019011573834187930702154089149934884167509244761460668082264800168477411853742345442437107539077744992069551702761838606261331384583000752044933826560297606737113";  
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
