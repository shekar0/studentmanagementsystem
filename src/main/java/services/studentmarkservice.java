package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import modals.login;
import modals.studentmarks;

public class studentmarkservice {
	private Connection conn;

	
	public studentmarkservice(Connection conn) {
		super();
		this.conn = conn;
	}

	// adding data into database
	public boolean insert(studentmarks s) {
		boolean f=false;
		 try {
			String sql="insert into student(name,telugu,english,hindi,maths,science,social) values(?,?,?,?,?,?,?)";
			PreparedStatement pmst=conn.prepareStatement(sql);
			pmst.setString(1, s.getName());
			pmst.setString(2, s.getTelugu());
			pmst.setString(3, s.getEnglish());
			pmst.setString(4, s.getHindi());
			pmst.setString(5, s.getMaths());
			pmst.setString(6, s.getScience());
			pmst.setString(7, s.getSocial());
			int i=pmst.executeUpdate();
			if(i>0) {
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 return f;
	}
	
	// getting data from table stored in database
	
	public  List<studentmarks> getall(){
		List<studentmarks> s=new ArrayList<studentmarks>();
		studentmarks ss =null;
		try {
			String sql="select * from student";
			PreparedStatement pmst=conn.prepareStatement(sql);
			ResultSet rs=pmst.executeQuery();
			while(rs.next()) {
				ss=new studentmarks();
				ss.setId(rs.getInt(1));
				ss.setName(rs.getString(2));
				ss.setTelugu(rs.getString(3));
				ss.setEnglish(rs.getString(4));
			    ss.setHindi(rs.getString(5));
			    ss.setMaths(rs.getString(6));
			    ss.setScience(rs.getString(7));
			    ss.setSocial(rs.getString(8));
			    
				s.add(ss);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
		
	}
	
	// getting data from table stored in database by id
	
	public studentmarks getbyid(int id) {
		studentmarks s=null;
		
		try {
			String sql="select *from student where id=?";
			
			PreparedStatement pmst=conn.prepareStatement(sql);
			
			pmst.setInt(1, id);
			
			ResultSet rs=pmst.executeQuery();
			
			while(rs.next()) {
				s=new studentmarks();
				 s.setId(rs.getInt(1));
				 s.setName(rs.getString(2));
				 s.setTelugu(rs.getString(3));
				 s.setHindi(rs.getString(3));
				 s.setHindi(rs.getString(3));
				 s.setHindi(rs.getString(3));
				 s.setHindi(rs.getString(3));
				 s.setHindi(rs.getString(3));			
				 
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}
	
	// deleting data from database by using id
	
	public boolean deletebyid(int id) {
		boolean f=false;
		try {
			String sql="delete from student where id=?";
			
			PreparedStatement pmst=conn.prepareStatement(sql);
			
			pmst.setInt(1, id);
			
			int i=pmst.executeUpdate();
			if(i>0) {
				f=true;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	
	
	//  updating data from the database by using id
	
	public boolean update(login l) {
		boolean f=false;
		try {
			String sql="update zomato set name=?,email=?,password=?,confirmpassword=? where id=?";
			PreparedStatement pmst=conn.prepareStatement(sql);
			pmst.setString(1,l.getName() );
			pmst.setString(2,l.getEmail() );
			pmst.setString(3,l.getPassword() );
			pmst.setString(4,l.getConfirmpassword() );
			pmst.setInt(5, l.getId());
			int i=pmst.executeUpdate();
			if(i>0) {
				f=true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	

}
