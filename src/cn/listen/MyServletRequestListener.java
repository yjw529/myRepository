/*
 * package cn.listen;
 * 
 * import java.text.SimpleDateFormat; import java.util.ArrayList; import
 * java.util.Date;
 * 
 * import javax.servlet.ServletRequestEvent; import
 * javax.servlet.ServletRequestListener; import
 * javax.servlet.annotation.WebListener; import
 * javax.servlet.http.HttpServletRequest;
 * 
 * import cn.bean.SessionUtil; import cn.bean.User;
 * 
 *//**
	 * Application Lifecycle Listener implementation class MyServletRequestListener
	 *
	 *//*
		 * @WebListener public class MyServletRequestListener implements
		 * ServletRequestListener { //用户集合 private ArrayList<User> userList;
		 * 
		 * @Override public void requestDestroyed(ServletRequestEvent arg0) {
		 * 
		 * }
		 * 
		 * @SuppressWarnings("unchecked")
		 * 
		 * @Override public void requestInitialized(ServletRequestEvent arg0) {
		 * //从servletContext中获的userList userList=(ArrayList<User>)
		 * arg0.getServletContext().getAttribute("userList");
		 * //如果servletContext中没有userList对象 初始化userList if(userList==null){ userList=new
		 * ArrayList<User>(); } HttpServletRequest request=(HttpServletRequest)
		 * arg0.getServletRequest();
		 * 
		 * //sessionId String sessionId=request.getSession().getId();
		 * //如果当前sessionId不存在集合中 创建当前user对象
		 * if(SessionUtil.getUserBySessionId(userList,sessionId)==null){ User user=new
		 * User(); user.setSessionId(sessionId); user.setIp(request.getRemoteAddr());
		 * SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:MM:ss");
		 * user.setFirstTime(sdf.format(new Date())); userList.add(user); }
		 * //将userList集合 保存到ServletContext
		 * arg0.getServletContext().setAttribute("userList", userList); } }
		 */