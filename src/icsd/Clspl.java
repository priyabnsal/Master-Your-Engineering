package icsd;

public class Clspl {
	String strid, strlink;

	@Override
	public String toString() {
		return "Clspl [strid=" + strid + ", strlink=" + strlink + "]";
	}

	public Clspl(String strid, String strlink) {
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
	
}
