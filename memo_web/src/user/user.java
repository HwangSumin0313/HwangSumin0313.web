package user;

import java.io.Serializable;

public class user implements Serializable {
  private static final long serialVersionUID = -2965851871838912447L;
  
  String userID;
  
  String userPassword;
  
  String userName;
  
  String userGender;
  
  String userEmail;
  
  public user() {}
  
  public user(String userID, String userPassword, String userName, String userGender, String userEmail) {
    this.userID = userID;
    this.userPassword = userPassword;
    this.userName = userName;
    this.userGender = userGender;
    this.userEmail = userEmail;
  }
  
  public String getUserID() {
    return this.userID;
  }
  
  public void setUserID(String userID) {
    this.userID = userID;
  }
  
  public String getUserPassword() {
    return this.userPassword;
  }
  
  public void setUserPassword(String userPassword) {
    this.userPassword = userPassword;
  }
  
  public String getUserName() {
    return this.userName;
  }
  
  public void setUserName(String userName) {
    this.userName = userName;
  }
  
  public String getUserGender() {
    return this.userGender;
  }
  
  public void setUserGender(String userGender) {
    this.userGender = userGender;
  }
  
  public String getUserEmail() {
    return this.userEmail;
  }
  
  public void setUserEmail(String userEmail) {
    this.userEmail = userEmail;
  }
}