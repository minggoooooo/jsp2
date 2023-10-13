package utils;

import javax.servlet.jsp.JspWriter;

public class JSFunction {
	
		public static void alertLocation(String msg, String url, JspWriter out) {
			try {
				String script =""
						+"<script>"
						+ " alert('" + msg + "'); "
						+ " location.href='" + url +"';"
						+ "</script>";
				out.println(script);
			} catch (Exception e) {
				
			}
			
		}
		
		public static void alertBack(String msg, JspWriter out) {
			try {
				String script =""
						+"<script>"
						+ " alert('" + msg + "'); "
						+ " history.back();"
						+ "</script>";
				out.println(script);
				// jspwriter out 변수로 메인으로 해서 out.메소드 사용한것
			} catch (Exception e) {
				
			}
			
		}
}
