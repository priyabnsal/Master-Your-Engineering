package icsd;

public class Clsjava {

	String strid, strlink;
	
	public Clsjava()
	{
		
	}
	
	public Clsjava(String strid, String strlink) {
		super();
		this.strid = strid;
		this.strlink = strlink;
	}

	public String getStrid() {
		return strid;
	}

	public void setStrid(String strid) {
		this.strid = strid;
	}

	public String getStrlink() {
		return strlink;
	}

	public void setStrlink(String strlink) {
		this.strlink = strlink;
	}

	@Override
	public String toString() {
		return "Clsjava [strid=" + strid + ", strlink=" + strlink + "]";
	}
}
