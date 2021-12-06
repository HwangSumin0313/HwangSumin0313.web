package memo;

public class memo {
  private int memoId;
  
  private String title;
  
  private String content;
  
  private String userId;
  
  private String indate;
  
  private int exist;
  
  public memo(int memoId, String title, String content, String userId, String indate, int exist) {
    this.memoId = memoId;
    this.title = title;
    this.userId = userId;
    this.indate = indate;
    this.exist = exist;
    this.content = content;
  }
  
  public int getId() {
    return this.memoId;
  }
  
  public void setId(int memoId) {
    this.memoId = memoId;
  }
  
  public String getTitle() {
    return this.title;
  }
  
  public void setTitle(String title) {
    this.title = title;
  }
  
  public String getUserId() {
    return this.userId;
  }
  
  public void setUserId(String userId) {
    this.userId = userId;
  }
  
  public String getIndate() {
    return this.indate;
  }
  
  public void setIndate(String indate) {
    this.indate = indate;
  }
  
  public int getExist() {
    return this.exist;
  }
  
  public void setExist(int exist) {
    this.exist = exist;
  }
  
  public String getContent() {
    return this.content;
  }
  
  public void setContent(String content) {
    this.content = content;
  }
}