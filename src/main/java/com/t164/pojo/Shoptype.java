package com.t164.pojo;


import java.time.LocalDateTime;

public class Shoptype {

  private Integer id;
  private String shoptypeName;

  private Integer updateId;
  private LocalDateTime shopLastupdate;
  private Integer count;
  private String name;

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Integer getUpdateId() {
    return updateId;
  }

  public void setUpdateId(Integer updateId) {
    this.updateId = updateId;
  }

  public LocalDateTime getShopLastupdate() {
    return shopLastupdate;
  }

  public void setShopLastupdate(LocalDateTime shopLastupdate) {
    this.shopLastupdate = shopLastupdate;
  }

  public Integer getCount() {
    return count;
  }

  public void setCount(Integer count) {
    this.count = count;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public String getShoptypeName() {
    return shoptypeName;
  }

  public void setShoptypeName(String shoptypeName) {
    this.shoptypeName = shoptypeName;
  }

}
