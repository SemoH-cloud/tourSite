package cmRegister;

public class CmRegisterDTO {

	int author; //±Û¹øÈ£
	String userID;
	String title;
	String content;
	//int likeCount;
	
	public int getAuthor() {
		return author;
	}
	public void setAuthor(int author) {
		this.author = author;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	//public int getLikeCount() {
	//	return likeCount;
	//}
	//public void setLikeCount(int likeCount) {
	//	this.likeCount = likeCount;
	//}
	public CmRegisterDTO() {
		
	}
	public CmRegisterDTO(int author, String userID, String title, String content, int likeCount) {
		super();
		this.author = author;
		this.userID = userID;
		this.title = title;
		this.content = content;
		//this.likeCount = likeCount;
	}
	

	
}
