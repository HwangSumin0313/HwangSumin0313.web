package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class userDAO {
  Connection conn = null;
  
  PreparedStatement pstmt = null;
  
  ResultSet rs = null;
  
  public userDAO() {
    try {
      String driver = "oracle.jdbc.driver.OracleDriver";
      String url = "jdbc:oracle:thin:@localhost:1521:orcl";
      Class.forName(driver);
      this.conn = DriverManager.getConnection(url, "HSM", "1234");
    } catch (Exception e) {
      e.printStackTrace();
    } 
  }
  
  public int login(String id, String password) {
    try {
      this.pstmt = this.conn.prepareStatement("Select user_password from member where user_id=?");
      this.pstmt.setString(1, id);
      this.rs = this.pstmt.executeQuery();
      if (this.rs.next()) {
        if (this.rs.getString("user_password").equals(password))
          return 1; 
        return 0;
      } 
      return -1;
    } catch (SQLException e) {
      e.printStackTrace();
      return -2;
    } 
  }
  
  public int join(user user1) {
    try {
      this.pstmt = this.conn.prepareStatement("insert into member values (?,?,?,?,?)");
      this.pstmt.setString(1, user1.userID);
      this.pstmt.setString(2, user1.userPassword);
      this.pstmt.setString(3, user1.userName);
      this.pstmt.setString(4, user1.userGender);
      this.pstmt.setString(5, user1.userEmail);
      return this.pstmt.executeUpdate();
    } catch (SQLException e) {
      e.printStackTrace();
      return -1;
    } 
  }
  
  public ResultSet search(String id) {
    try {
      this.pstmt = this.conn.prepareStatement("select * from member where user_id=?");
      this.pstmt.setString(1, id);
      this.rs = this.pstmt.executeQuery();
      return this.rs;
    } catch (SQLException e) {
      e.printStackTrace();
      return this.rs;
    } 
  }
}