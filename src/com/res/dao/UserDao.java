package com.res.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.res.model.User;

@Service @Transactional
public class UserDao {
	@Resource SessionFactory factory;
	//添加
	public void AddUser(User user)throws Exception{
		Session s=factory.getCurrentSession();
		s.save(user);
	}
	//删除
	public void DeleteUser(Integer userId)throws Exception{
		Session s = factory.getCurrentSession();
		Object user = s.load(User.class, userId);
		s.delete(user);
	}
	//修改
	public void UpdateUser(User user)throws Exception{
		Session s = factory.getCurrentSession();
		s.update(user);
	}
	//查询所有的all
	public ArrayList<User> QueryAllUser(){
		Session s = factory.getCurrentSession();
		String hql="From User";
		Query q =s.createQuery(hql);
		List userList = q.list();
		return (ArrayList<User>) userList;
	}
	
	//根据条件查询
	public ArrayList<User> QueryUserInfo(String username){
		Session s = factory.getCurrentSession();
		List userList;
		String hql = "From User user where 1 = 1";
		if(!username.equals("")){
			hql = hql+"and user.username like '%"+username+"%'";
			Query q = s.createQuery(hql);
			userList=q.list();
		}else{
			userList = null;
		}
		return (ArrayList<User>) userList;
	}
}
