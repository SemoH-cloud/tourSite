package cmRegister;

import java.sql.*;

public class BbsDAO {

	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public BbsDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/test1?characterEncoding=UTF-8&servertimezone=UTC";
			String dbID = "root";
			String dbPassword = "rootpw";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public String getDate() //게시판에 글을 작성할 때 현재의 시간을 가져오는 함수
		{
			String SQL = "SELECT NOW()"; //현재의 시간을 가져오는 MySQL 문장
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					return rs.getString(1); //현재의 시간 반환
				}
					
			} catch(Exception e) {
				e.printStackTrace();
			}
			return ""; //데이텁데이스 오류
		}
		
		public int getNext() // 게시글 번호 입력 함수
		{
			String SQL = "SELECT bbsID FROM FROM BBS ORDER BY bbsID DESC"; 
			//게시글 번호는 1번부터 2번, 3, 4, ...올라가서 마지막의 번호를 가져와서 +1해준다.
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					return rs.getInt(1) + 1; //마지막의 게시글 번호에서 +1해준다.
				} 
				return 1; //첫번째 게시물인 경우
					
			} catch(Exception e) {
				e.printStackTrace();
			}
			return -1; //데이터베이스 오류
		}
		
		public int write(String bbsTitle, String userID, String bbsContent) //실제 글을 작성하는 함수
		{
			String SQL = "INSERT INTO BBS VALUE (?, ?, ?, ?, ?, ?)"; 
			//SQL문 값넣는 문장
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, getNext()); //bbsID
				pstmt.setString(2, bbsTitle);
				pstmt.setString(3, userID);
				pstmt.setString(4, getDate());
				pstmt.setString(5, bbsContent);
				pstmt.setInt(6, 1); //처음 보여지는상태 => 1
				
				rs = pstmt.executeQuery();
				return pstmt.executeUpdate();
					
			} catch(Exception e) {
				e.printStackTrace();
			}
			return -1; //데이텁데이스 오류
		}
}