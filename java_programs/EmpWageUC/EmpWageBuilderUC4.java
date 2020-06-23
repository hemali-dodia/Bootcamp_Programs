public class EmpWageBuilderUC4
{
        public static void main(String[] args)
        {
                int WagePerHour = 20;
		byte FullDayHour = 8;
		byte HalfDayHour = 4;
		int EmpWageFullfDay = 0;
		int EmpWageHalfDay = 0;
		double WorkingTime = Math.floor(Math.random() * 10) % 2;
		int Day = (int) WorkingTime;
		switch(Day)
		{
		case 0:
			EmpWageHalfDay = WagePerHour * HalfDayHour;
        	        System.out.println("employee wage = "+EmpWageHalfDay);
			break;
        	case 1:
			EmpWageFullfDay = WagePerHour * FullDayHour;
        	        System.out.println("employee wage = "+EmpWageFullfDay);
			break;
		default:
			System.out.println("employee wage = 0");
			break;
		}
	}
}

