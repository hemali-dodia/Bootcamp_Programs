public class EmpWageBuilderUC8
{
	public static final int Wage_Per_Hour = 20;
        public static final byte Full_Day_Hour = 8;
        public static final byte Half_Day_Hour = 4;
	public static final int Total_Working_Days = 20;
        public static final int Total_Working_Hour = 100;

	public static int EmpAttendance()
	{
		double CkeckAttend = Math.floor(Math.random() * 10) % 2;
                int Attendance = (int) CkeckAttend;
		return(Attendance);
	}

	public static int EmpTime()
	{
		double CheckHours = Math.floor(Math.random() * 10) % 2;
		int WorkingHours = (int) CheckHours;
		return(WorkingHours);
	}

	public static int EmpWage(int WorkHour)
	{
		int salary = WorkHour * Wage_Per_Hour;
		return(salary);
	}

	public static void main(String[] args)
        {
		int EmpWageFullDay = 0;
		int EmpWageHalfDay = 0;
		int totalWorkingDays = 0;
		int WorkingHour = 0;
		int totalWage = 0;
		int Wage = 0;

		while(WorkingHour <= Total_Working_Hour && totalWorkingDays <= Total_Working_Days)
		{
			if(EmpAttendance()==1)
			{
				int Part_Full_time = EmpTime();
				switch(Part_Full_time)
				{
					case 0:
						EmpWageHalfDay = EmpWage(Half_Day_Hour);
						Wage = Wage + EmpWageHalfDay;
        	        			WorkingHour = WorkingHour + Half_Day_Hour;
						break;
        				case 1:
						EmpWageFullDay = EmpWage(Full_Day_Hour);
						Wage = Wage + EmpWageFullDay;
        	        			WorkingHour = WorkingHour + Full_Day_Hour;
						break;
					default:
						System.out.println("employee wage = 0");
						break;
				}
			}
			totalWorkingDays++;
			totalWage = totalWage + Wage;
		}
		System.out.println("monthly wage = "+totalWage);
	}
}

