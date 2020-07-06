package www.uai.com.vo;

public class DashboardVO {
	
	private String s_dailySum;
	private String s_dailyCount;
	private String s_dailyAvg;
	private String s_date;
	
	public DashboardVO() {
		
	}

	public DashboardVO(String s_dailySum, String s_dailyCount, String s_dailyAvg, String s_date) {
		
		this.s_dailySum = s_dailySum;
		this.s_dailyCount = s_dailyCount;
		this.s_dailyAvg = s_dailyAvg;
		this.s_date = s_date;
	}

	public String getS_dailySum() {
		return s_dailySum;
	}

	public void setS_dailySum(String s_dailySum) {
		this.s_dailySum = s_dailySum;
	}

	public String getS_dailyCount() {
		return s_dailyCount;
	}

	public void setS_dailyCount(String s_dailyCount) {
		this.s_dailyCount = s_dailyCount;
	}

	public String getS_dailyAvg() {
		return s_dailyAvg;
	}

	public void setS_dailyAvg(String s_dailyAvg) {
		this.s_dailyAvg = s_dailyAvg;
	}

	public String getS_date() {
		return s_date;
	}

	public void setS_date(String s_date) {
		this.s_date = s_date;
	}
	
	
	
	

}
