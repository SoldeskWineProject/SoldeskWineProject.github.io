package wine.config;


import javax.servlet.Filter;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;



//요청처리의 기본적인 초기설정(예:필터링,인코딩, 리스너....)
//public class SpringConfigClass implements WebApplicationInitializer {

	/*
	 * @Override public void onStartup(ServletContext servletContext) throws
	 * ServletException { //System.out.println("onStartup");
	 * 
	 * AnnotationConfigWebApplicationContext servletAddContext=new
	 * AnnotationConfigWebApplicationContext();
	 * servletAddContext.register(ServletAppContext.class); //web.xml의 환경설정
	 * 
	 * //요청발생시에 요청을 처리하고 서블릿에서 DispatcherServlet을 실행할때의 경로 DispatcherServlet
	 * dispatcherServlet=new DispatcherServlet(servletAddContext);
	 * ServletRegistration.Dynamic servlet= servletContext.addServlet("dispatcher",
	 * dispatcherServlet);
	 * 
	 * //부가설정 servlet.setLoadOnStartup(1); //가장먼저 받아들이겠다는 코드
	 * servlet.addMapping("/");
	 * 
	 * //===========================================================================
	 * ===========
	 * 
	 * //Bean(VO)을 정의하는 클래스를 지정 AnnotationConfigWebApplicationContext
	 * rootAppContext=new AnnotationConfigWebApplicationContext();
	 * rootAppContext.register(RootAppContext.class);
	 * 
	 * //리스너 ContextLoaderListener listener=new
	 * ContextLoaderListener(rootAppContext); servletContext.addListener(listener);
	 * 
	 * //파라미터 인코딩 설정 FilterRegistration.Dynamic
	 * filter=servletContext.addFilter("encodingFilter",
	 * CharacterEncodingFilter.class); filter.setInitParameter("encoding", "UTF-8");
	 * //추가 인코딩 : dispatcher에 의해서 추가된 Servlet에도 적용
	 * filter.addMappingForServletNames(null, false, "dispatcher");
	 * 
	 * }
	 */
	


public class SpringConfigClass extends AbstractAnnotationConfigDispatcherServletInitializer{

	//DispatcherServlet에 매핑
	@Override
	protected String[] getServletMappings() {
		return new String[] {"/"};
	}
	
	//프로젝트에서 사용할 Bean들을 정의
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] {RootAppContext.class};
	}
	
	//Spring MVC프로젝트 설정
	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] {ServletAppContext.class};
	}
	
	@Override
	protected Filter[] getServletFilters() {
		// TODO Auto-generated method stub
		CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();
		encodingFilter.setEncoding("UTF-8");
		return new Filter[] {encodingFilter};
	}

	

}
