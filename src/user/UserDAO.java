package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	
	public UserDAO() {
		try {

			String dbURL = "jdbc:mysql://localhost:3306/test1?characterEncoding=UTF-8&serverTimezone=UTC";
			String dbID = "root";
			String dbPassword = "rootpw";
			Class.forName("com.mysql.jdbc.Driver");

			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int login(String userID, String userPassword) {
		String sql = "SELECT userPassword FROM user where userID =?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(userPassword)) {
					return 1; // 濡쒓렇�씤 �꽦怨�
				} else
					return 0; // 鍮꾨�踰덊샇 遺덉씪移�
			}
			return -1; // �븘�씠�뵒媛� �뾾�쓬
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // error
	}

	// user �겢�옒�뒪瑜� �씠�슜�븯�뒗 �븯�굹�쓽 �씤�뒪�꽩�뒪 :�쉶�썝媛��엯 湲곕뒫 �떎�젣濡� �떎�뻾
	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES (?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserEmail());
			pstmt.setString(3, user.getUserPassword());

			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // �뜲�씠�꽣 踰좎씠�뒪 �삤瑜�
	}
}
