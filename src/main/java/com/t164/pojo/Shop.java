package com.t164.pojo;


public class Shop {

  private Integer id;
  private String shopTu;
  private String shopName;
  private String shopSpec;
  private String shopUnit;
  private Double shopPrice;
  private Double shopRcp;
  private String shopBrand;
  private Integer shopWh;
  private Integer shopState;
  private Integer shopType;
  private Integer createId;
  private java.time.LocalDateTime shopCreateTime;
  private Integer updateId;
  private java.time.LocalDateTime shopLastupdate;
  private ShopWh wh;
  private Shoptype type;
  private Integer iqCount;
    private Integer iqNowCount;

  public ShopWh getWh() {
        return wh;
    }

    public void setWh(ShopWh wh) {
        this.wh = wh;
    }

    public Shoptype getType() {
        return type;
    }

    public void setType(Shoptype type) {
        this.type = type;
    }

    public Integer getIqCount() {
        return iqCount;
    }

    public void setIqCount(Integer iqCount) {
        this.iqCount = iqCount;
    }

    public Integer getIqNowCount() {
        return iqNowCount;
    }

    public void setIqNowCount(Integer iqNowCount) {
        this.iqNowCount = iqNowCount;
    }

    public Integer getCreateId() {
    return createId;
  }

  public void setCreateId(Integer createId) {
    this.createId = createId;
  }

  public Integer getUpdateId() {
    return updateId;
  }

  public void setUpdateId(Integer updateId) {
    this.updateId = updateId;
  }

  public String getShopTu() {
    return shopTu;
  }

  public void setShopTu(String shopTu) {
    this.shopTu = shopTu;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public String getShopName() {
    return shopName;
  }

  public void setShopName(String shopName) {
    this.shopName = shopName;
  }


  public String getShopSpec() {
    return shopSpec;
  }

  public void setShopSpec(String shopSpec) {
    this.shopSpec = shopSpec;
  }


  public String getShopUnit() {
    return shopUnit;
  }

  public void setShopUnit(String shopUnit) {
    this.shopUnit = shopUnit;
  }


  public Double getShopPrice() {
    return shopPrice;
  }

  public void setShopPrice(Double shopPrice) {
    this.shopPrice = shopPrice;
  }


  public Double getShopRcp() {
    return shopRcp;
  }

  public void setShopRcp(Double shopRcp) {
    this.shopRcp = shopRcp;
  }


  public String getShopBrand() {
    return shopBrand;
  }

  public void setShopBrand(String shopBrand) {
    this.shopBrand = shopBrand;
  }

  public Integer getShopWh() {
    return shopWh;
  }

  public void setShopWh(Integer shopWh) {
    this.shopWh = shopWh;
  }


  public Integer getShopState() {
    return shopState;
  }

  public void setShopState(Integer shopState) {
    this.shopState = shopState;
  }


  public Integer getShopType() {
    return shopType;
  }

  public void setShopType(Integer shopType) {
    this.shopType = shopType;
  }


  public java.time.LocalDateTime getShopCreateTime() {
    return shopCreateTime;
  }

  public void setShopCreateTime(java.time.LocalDateTime shopCreateTime) {
    this.shopCreateTime = shopCreateTime;
  }


  public java.time.LocalDateTime getShopLastupdate() {
    return shopLastupdate;
  }

  public void setShopLastupdate(java.time.LocalDateTime shopLastupdate) {
    this.shopLastupdate = shopLastupdate;
  }

}
