package com.t164.pojo;


import java.time.LocalDateTime;

public class Admin {

  private Integer id;
  private String name;
  private String password;
  private String email;
  private LocalDateTime createTime;
  private LocalDateTime loginTime;
  private Integer content;

  @Override
  public String toString() {
    return "Admin{" +
            "id=" + id +
            ", name='" + name + '\'' +
            ", password='" + password + '\'' +
            ", email='" + email + '\'' +
            ", createTime=" + createTime +
            ", loginTime=" + loginTime +
            ", content=" + content +
            '}';
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public LocalDateTime getCreateTime() {
    return createTime;
  }

  public void setCreateTime(LocalDateTime createTime) {
    this.createTime = createTime;
  }

  public LocalDateTime getLoginTime() {
    return loginTime;
  }

  public void setLoginTime(LocalDateTime loginTime) {
    this.loginTime = loginTime;
  }

  public Integer getContent() {
    return content;
  }

  public void setContent(Integer content) {
    this.content = content;
  }

  public Admin(Integer id, String name, String password, String email, LocalDateTime createTime, LocalDateTime loginTime, Integer content) {
    this.id = id;
    this.name = name;
    this.password = password;
    this.email = email;
    this.createTime = createTime;
    this.loginTime = loginTime;
    this.content = content;
  }

  public Admin() {

  }
}
