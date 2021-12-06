package memo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class memoDAO {
  Connection conn = null;
  
  PreparedStatement pstmt = null;
  
  ResultSet rs = null;
  
  public memoDAO() {
    try {
      String driver = "oracle.jdbc.driver.OracleDriver";
      String url = "jdbc:oracle:thin:@localhost:1521:orcl";
      Class.forName(driver);
      this.conn = DriverManager.getConnection(url, "HSM", "1234");
    } catch (Exception e) {
      e.printStackTrace();
    } 
  }
  
  public int writeOK(String title, String content, String userId) {
    try {
      this.pstmt = this.conn.prepareStatement("insert into memo(memoid,title,content,userid,exist,indate) values(AUTO_SEQ_NUMBER.NEXTVAL,?,?,?,1,SYSDATE)");
      this.pstmt.setString(1, title);
      this.pstmt.setString(2, content);
      this.pstmt.setString(3, userId);
      this.pstmt.executeUpdate();
      return 1;
    } catch (Exception e) {
      e.printStackTrace();
      return -1;
    } 
  }
}