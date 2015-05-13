package eg;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import java.util.HashMap;
import eg.RegistUser;

/**
 * Session的监听类
 * Created by tarry on 15/5/12.
 */
public class SessionListener implements HttpSessionAttributeListener {
    public  void attributeAdded(HttpSessionBindingEvent arg0){
        System.out.println("session的属性添加:"+arg0.getName()+"="+arg0.getValue());
        if(arg0.getName()=="logname"){
            //获得全局变量的容器
            ServletContext ctx=arg0.getSession().getServletContext();
            // 把上次用到的容器取出来
            HashMap map=(HashMap)ctx.getAttribute("map");
            // 如果是第一次
            if (map==null){
                //新建一个hashmap
                map=new HashMap();
                //把hashmap存入全局变量
                ctx.setAttribute("map",map);
            }
            //把新的用户和会话存到集合里面
            map.put(arg0.getValue(),arg0.getSession());
            System.out.println("登陆的用户会话的集合为："+map);
        }
    }


    public  void attributeRemoved(HttpSessionBindingEvent arg0){

    }
    public  void attributeReplaced(HttpSessionBindingEvent arg0){

    }
}
