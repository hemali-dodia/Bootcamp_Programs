class Pass_by_value
{
	public static void main(String [] args)
	{
		int x=100;
		add_val(x);
		System.out.println(x);
	}
	public static void add_val(int x)
	{
		x=x+550;
		System.out.println(x);
	}
}
