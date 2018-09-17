package study.jsp.helper;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WebHelper {
	
	/** 싱글톤 객체 */
	private static WebHelper current;
	
	public static WebHelper getInstance(HttpServletRequest request, HttpServletResponse response) {
		if (current == null) {
			current = new WebHelper();
		}
		// 초기화 메서드를 호출한다.
		current.init(request, response);
		return current;
	}
	
	public static void freeInstance() {
		current = null;
	}
	
	private WebHelper() {
		super();
	}
	
	
	/** JSP의 request 내장 객체 */
	// --> import javax.servlet.http.HttpServletRequest;
	private HttpServletRequest request;
	
	/** JSP의 request 내장 객체 */
	private HttpServletResponse response;
	
	/** JSP의 out 내장 객체 */
	// --> import java.io.PrintWriter;
	private PrintWriter out;
	
	/**
	 * WebHelper 기능을 초기화 한다.
	 * JSP의 내장객체는 JSP 페이지에서만 생성되기 때문에,
	 * 일반 Java 클래스에서 접근하기 위해서는 JSP 페이지에서 전달받아야 한다.
	 */
	public void init(HttpServletRequest request, HttpServletResponse response) {
		// JSP 내장객체 참조하기 --> getInstance()에 전달된 객체를 받는다.
		this.request = request;
		this.response = response;
		
		/** 내장객체 초기화 -> utf-8 설정, out객체 생성 */
		try {
			// 인코딩 설정하기
			this.request.setCharacterEncoding("utf-8");
			this.response.setCharacterEncoding("utf-8");
			// out객체 생성
			this.out = response.getWriter();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 파라미터를 전달받아서 리턴한다.
	 * @param fieldName  - 파라미터 이름
	 * @param defaultValue - 값이 없을 경우 사용될 기본값
	 * @return String
	 */
	
	public String getString(String fieldName, String defaultValue) {
		// 리턴을 위한 값을 두 번째 파라미터(기본값)로 설정해 둔다.
		String result = defaultValue;
		// GET,POST 파라미터를 받는다.
		String param = this.request.getParameter(fieldName);

		if (param != null) {			// 값이 null이 아니라면?
			param = param.trim();		// 앞뒤 공백을 제거한다.
			if (!param.equals("")) {	// 공백제거 결과가 빈 문자열이 아니라면?
				result = param;			// 리턴을 위해서 준비한 변수에 수신한 값을 복사한다.
			}
		}

		// 값을 리턴. param값이 존재하지 않을 경우 미리 준비한 기본값이 그대로 리턴된다.
		return result;
	}

	/**
	 * 파라미터를 전달받아서 int로 형변환 하여 리턴한다.
	 * @param fieldName - 파라미터 이름
	 * @param defaultValue - 값이 없을 경우 사용될 기본값
	 * @return int
	 */
	public int getInt(String fieldName, int defaultValue) {
		// 리턴을 위한 값을 두 번째 파라미터(기본값)로 설정해 둔다.
		int result = defaultValue;
		// getString()메서드를 통해서 파라미터를 문자열 형태로 받는다.
		// 파라미터가 존재하지 않는다면 두 번째로 전달한 값이 리턴된다.
		String param = this.getString(fieldName, null);

		// 파라미터로 전달된 값을 숫자로 형변환 한다.
		try {
			result = Integer.parseInt(param);
		} catch (NumberFormatException e) {
			// 형변환에 실패할 경우 catch블록으로 제어가 이동하고,result값은 미리 설정해 둔
			// defaultValue인 상태를 유지한다.
			e.printStackTrace();
		}

		return result;
	}
	
	/**
	 * 배열 형태의 파라미터를 리턴한다. 체크박스 전용 기능
	 * @param fieldName - 파라미터 이름
	 * @param defaultValue - 값이 없거나 배열의 길이가 0인 경우 사용될 기본값
	 * @return String[]
	 */
	public String[] getStringArray(String fieldName, String[] defaultValue) {
		// 리턴을 위한 값을 두 번째 파라미터(기본값)로 설정해 둔다.
		String[] result = defaultValue;
		// 배열 형태의 GET,POST 파라미터를 받는다.
		String[] param = this.request.getParameterValues(fieldName);

		if (param != null) {			// 수신된 파라미터가 존재한다면?
			if (param.length > 0) {		// 배열의 길이가 0보다 크다면?
				result = param;			// 리턴을 위해서 준비한 변수에 수신한 값을 복사한다.
			} 
		}

		// 값을 리턴. param값이 존재하지 않을 경우 미리 준비한 기본값이 그대로 리턴된다.
		return result;
	}
	
	/** getString()의 기본값을 null로 처리하도록 메서드 재정의 */
	public String getString(String fieldName){
		return this.getString(fieldName, null);
	}
	
	public int getInt(String fieldName){
		return this.getInt(fieldName, 0);
	}
	
	public String[] getStringArray(String fieldName){
		return this.getStringArray(fieldName, null);
	}
	
	/**
	 * 메시지 표시 후, 페이지를 지정된 곳으로 이동한다.
	 * @param url - 이동할 페이지의 url, null일 때 이전 페이지로 이동
	 * @param msg - 화면에 표시할 메시지. 널일경우 표시안함.
	 * */
	public void redirect(String url, String msg){
		//가상의 view로 만들기 위한 HTML 태그 구성
		String html = "<!doctype html>";
		html += "<html>";
		html += "<head>";
		html += "<meta charset='utf-8'>";
		
		//메시지 표시
		if(msg != null){
			html += "<script type='text/javascript'>alert('" + msg + "');</script>";
		}
		
		//페이지 이동
		if(url != null){
			html += "<meta http-equiv='refresh' content='0; url=" + url + "' />";
		} else{
			html += "<script type='text/javascript'>history.back();</script>";
		}
		
		html += "</head>";
		html += "<body></body>";
		html += "</html>";
		
		//구성된 html 출력
		out.print(html);
	}
}
