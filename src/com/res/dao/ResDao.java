package com.res.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.res.model.Res;


@Service @Transactional
public class ResDao {
	@Resource SessionFactory factory;
	
	//添加
	public void AddRes(Res res)throws Exception{
		Session s=factory.getCurrentSession();
		s.save(res);
	}
	//删除
	public void DeleteRes(String resName)throws Exception{
		Session s = factory.getCurrentSession();
		Object res = s.load(Res.class, resName);
		s.delete(res);
	}
	//修改
	public void UpdateRes(Res res)throws Exception{
		Session s = factory.getCurrentSession();
		s.update(res);
	}
	//查询所有的all
	public ArrayList<Res> QueryAllRes(){
		Session s = factory.getCurrentSession();
		String hql="From Res";
		Query q =s.createQuery(hql);
		List resList = q.list();
		return (ArrayList<Res>) resList;
	}
	//根据主键获取
	public Res GetResByResname(String resname){
		Session s = factory.getCurrentSession();
		Res res = (Res)s.get(Res.class,resname);
		return res;
	}
	//根据条件查询
	public ArrayList<Res> QueryResInfo(String resname){
		Session s = factory.getCurrentSession();
		String hql = "From Res res where 1 = 1";
		if(!resname.equals(""))hql = hql+"and res.resname res '%"+resname+"%'";
		Query q = s.createQuery(hql);
		List resList=q.list();
		return (ArrayList<Res>) resList;
	}
}