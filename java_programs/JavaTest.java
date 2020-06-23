import java.util.*;
class JavaTest
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		int count = sc.nextInt();
		System.out.println("starting if condition");
		if(count < 5)
		{
			System.out.println("less than 5");
		}
		else
		{
			System.out.println("more than 5");
		}
		System.out.println("starting switch case");

		switch(count)
		{
			case 4:
				System.out.println("number is valid"+count);
				break;
			case 5:
				System.out.println("number is"+count);
				break;
			default:
				System.out.println("number is invalid");
				break;
		}
		System.out.println("starting while loop");
		int new_count=0;
		while(new_count < 4)
		{
			System.out.println("count "+new_count);
			new_count++;
		}
	}
}
