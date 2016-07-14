package com.res.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;


import com.opensymphony.xwork2.ActionSupport;
import com.res.dao.ResDao;
import com.res.model.Res;
import com.res.model.User;

@Controller @Scope("prototype")
public class ResAction extends ActionSupport{
	@Resource ResDao resDao;
	private  Res res;
	
	private File resPhoto;
    private String resPhotoFileName;
    private String resPhotoContentType;
    
    private File menu;
    private String menuFileName;
    private String menuContentType;
    
	public File getMenu() {
		return menu;
	}
	public void setMenu(File menu) {
		this.menu = menu;
	}
	public String getMenuFileName() {
		return menuFileName;
	}
	public void setMenuFileName(String menuFileName) {
		this.menuFileName = menuFileName;
	}
	public String getMenuContentType() {
		return menuContentType;
	}
	public void setMenuContentType(String menuContentType) {
		this.menuContentType = menuContentType;
	}
	public String getResPhotoFileName() {
		return resPhotoFileName;
	}
	public void setResPhotoFileName(String resPhotoFileName) {
		this.resPhotoFileName = resPhotoFileName;
	}
	
	public ResDao getResDao() {
		return resDao;
	}
	public void setResDao(ResDao resDao) {
		this.resDao = resDao;
	}
	public Res getRes() {
		return res;
	}
	public void setRes(Res res) {
		this.res = res;
	}
	public File getResPhoto() {
		return resPhoto;
	}
	public void setResPhoto(File resPhoto) {
		this.resPhoto = resPhoto;
	}
	public String getResPhotoContentType() {
		return resPhotoContentType;
	}
	public void setResPhotoContentType(String resPhotoContentType) {
		this.resPhotoContentType = resPhotoContentType;
	}
	public List<Res> getResList() {
		return resList;
	}
	public void setResList(List<Res> resList) {
		this.resList = resList;
	}

	private User user;
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	private List<Res> resList;
	public List<Res> getresList() {
		return resList;
	}
	public void setresList(List<Res> resList) {
		this.resList = resList;
	}
	

	public String addRes() throws Exception{
		resDao.AddRes(res);
		return"message";
	}
	public String showRes(){
		resList=resDao.QueryAllRes();
		return"show_resview";
	}

	public String showDetail(){
		res=resDao.GetResByResname(res.getResname());
		return "detail_view";
	}
	
}
