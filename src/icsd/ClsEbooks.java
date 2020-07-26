package icsd;

public class ClsEbooks {
	String strbookid, strbookname,strimage,strlink;

	@Override
	public String toString() {
		return "ClsEbooks [strbookid=" + strbookid + ", strbookname=" + strbookname + ",strimage=" + strimage + ", strlink=" + strlink + "]";
	}

	public ClsEbooks(String strbookid, String strbookname,String strimage, String strlink) {
		super();
		this.strbookid = strbookid;
		this.strbookname = strbookname;
		this.strimage = strimage;
		this.strlink = strlink;
	}

	public String getStrbookid() {
		return strbookid;
	}

	public void setStrbookid(String strbookid) {
		this.strbookid = strbookid;
	}

	public String getStrbookname() {
		return strbookname;
	}

	public void setStrbookname(String strbookname) {
		this.strbookname = strbookname;
	}

	public String getStrimage() {
		return strimage;
	}

	public void setStrimage(String strimage) {
		this.strimage = strimage;
	}

	public String getStrlink() {
		return strlink;
	}

	public void setStrlink(String strlink) {
		this.strlink = strlink;
	}
	
	
}
