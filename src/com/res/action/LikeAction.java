package com.res.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.res.dao.LikeDao;
import com.res.dao.ResDao;
import com.res.dao.UserDao;
import com.res.model.Like;
import com.res.model.Res;
import com.res.model.User;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class LikeAction extends ActionSupport{
	
	
	@Resource LikeDao likeDao;
	@Resource UserDao userDao;
	@Resource ResDao resDao;
	
	private Like like;
	private List<Like> likeList;
    private User user;
    private Res res;

	
	
	public Like getLike() {
		return like;
	}
	public void setLike(Like like) {
		this.like = like;
	}

	public List<Like> getLikeList() {
		return likeList;
	}
	public void setLikeList(List<Like> likeList) {
		this.likeList = likeList;
	}
	
	
	public String addLike() throws Exception{
					
		likeDao.AddLike(like);
		return "message";
		
	}
	
	public String showLike(){
		likeList=likeDao.QueryAllLike();
		return"show_view";
	}
	public String deleteLike()throws Exception{
		likeDao.DeleteLike(like.getId());
		return"delete_message";
	}
	}
