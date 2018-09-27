package com.ll.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ll.bean.User;

public interface UserMapper {
	public List<User> queryUsers();
    public int insertUser(User user);
    public User queryUser(int user_Id); 
    public int updateUser(User user);
    public User findUser(@Param("user_Name") String user_Name,@Param("user_Password") String user_Password);
}
