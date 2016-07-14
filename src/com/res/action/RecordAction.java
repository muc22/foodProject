package com.res.action;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.mysql.jdbc.log.Log;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.resource.dao.RecordDAO;
import com.resource.dao.ResourceDao;
import com.resource.dao.LikeDao;
import com.resource.dao.UserDAO;
import com.resource.model.Record;
import com.resource.model.User;
import com.resource.model.Like;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class RecordAction extends ActionSupport {

    @Resource RecordDAO recordDao;
    @Resource ResourceDao resourceDao;
    @Resource UserDAO userDao;
	
	private Record record;
	private List<Record> recrdlist;
    private User user;
    private Resource resource;

	public Record getRecord() {
		return record;
	}
	public void setRecord(Record record) {
		this.record = record;
	}
	public List<Record> getRecrdlist() {
		return recrdlist;
	}
	public void setRecrdlist(List<Record> recrdlist) {
		this.recrdlist = recrdlist;
	}
public String addRecord() throws Exception{
		
		user = userDao.QueryUserInfo(user.getUsername()).get(0);
		Record rec =new Record();
		rec.setUser(user);
		rec.setResource((com.resource.model.Resource) resource);
		recordDao.AddRecord(rec);
		return "record_message";
		
	}
	public String showRecord()
	{
		
		System.out.println(user.getUsername());
        return "show_record";
	}
	public String deleteRecord() throws Exception 
	{
		recordDao.DeleteRecord(record.getid());
		return "show_record";
	}
	
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Resource getResources() {
		return resource;
	}

	public void setResources(Resource resource) {
		this.resource = resource;
	}
}

/*public class LogAction extends ActionSupport{
	private ILogService LogService;
	private Integer page;
	private Integer rp;
	private Log log;
	
	public void queryPagination() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		//查询日志数据
		Log templog = new Log();
		//获取请求中的参数，设置查询条件
		String username=request.getParameter("username")==null?"":
			URLDecoder.decode(request.getParameter("username"),"utf-8");
		String describes=request.getParameter("describes")==null?"":
			URLDecoder.decode(request.getParameter("describes"),"utf-8");
		templog.setUsername(username);
		templog.setDescribes(describes);
		//通过条件执行查询
		Pagination pagination=this.logService.queryPaginationlog(templog,page,rp);
		JSONObject json=new JSONObject();
		json=JSONObject.fromObject(pagination);
		  ResponseWriterOut.writer(ServletActionContext.getResponse(),json.toString());
	}
	//删除日志
	public void deleteLog() throws Exception{
		JSONObject result=new JSONObject();
		boolean flag=true;
		try{
			this.logService.deleteLog(log);
		}catch(Exception e){
			e.printStackTrace();
			flag=false;
		}
		result.accumulate("result",flag);
		 ResponseWriterOut.writer(ServletActionContext.getResponse(),json.toString());
	}
}
	
 /*private static String filepath = "C:\\log\\";
 private static Calendar c = Calendar.getInstance();
 private static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
 /**
  * 记录日志文件
  * @param file
  * @param username
  * @param ip
  * @param dowhat
  */
 /*public static void saveLog(File file, String username,String ip,String dowhat){
     BufferedWriter bw = null;
     try {
      bw = new BufferedWriter(new OutputStreamWriter(
      new FileOutputStream(file, true)));
      bw.write("用户 "+username+",ip为  "+ip+",进行了 "+dowhat+" 操作\n");
      bw.flush();
  } catch (FileNotFoundException e) {
   System.out.println("文件未找到");
  } catch (IOException e) {
   // TODO Auto-generated catch block
   e.printStackTrace();
  }
  finally{
   if(null!=bw){
    try {
     bw.close();
    } catch (IOException e) {
     System.out.println("流操作异常");
    }
   }
  }
 }
 
 /**
  * 根据时间创建日志文件
  * @return
  */
 /*public static File createFile(){
  //每天创建一个日志文件,名称为"2015-11-30.txt"
  File file = null;
  try {
   file = new File(filepath+sdf.format(c.getTime())+".txt");
   if(!file.exists()){
    file.createNewFile();
   }
  } catch (Exception e) {
   System.out.println("路径不存在");
  }
  return file;
 }
 
 public static void main(String[] args) {
  File file = createFile();
  saveLog(file, "windforce", "192.168.0.1", "上传");
 }
}*/