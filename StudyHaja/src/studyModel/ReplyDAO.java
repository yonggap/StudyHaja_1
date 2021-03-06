package studyModel;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dbclose.util.CloseUtil;

public class ReplyDAO {
	
private static ReplyDAO instance = new ReplyDAO();
	
	public static ReplyDAO getInstance(){
		return instance;
	}
	
	public ReplyDAO(){	}
	
	public Connection getConnection() throws Exception{
		Context ctx = new InitialContext();
		
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc:BoardDB");
		
		DriverManager.setLogWriter(new PrintWriter(System.out));
		
		return ds.getConnection();
	}
	
	
	public void insertReply(String replyContent,String tdText){
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into Reply(id,content,reg_date,num) values('mjw',?,?,?)";
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, replyContent);
			pstmt.setTimestamp(2, new Timestamp(System.currentTimeMillis()));
			pstmt.setInt(3, Integer.parseInt(tdText));
			pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public ArrayList<ReplyVO> selectAllReply(String tdText){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ReplyVO vo = null;
		ArrayList<ReplyVO> voArr = new ArrayList<ReplyVO>();
		
		String sql = "select * from Reply where num = ? order by reg_date desc";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(tdText));
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				vo = new ReplyVO();
				vo.setId(rs.getString("id"));
				vo.setContent(rs.getString("content"));
				
				voArr.add(vo);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			CloseUtil.close(rs); CloseUtil.close(pstmt); CloseUtil.close(conn);
		}
		
		return voArr;
	}
	
	public int selectReplyAllCount(int num){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int result = 0;
		String sql = "select count(*) from Reply where num=?";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				result = rs.getInt(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			CloseUtil.close(rs); CloseUtil.close(pstmt); CloseUtil.close(conn);
		}
		
		return result;
	}
}
