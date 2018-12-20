import java.util.*;
public class Nim
{
    public static void main(String[]args)
    {
        Scanner sc = new Scanner(System.in);
        Scanner sc2 = new Scanner(System.in);
        Random gen2 = new Random();       
        int i = 26;
        int c = 0;
        int usernum = 0;
        System.out.println("Welcome to the game of Nim. To play, take 1-3 sticks from the pile each round.");
        System.out.println("If you are the last to take sticks, you win. If the computer is the last to take sticks, it wins.");
        while(i>0)
        {
         c = (gen2.nextInt(2)+1);
         System.out.println("We will be playing to " + i);
         System.out.println("Take 1-3 sticks from the pile");
         usernum = sc.nextInt(); 
         if(usernum > 3)
         {
            System.out.println("Please take only 1-3 sticks from the pile");
            System.out.println("You have taken 3 from the pile");
         }
         else System.out.println("You have taken " + usernum + " from the pile");
         i = i-usernum;
          if(i <= 0)
          {
             System.out.println("Congragulations, you have won! Would you like to play again?");
             String res = sc2.nextLine();
             if (res.equals("yes")|| res.equals("Yes"))
             {
                 i = 26;
                }
             else if (res.equals("no") || res.equals("No"))
             {
                 System.out.println("understandable have a nice day");
                 return;
                }
                else System.out.println("Sorry we couldn't understand what you were saying.");
                 return;
          }
          else if (i > 0)
          {
          System.out.println("There are now " + i + " sticks left in the pile");         
          System.out.println("Computer now playing...");
          i = i-c;
          if(i <= 0)
          {
             System.out.println("u lost play again?");
             String res = sc2.nextLine();
             if (res.equals("yes")|| res.equals("Yes"))
             {
                 i = 26;
                }
             else if (res.equals("no") || res.equals("No"))
             {
                 System.out.println("understandable have a nice day");
                 return;
                }
                else System.out.println("Sorry we couldn't understand what you were saying.");
                 return;
          }
         }
       }
     }
}
