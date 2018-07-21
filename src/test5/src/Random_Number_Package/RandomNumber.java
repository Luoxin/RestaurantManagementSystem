package Random_Number_Package;
import java.util.Random;

public class RandomNumber {
   String randNumber;
   public RandomNumber(){
	   randNumber="";
   }
   public static void main(String[] args) {
		
	}
   public String getRandNumber(){
	   for(int i = 0; i < 1; i++){
		   Random random = new Random();
		   randNumber += Integer.toHexString(random.nextInt());
		   //System.out.println(randNumber);
	   }
	   return randNumber;
   }
//   public static void main(String[] args){
//	   
//	   RandomNumber  randomNumber =new RandomNumber();
//	   System.out.println(randomNumber.getRandNumber());
//   }
}
