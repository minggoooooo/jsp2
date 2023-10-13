package el;

public class MyELClass {
	
	public String getGender(String jumin) {
		String returnStr ="";
		int beginIdx = jumin.indexOf("-")+ 1;
		String genderStr = jumin.substring(beginIdx, beginIdx+1);
		int genderInt = Integer.parseInt(genderStr);
		if(genderInt==1 || genderInt==3) {
			returnStr = "남자";
		} else if (genderInt==2 || genderInt==4){
			returnStr = "여자";
		} else {
			returnStr = "주민번호 오류입니다.";
		}
		
		return returnStr;
	}
	
	public String getId(String email) {
		String id = "";
		int endIdx = email.indexOf("@");
		if(endIdx != -1) {
		id = email.substring(0, endIdx);
		}
		return id;
	}
	
	public String getMail(String email) {
		String mail = "";
		int startIdx = email.indexOf("@")+1;
		if(startIdx != 0) {
			mail = email.substring(startIdx);
		}
		return mail;
	}

}
