package com.FamilyEdu.Service;

/**
 * 用于邮箱验证
 * @author Gu
 */
public interface RegisterValidateService {
	
	public void sendValidateEmail(String username,String email,String validateCode); 
	
}
