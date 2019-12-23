package cn.listen;

import java.util.ArrayList;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import cn.bean.SessionUtil;
import cn.bean.User;

/**
 * HttpSessionListener 监听器
 *
 */
@WebListener
public class MyHttpSessionListener implements HttpSessionListener { // 当前用户数
	private int userCounts = 0;

	@Override
	public void sessionCreated(HttpSessionEvent se) {
		// sessionCreated用户数+1
		userCounts++;
		// 重新在servletContext中保存userCounts
		se.getSession().getServletContext().setAttribute("userCounts", userCounts);
	}
	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		// sessionDestroyed 用户数-1
		userCounts--;
		// 重新在servletContext中保存userCounts
		se.getSession().getServletContext().setAttribute("userCounts", userCounts);

		@SuppressWarnings("unchecked")
		ArrayList<User> userList = (ArrayList<User>) se.getSession().getServletContext().getAttribute("userList");
		String sessionId = se.getSession().getId();
		// 如果当前用户在userList中 在session销毁时将当前用户移出 userList
		if (SessionUtil.getUserBySessionId(userList, sessionId) != null) {
			userList.remove(SessionUtil.getUserBySessionId(userList, sessionId));
		}
		// 将userList集合 重新保存到servletContext
		se.getSession().getServletContext().setAttribute("userList", userList);
	}
}