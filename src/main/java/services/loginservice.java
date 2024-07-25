package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import modals.login;

public class loginservice {
	private Connection conn;

	public loginservice(Connection conn) {
		super();
		this.conn = conn;
	}
	// adding data into database
	public boolean insert(login l) {
		boolean f=false;
		 try {
			String sql="insert into zomato(name,email,password,confirmpassword) values(?,?,?,?)";
			PreparedStatement pmst=conn.prepareStatement(sql);
			pmst.setString(1, l.getName());
			pmst.setString(2, l.getEmail());
			pmst.setString(3, l.getPassword());
			pmst.setString(4, l.getConfirmpassword());
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
	
	public  List<login> getall(){
		List<login> l=new ArrayList<login>();
		login ll =null;
		try {
			String sql="select * from zomato";
			PreparedStatement pmst=conn.prepareStatement(sql);
			ResultSet rs=pmst.executeQuery();
			while(rs.next()) {
				ll=new login();
				ll.setId(rs.getInt(1));
				ll.setName(rs.getString(2));
				ll.setEmail(rs.getString(3));
				ll.setPassword(rs.getString(4));
				ll.setConfirmpassword(rs.getString(5));
				l.add(ll);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return l;
		
	}
	
	// getting data from table stored in database by id
	
	public login getbyid(int id) {
		login l=null;
		
		try {
			String sql="select *from zomato where id=?";
			
			PreparedStatement pmst=conn.prepareStatement(sql);
			
			pmst.setInt(1, id);
			
			ResultSet rs=pmst.executeQuery();
			
			while(rs.next()) {
				l=new login();
				 l.setId(rs.getInt(1));
				 l.setName(rs.getString(2));
				 l.setEmail(rs.getString(3));
				 l.setPassword(rs.getString(4));
				 l.setConfirmpassword(rs.getString(5));
				 
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return l;
	}
	
	// deleting data from database by using id
	
	public boolean deletebyid(int id) {
		boolean f=false;
		try {
			String sql="delete from zomato where id=?";
			
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
