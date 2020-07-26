package icsd;

public class Clsregister
{

String strId,strFullname,strMobileno,stremail,strusername,strUpassword,strSecurityquestion,strSecurityanswer;


@Override
public String toString() {
	return "Clsregister [strId=" + strId + ", strFullname=" + strFullname + ", strMobileno=" + strMobileno
			+ ", stremail=" + stremail + ", strusername=" + strusername + ", strUpassword=" + strUpassword
			+ ", strSecurityquestion=" + strSecurityquestion + ", strSecurityanswer=" + strSecurityanswer + "]";
}


public Clsregister(String strId, String strFullname, String strMobileno, String stremail, String strusername,
			String strUpassword, String strSecurityquestion, String strSecurityanswer) {
		super();
		this.strId = strId;
		this.strFullname = strFullname;
		this.strMobileno = strMobileno;
		this.stremail = stremail;
		this.strusername = strusername;
		this.strUpassword = strUpassword;
		this.strSecurityquestion = strSecurityquestion;
		this.strSecurityanswer = strSecurityanswer;
	}

public Clsregister() {
	super();
}


public String getStrId() {
	return strId;
}

public void setStrId(String strId) {
	this.strId = strId;
}

public String getStrFullname() {
	return strFullname;
}

public void setStrFullname(String strFullname) {
	this.strFullname = strFullname;
}

public String getStrMobileno() {
	return strMobileno;
}

public void setStrMobileno(String strMobileno) {
	this.strMobileno = strMobileno;
}

public String getStremail() {
	return stremail;
}

public void setStremail(String stremail) {
	this.stremail = stremail;
}

public String getStrusername() {
	return strusername;
}

public void setStrusername(String strusername) {
	this.strusername = strusername;
}

public String getStrUpassword() {
	return strUpassword;
}

public void setStrUpassword(String strUpassword) {
	this.strUpassword = strUpassword;
}

public String getStrSecurityquestion() {
	return strSecurityquestion;
}

public void setStrSecurityquestion(String strSecurityquestion) {
	this.strSecurityquestion = strSecurityquestion;
}

public String getStrSecurityanswer() {
	return strSecurityanswer;
}

public void setStrSecurityanswer(String strSecurityanswer) {
	this.strSecurityanswer = strSecurityanswer;
}



}