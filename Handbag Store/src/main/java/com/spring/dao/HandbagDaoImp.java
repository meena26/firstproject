package com.spring.dao;

//import javax.websocket.Session;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Handbag;



@Repository
@Transactional
public class HandbagDaoImp implements HandbagDao {
@Autowired

private SessionFactory sessionFactory;
//bookdaoimpl.setsessionFactory(sessionFactory)
	public SessionFactory getSessionFactory() {
	return sessionFactory;
}

public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}
	public List<Handbag> getAllHandbags() {
		System.out.println("////////////");
		//it will open a new session always.
		Session session=sessionFactory.openSession();
		System.out.println("hiis");
		//Selecting all records from the table
		List<Handbag> handbags=session.createQuery("from Handbag").list();
		session.close();// close the session.
		
		return handbags;
		
	}
	public Handbag getHandbagById(int i) {
		//reading the record from the table
	  Session session=sessionFactory.openSession();
	//select * from handbag where isbn=i
	//if we call get method,Record doesnot exist it will return null
	//if we call load, if the record doesnt exist it will throw exception
	  Handbag handbag=(Handbag) session.get(Handbag.class, i);  
	session.close();
	return handbag;
	}
	public void deleteHandbag(int id){
		 Session session=sessionFactory.openSession();
		 Handbag handbag=(Handbag) session.get(Handbag.class, id);
		session.delete(handbag);
		 session.flush();
		session.close();//closes the session
		}
 	public void addHandbag(Handbag handbag) {
    		Session session=sessionFactory.openSession();
    		//insert into handbagstoreapp values(..)
    		//isbn=0,title,price,categoryid
    		session.save(handbag);
    		session.flush();
    		//isbn=16
    		session.close();	
    }	 	
public void editHandbag(Handbag handbag)
{
	 Session session=sessionFactory.openSession();
	 //update handbagapp set ....where isbn=?
	/*// Handbag handbag=(Handbag) session.get(Handbag.class, isbn);
*/	session.update(handbag);
	 session.flush();
	session.close();
}
}


