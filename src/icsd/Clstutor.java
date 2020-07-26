package icsd;

public class Clstutor 
{
	String strimage,strname,strlang,strduration,strexperience,strfees,strcontact,stremail;
	
	public Clstutor() {
		
	}

	public Clstutor(String strimage, String strname, String strlang, String strduration, String strexperience,
			String strfees, String strcontact, String stremail) {
		super();
		this.strimage = strimage;
		this.strname = strname;
		this.strlang = strlang;
		this.strduration = strduration;
		this.strexperience = strexperience;
		this.strfees = strfees;
		this.strcontact = strcontact;
		this.stremail = stremail;
	}

	@Override
	public String toString() {
		return "Clstutor [strimage=" + strimage + ", strname=" + strname + ", strlang=" + strlang + ", strduration="
				+ strduration + ", strexperience=" + strexperience + ", strfees=" + strfees + ", strcontact="
				+ strcontact + ", stremail=" + stremail + "]";
	}

	public String getStrimage() {
		return strimage;
	}

	public void setStrimage(String strimage) {
		this.strimage = strimage;
	}

	public String getStrname() {
		return strname;
	}

	public void setStrname(String strname) {
		this.strname = strname;
	}

	public String getStrlang() {
		return strlang;
	}

	public void setStrlang(String strlang) {
		this.strlang = strlang;
	}

	public String getStrduration() {
		return strduration;
	}

	public void setStrduration(String strduration) {
		this.strduration = strduration;
	}

	public String getStrexperience() {
		return strexperience;
	}

	public void setStrexperience(String strexperience) {
		this.strexperience = strexperience;
	}

	public String getStrfees() {
		return strfees;
	}

	public void setStrfees(String strfees) {
		this.strfees = strfees;
	}

	public String getStrcontact() {
		return strcontact;
	}

	public void setStrcontact(String strcontact) {
		this.strcontact = strcontact;
	}

	public String getStremail() {
		return stremail;
	}

	public void setStremail(String stremail) {
		this.stremail = stremail;
	}
	
	
}
