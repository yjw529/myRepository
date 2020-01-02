package cn.listen;


import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class CountLineListener
 *
 */
@WebListener
public class CountLineListener implements HttpSessionListener {

    private static int activeSessions = 0;
    //session创建时执行
    public void sessionCreated(HttpSessionEvent se) {
        activeSessions++;
    }
    //session销毁时执行
    public void sessionDestroyed(HttpSessionEvent se) {
        if (activeSessions > 0)
            activeSessions--;
    }
    //获取活动的session个数(在线人数)
    public static int getActiveSessions() {
        return activeSessions;
    }

}
