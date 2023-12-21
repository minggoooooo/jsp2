<%@page import="javax.print.attribute.standard.JobOriginatingUserName"%>
<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.*"%>

<%
	String saveDirectory =  application.getRealPath("/Uploads"); // 실제 저장 폴더 위치
	String saveFilename = request.getParameter("sName");
	String originalFilename = request.getParameter("oName");
	
	try{
		File file = new File(saveDirectory, saveFilename);
		InputStream iStream = new FileInputStream(file);
		
		String client = request.getHeader("User-Agent");
		if(client.indexOf("WOW64")==-1) {  
			originalFilename = new String(originalFilename.getBytes("utf-8"),"ISO-8859-1");
		} else {
			originalFilename = new String(originalFilename.getBytes("KSC5601"),"ISO-8859-1");
		}
		
		response.reset();   // 응답 헤더 초기화
		response.setContentType("application/octet-stream");  // 8비트 스트림 설정
		response.setHeader("Content-Disposition","attachment; filename=\"" + originalFilename + "\"");
		response.setHeader("Content-Length",""+file.length());
		
		out.clear();
		
		OutputStream oStream = response.getOutputStream();
		
		byte b[] = new byte[(int)file.length()];
		int readBuffer = 0;
		while( (readBuffer = iStream.read(b)) > 0 ) {
			oStream.write(b, 0, readBuffer);
		}
		
		iStream.close();
		oStream.close();
		
	} catch(Exception e){
		e.printStackTrace();
		JSFunction.alertBack("예외가 발생했습니다.", out);
	}

%>
