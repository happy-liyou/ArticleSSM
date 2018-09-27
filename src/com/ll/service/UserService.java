package com.ll.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ll.bean.User;
import com.ll.dao.UserMapper;
@Service
public class UserService {
	@Autowired
	private UserMapper usermapper;
	public User queryUser(int user_id){
		return usermapper.queryUser(user_id);
	}
	public List<User> queryUsers(){
		return usermapper.queryUsers();
	
	}
    public int insertUser(User user){
	  return  usermapper.insertUser(user);	  
  }
    public int updateUser(User user){
    	return usermapper.updateUser(user);
    }
    public User findUser(String user_Name,String user_Password) throws IOException{	
    	  User user = usermapper.findUser(user_Name, user_Password);
    	  if(user!=null&&user.getUser_Password().equals(user_Password)&&user.getUser_Name().equals(user_Name)){
    		  return user;
    	  }
    	  return null;
    }
}
