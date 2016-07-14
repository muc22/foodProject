package com.res.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.resource.model.Record;
import com.resource.model.RecordId;

@Service @Transactional
public class RecordDAO {
	@Resource SessionFactory factory;
	
    public  void AddRecord(Record record) throws Exception {
    	Session s = factory.getCurrentSession();
    	s.save(record);
    }
    
    public void DeleteRecord (Integer recordId) throws Exception {
        Session s = factory.getCurrentSession(); 
        Object record = s.load(Record.class, recordId);
        s.delete(record);
    }
    
    public void UpdateRecord(Record record) throws Exception {
        Session s = factory.getCurrentSession();
        s.update(record);
    }
    
    public ArrayList<Record> QueryAllRecord() {
        Session s = factory.getCurrentSession();
        String hql = "From Record";
        Query q = s.createQuery(hql);
        List recordList = q.list();
        return (ArrayList<Record>) recordList;
    }

    public Record GetRecordById(Integer recordid) {
        Session s = factory.getCurrentSession();
        Record record = (Record)s.get(Record.class, recordid);
        return record;
    }
    
    public ArrayList<Record> QueryRecordInfo(String filename) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From Record record where 1=1";
    	if(!filename.equals("")) hql = hql + " and record.filename like '%" + filename + "%'";
    	Query q = s.createQuery(hql);
    	List recordList = q.list();
    	return (ArrayList<Record>) recordList;
    }



}