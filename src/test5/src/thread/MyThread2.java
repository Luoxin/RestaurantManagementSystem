package thread;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import mybeanDB.ConnectionPool;  

public class MyThread2 implements Callable<ArrayList<String>> {  
	
	 String sdangJiaID="";
	 String userID="";
	 
	 public  MyThread2(String submittype,int i) {
              if(i==1) {//1代表傳的是商家id
            	  
            	  this.sdangJiaID = submittype;
              }else {//2代表傳的是用戶id
            	  this.userID = submittype;
			}
	 }
	 
	 public void setSdangJiaID(String sdangJiaID) {
		this.sdangJiaID = sdangJiaID;
	}
	 public void setUserID(String userID) {
		this.userID = userID;
	}
	 
	 public String getSdangJiaID() {
		return sdangJiaID;
	}
	 public String getUserID() {
		return userID;
	}
	
public ArrayList<String>  call() throws Exception {     
		
		Connection conn = ConnectionPool.getInstance().getConnection();

		if(this.sdangJiaID!=null) {
			PreparedStatement stmm = conn.prepareStatement("select * from orderlist where shangJiaID=? and songcanFlag=?");	
			stmm.setString(1, this.sdangJiaID);
			String flag="0";//
			stmm.setString(2, flag);
			
			ResultSet rs=stmm.executeQuery(); 
			ArrayList<String> orderIDs = new ArrayList<String>();
			while(rs.next()) {
				orderIDs.add(rs.getString("orderID"));
			}
			stmm.close();
			ConnectionPool.getInstance().release(conn);
			return orderIDs; 
			
		}
		else {			
			PreparedStatement stmm = conn.prepareStatement("select * from orderlist where userID=? and songcanFlag=?");				
			stmm.setString(1, this.userID);
			String flag="0";
			stmm.setString(2, flag);					
			ResultSet rs=stmm.executeQuery();  
			rs.next();
			ConnectionPool.getInstance().release(conn);
			return null; 
			
		}
		
	}  
	
}  

