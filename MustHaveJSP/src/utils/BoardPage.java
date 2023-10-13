package utils;

public class BoardPage {
	public static String pagingStr(int totalCount, int pageSize, int blockPage, int pageNum, String regUrl) {
		String pagingStr = "";
		
		int totalPages = (int) Math.ceil((double)totalCount/pageSize);
		//전체 페이지 수
		
		//1~5 페이지일때 pageTemp 는 1
		//6~10 페이지일때 pageTemp 는 6
		//11~15 페이지일때 pageTemp 는 11
		//16~20 페이지일때 pageTemp 는 16
		
		int pageTemp = (((pageNum-1)/blockPage)* blockPage)+1;
		if(pageTemp != 1) {
			pagingStr += "<a href='" + regUrl + "?pageNum=1'> [첫 페이지] </a>";
			pagingStr += "&nbsp;";
			pagingStr += "<a href = '" + regUrl + "?pageNum="+ (pageTemp-1) + "'> [이전 블럭] </a>";
			
		}
		
		// 하단 중앙에 각 페이지 번호를 5개씩 출력
		// ex -> totalpages는 지금 11이에요 pageNum이 10이라 칠게요 10번 페이지를 봤다고 칠게요 pageTemp는 6이됩니다. 
		int blockCount = 1;
		while (blockCount <= blockPage && pageTemp <= totalPages) {
			if(pageTemp == pageNum) {
				pagingStr += "<strong style = 'color : red;'>&nbsp;" + pageTemp + "&nbsp;</strong>";
			} else {
				pagingStr += "&nbsp; <a href = '"+ regUrl +"?pageNum=" + pageTemp + "' style = 'color : black;'>" + pageTemp + "</a>&nbsp;";
			}
			pageTemp++;
			blockCount++;
		}
		// 다음 블록, 마지막 페이지 출력
		
		if(pageTemp <= totalPages) {
			pagingStr += "<a href='" + regUrl + "?pageNum=" + pageTemp + "'>[다음 블록]</a>";
			pagingStr += "&nbsp;";
			pagingStr += "<a href = '" + regUrl + "?pageNum="+ totalPages + "'>[마지막 페이지]</a>";
		}
		
		return pagingStr;
	}
}
