public class EmpWageBuilderUC4
{
        public static void main(String[] args)
        {
                int WagePerHour = 20;
		byte FullDayHour = 8;
		byte HalfDayHour = 4;
		int EmpWageFullDay = 0;
		int EmpWageHalfDay = 0;
		int totalWorkingDays = 20;
		int totalWorkingHour = 100;
		int WorkingHour = 0;
		int totalWage = 0;
		int Wage = 0;
		while(totalWorkingDays >= 0 && totalWorkingHour >= 0)
		{
			double WorkingTime = Math.floor(Math.random() * 10) % 2;
			int Day = (int) WorkingTime;
			switch(Day)
			{
			case 0:
				EmpWageHalfDay = WagePerHour * HalfDayHour;
				Wage = Wage + EmpWageHalfDay;
        	        	WorkingHour = HalfDayHour;
				break;
        		case 1:
				EmpWageFullDay = WagePerHour * FullDayHour;
				Wage = Wage + EmpWageFullDay;
        	        	WorkingHour = FullDayHour;
				break;
			default:
				System.out.println("employee wage = 0");
				break;
			}
			totalWorkingHour = totalWorkingHour - WorkingHour;
			totalWorkingDays--;
			totalWage = totalWage + Wage;
		}
	System.out.println("monthly wage = "+totalWage);
	}
}

