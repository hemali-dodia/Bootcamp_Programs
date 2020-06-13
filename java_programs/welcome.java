public class welcome
{
	public static void main(String[] args)
	{	System.out.println("welcome");
		while(true)
		{
			System.out.println("inside loop");
			try{
				Thread.sleep(60000);
			}
			catch(Exception e){
				System.out.println(e);
			}
		}
	}
}
