package com.t164.pojo;


import java.time.LocalDateTime;

public class ShopWh {

  private Integer id;
  private String whName;
  private Integer count;
  private Integer updateId;
  private LocalDateTime shopLastupdate;

  private String name;

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Integer getCount() {
    return count;
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

  public void setCount(Integer count) {
    this.count = count;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public String getWhName() {
    return whName;
  }

  public void setWhName(String whName) {
    this.whName = whName;
  }

}
