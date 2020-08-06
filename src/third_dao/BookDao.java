package third_dao;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;
import third.Book;

public class BookDao {

	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://www.db4free.net:3306/skek_001","ptrc8727","Littlefireptrc@8727");      
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}
	
	public static int save(Book u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into register(title,author,comments) values(?,?,?)");  
	        ps.setString(1,u.getTitle());  
	        ps.setString(2,u.getAuthor());  
	        ps.setString(3,u.getComments());    
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}
	
	public static int update(Book u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update register set title=?,author=?,comments=? where id=?");  
	        ps.setString(1,u.getTitle());  
	        ps.setString(2,u.getAuthor());  
	        ps.setString(3,u.getComments());    
	        ps.setInt(4,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}
	
	public static int delete(Book u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from register where id=?");  
	        ps.setInt(1,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}
	
	public static List<Book> getAllRecords(){  
	    List<Book> list=new ArrayList<Book>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from register");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            Book u=new Book();  
	            u.setId(rs.getInt("id"));  
	            u.setTitle(rs.getString("title"));  
	            u.setAuthor(rs.getString("author"));  
	            u.setComments(rs.getString("comments"));    
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}
	
	public static Book getRecordById(int id){  
	    Book u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from register where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Book();  
	            u.setId(rs.getInt("id"));  
	            u.setTitle(rs.getString("title"));  
	            u.setAuthor(rs.getString("author"));  
	            u.setComments(rs.getString("comments"));    
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}
	
}
