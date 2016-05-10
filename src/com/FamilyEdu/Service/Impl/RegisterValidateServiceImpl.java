package com.FamilyEdu.Service.Impl;

import java.security.GeneralSecurityException;

import javax.mail.MessagingException;

import org.springframework.stereotype.Service;

import com.FamilyEdu.Service.RegisterValidateService;
import com.FamilyEdu.Tools.SendEmail;

@Service("registerValidateService")
public class RegisterValidateServiceImpl implements RegisterValidateService{

	@Override
	public void sendValidateEmail(String username, String email, String validateCode) {
		
		//邮件内容
		 StringBuffer sb=new StringBuffer();
		    sb.append("您好,"+username+":\n");
			sb.append("您已对家教网进行注册，点击链接激活账号:\n");
	        sb.append("http://localhost:8080/FamilyEdu/user/usecAtivation?"); 
	        sb.append("validateCode=");
	        sb.append(validateCode);
	        sb.append("\n如果点击以上链接没有反应，请将该网址复制并粘贴到新的浏览器窗口中。");
	        sb.append("\n此致\n家教网 敬上");
	        
	   //发送邮件
				try {
					SendEmail.send(email, sb.toString());
				} catch (MessagingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (GeneralSecurityException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			

	}

}
