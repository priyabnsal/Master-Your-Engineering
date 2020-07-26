package icsd;

public class Clsyoutube {

String strvideoid,strtopicname,strsubjectname,strchannelname,stryear,strlink;

@Override
public String toString() {
return "Clsyoutube [strvideoid=" + strvideoid + ", strtopicname=" + strtopicname + ", strsubjectname="
+ strsubjectname + ", strchannelname=" + strchannelname + ", stryear=" + stryear + ", strlink="
+ strlink + "]";
}

public Clsyoutube(String strvideoid, String strtopicname, String strsubjectname, String strchannelname,
String stryear, String strlink) {
super();
this.strvideoid = strvideoid;
this.strtopicname = strtopicname;
this.strsubjectname = strsubjectname;
this.strchannelname = strchannelname;
this.stryear = stryear;
this.strlink = strlink;
}

public String getStrvideoid() {
return strvideoid;
}

public void setStrvideoid(String strvideoid) {
this.strvideoid = strvideoid;
}

public String getStrtopicname() {
return strtopicname;
}

public void setStrtopicname(String strtopicname) {
this.strtopicname = strtopicname;
}

public String getStrsubjectname() {
return strsubjectname;
}

public void setStrsubjectname(String strsubjectname) {
this.strsubjectname = strsubjectname;
}

public String getStrchannelname() {
return strchannelname;
}

public void setStrchannelname(String strchannelname) {
this.strchannelname = strchannelname;
}

public String getStryear() {
return stryear;
}

public void setStryear(String stryear) {
this.stryear = stryear;
}

public String getStrlink() {
return strlink;
}

public void setStrlink(String strlink) {
this.strlink = strlink;
}


}
