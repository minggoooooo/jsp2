package membership;

public class MemberDTO {	//DTO는 데이터를 처리(전송)하는 용도
							//DAO는 데이터에 접근하기 위한 용도
	private String id;	//아이디
	private String pass;	//비번
	private String name;	//이름
	private String regidate;	//등록날짜
	
	//java bins라는 import처럼 따오는 걸 할 때 생성자를 만들어야 함.
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRegidate() {
		return regidate;
	}

	public void setRegidate(String regidate) {
		this.regidate = regidate;
	}
	
	
}
