package common;

public class BoardPage {
	public static String pagingStr(int totalCount, int pageSize, int blockPage, int pageNum, String regUrl) {
		String pagingStr = "";
		
		int totalPages = (int) Math.ceil((double)totalCount/pageSize);
		//전체 페이지 수
		
		//1~5 페이지일때 pageTemp 는 1
		//6~10 페이지일때 pageTemp 는 6
		//11~15 페이지일때 pageTemp 는 11
		//16~20 페이지일때 pageTemp 는 16
		
		if(pageNum < 6) {
			for (int i = 1; i< pageNum; i++) {
			pagingStr += "<a href='" + regUrl + "?pageNum="+ i +"'>"+ i + " </a>";
			pagingStr += "&nbsp;";
			}
			pagingStr += "<strong style = 'color : red;'>&nbsp;" + pageNum + "&nbsp;</strong>";	
			for(int i= 1; i<=5; i++) {
			pagingStr += "<a href='" + regUrl + "?pageNum="+(pageNum+i) +"'>"+(pageNum+i)  +"</a>";
			pagingStr += "&nbsp;";
			}
			pagingStr += "<a href = '" + regUrl + "?pageNum="+ (pageNum+1) + "'> [다음 페이지] </a>";
			
		} else if (pageNum>=6 && pageNum<totalPages-4){
			pagingStr += "<a href = '" + regUrl + "?pageNum="+ (pageNum-1) + "'> [이전 페이지] </a>";
			for(int i=4; i>=1; i--) {
				pagingStr += "<a href='" + regUrl + "?pageNum="+(pageNum-i) +"'>"+(pageNum-i) +"</a>";
				pagingStr += "&nbsp;";
			}
			pagingStr += "<strong style = 'color : red;'>&nbsp;" + pageNum + "&nbsp;</strong>";	
			for(int i=1; i<5; i++) {
				pagingStr += "<a href='" + regUrl + "?pageNum="+(pageNum+i) +"'>"+(pageNum+i)  +"</a>";
				pagingStr += "&nbsp;";
			}
			pagingStr += "<a href = '" + regUrl + "?pageNum="+ (pageNum+1) + "'> [다음 페이지] </a>";
		}
		// 다음 블록, 마지막 페이지 출력
		
		else if(totalPages-4 <=pageNum && pageNum < totalPages) {
			pagingStr += "<a href = '" + regUrl + "?pageNum="+ (pageNum-1) + "'> [이전 페이지] </a>";
			for(int i=4; i>=1; i--) {
				pagingStr += "<a href='" + regUrl + "?pageNum="+(pageNum-i) +"'>"+(pageNum-i) +"</a>";
				pagingStr += "&nbsp;";
			}
			pagingStr += "<strong style = 'color : red;'>&nbsp;" + pageNum + "&nbsp;</strong>";	
			for(int i=pageNum; i<=totalPages ; i++) {
				pagingStr += "<a href='" + regUrl + "?pageNum="+ i +"'>"+ i  +"</a>";
				pagingStr += "&nbsp;";
			}
			pagingStr += "<a href = '" + regUrl + "?pageNum="+ (pageNum+1) + "'> [다음 페이지] </a>";
			
		} else if (pageNum== totalPages) {
			pagingStr += "<a href = '" + regUrl + "?pageNum="+ (pageNum-1) + "'> [이전 페이지] </a>";
			for(int i=4; i>=1; i--) {
				pagingStr += "<a href='" + regUrl + "?pageNum="+(pageNum-i) +"'>"+(pageNum-i) +"</a>";
				pagingStr += "&nbsp;";
			}
			pagingStr += "<strong style = 'color : red;'>&nbsp;" + pageNum + "&nbsp;</strong>";	
		} else {
			pagingStr = "페이지에 내용이 없습니다";
		}
		
		return pagingStr;
	}
}
