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
	
	
	public String getDate() //�Խ��ǿ� ���� �ۼ��� �� ������ �ð��� �������� �Լ�
		{
			String SQL = "SELECT NOW()"; //������ �ð��� �������� MySQL ����
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					return rs.getString(1); //������ �ð� ��ȯ
				}
					
			} catch(Exception e) {
				e.printStackTrace();
			}
			return ""; //�����ӵ��̽� ����
		}
		
		public int getNext() // �Խñ� ��ȣ �Է� �Լ�
		{
			String SQL = "SELECT bbsID FROM FROM BBS ORDER BY bbsID DESC"; 
			//�Խñ� ��ȣ�� 1������ 2��, 3, 4, ...�ö󰡼� �������� ��ȣ�� �����ͼ� +1���ش�.
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					return rs.getInt(1) + 1; //�������� �Խñ� ��ȣ���� +1���ش�.
				} 
				return 1; //ù��° �Խù��� ���
					
			} catch(Exception e) {
				e.printStackTrace();
			}
			return -1; //�����ͺ��̽� ����
		}
		
		public int write(String bbsTitle, String userID, String bbsContent) //���� ���� �ۼ��ϴ� �Լ�
		{
			String SQL = "INSERT INTO BBS VALUE (?, ?, ?, ?, ?, ?)"; 
			//SQL�� ���ִ� ����
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, getNext()); //bbsID
				pstmt.setString(2, bbsTitle);
				pstmt.setString(3, userID);
				pstmt.setString(4, getDate());
				pstmt.setString(5, bbsContent);
				pstmt.setInt(6, 1); //ó�� �������»��� => 1
				
				rs = pstmt.executeQuery();
				return pstmt.executeUpdate();
					
			} catch(Exception e) {
				e.printStackTrace();
			}
			return -1; //�����ӵ��̽� ����
		}
}