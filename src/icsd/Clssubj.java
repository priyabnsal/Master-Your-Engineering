package icsd;

public class Clssubj {
	String strsubjectid, strsubjectname, strnotes, stryear, strpreviousyear;

	@Override
	public String toString() {
		return "Clssubj [strsubjectid=" + strsubjectid + ", strsubjectname=" + strsubjectname + ", strnotes=" + strnotes
				+ ", stryear=" + stryear + ", strpreviousyear=" + strpreviousyear + "]";
	}
	
	
	public Clssubj(String strsubjectid, String strsubjectname, String strnotes, String stryear,
			String strpreviousyear) {
		super();
		this.strsubjectid = strsubjectid;
		this.strsubjectname = strsubjectname;
		this.strnotes = strnotes;
		this.stryear = stryear;
		this.strpreviousyear = strpreviousyear;
	}


	public String getStrsubjectid() {
		return strsubjectid;
	}

	public void setStrsubjectid(String strsubjectid) {
		this.strsubjectid = strsubjectid;
	}

	public String getStrsubjectname() {
		return strsubjectname;
	}

	public void setStrsubjectname(String strsubjectname) {
		this.strsubjectname = strsubjectname;
	}

	public String getStrnotes() {
		return strnotes;
	}

	public void setStrnotes(String strnotes) {
		this.strnotes = strnotes;
	}

	public String getStryear() {
		return stryear;
	}

	public void setStryear(String stryear) {
		this.stryear = stryear;
	}

	public String getStrpreviousyear() {
		return strpreviousyear;
	}

	public void setStrpreviousyear(String strpreviousyear) {
		this.strpreviousyear = strpreviousyear;
	}


}
