package com.springbook.biz.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JDBCUtil {
	public static Connection getConnection() {
		try {
			Class.forName("org.h2.Driver");
			return	DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa","");
		}catch(Exception e){
			System.out.println("Exception[Connection] :" + e.getMessage());
		}
		return null;
	}
	public static void close(PreparedStatement stmt, Connection conn) {
		if(stmt != null) {
			try {
				if(!stmt.isClosed()) { stmt.close();}
			}catch(Exception e){
				System.out.println("Exception[stmt=null] :" + e.getMessage());
			}finally {
				stmt=null;
			}
		}
		
		if(conn!=null) {
			try {
				if(!conn.isClosed()) { conn.close();}
			}catch(Exception e){
				System.out.println("Exception[conn=null] :" + e.getMessage());
			}finally {
				conn=null;
			}
		}
	}
//	---------------------------------------------------------------------------------------------
	public static void close(PreparedStatement stmt, Connection conn, ResultSet rs) {
		if(stmt != null) {
			try {
				if(!stmt.isClosed()) { stmt.close();}
			}catch(Exception e){
				System.out.println("Exception[stmt=null] :" + e.getMessage());
			}finally {
				stmt=null;
			}
		}
		
		if(conn!=null) {
			try {
				if(!conn.isClosed()) { conn.close();}
			}catch(Exception e){
				System.out.println("Exception[conn=null] :" + e.getMessage());
			}finally {
				conn=null;
			}
		}
		
		if(rs!=null) {
			try {
				if(!rs.isClosed()) { rs.close();}
			}catch(Exception e){
				System.out.println("Exception[rs=null] :" + e.getMessage());
			}finally {
				rs=null;
			}
		}
	}
}

