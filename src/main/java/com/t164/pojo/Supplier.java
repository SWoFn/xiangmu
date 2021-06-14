package com.t164.pojo;


public class Supplier {

  private Integer id;
  private String supplierNum;
  private String supplierName;
  private Double supplierMoney;
  private String supplierPhone;
  private String supplierZuoji;
  private String supplierContact;
  private Integer supplierState;
  private String supplierEmail;
  private String supplierFax;
  private String supplierAddress;
  private String supplierNote;
  private java.time.LocalDateTime supplierCreatTime;

  @Override
  public String toString() {
    return "Supplier{" +
            "id=" + id +
            ", supplierNum='" + supplierNum + '\'' +
            ", supplierName='" + supplierName + '\'' +
            ", supplierMoney=" + supplierMoney +
            ", supplierPhone='" + supplierPhone + '\'' +
            ", supplierZuoji='" + supplierZuoji + '\'' +
            ", supplierContact='" + supplierContact + '\'' +
            ", supplierState=" + supplierState +
            ", supplierEmail='" + supplierEmail + '\'' +
            ", supplierFax='" + supplierFax + '\'' +
            ", supplierAddress='" + supplierAddress + '\'' +
            ", supplierNote='" + supplierNote + '\'' +
            ", supplierCreatTime=" + supplierCreatTime +
            '}';
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public String getSupplierNum() {
    return supplierNum;
  }

  public void setSupplierNum(String supplierNum) {
    this.supplierNum = supplierNum;
  }


  public String getSupplierName() {
    return supplierName;
  }

  public void setSupplierName(String supplierName) {
    this.supplierName = supplierName;
  }


  public Double getSupplierMoney() {
    return supplierMoney;
  }

  public void setSupplierMoney(Double supplierMoney) {
    this.supplierMoney = supplierMoney;
  }


  public String getSupplierPhone() {
    return supplierPhone;
  }

  public void setSupplierPhone(String supplierPhone) {
    this.supplierPhone = supplierPhone;
  }


  public String getSupplierZuoji() {
    return supplierZuoji;
  }

  public void setSupplierZuoji(String supplierZuoji) {
    this.supplierZuoji = supplierZuoji;
  }


  public String getSupplierContact() {
    return supplierContact;
  }

  public void setSupplierContact(String supplierContact) {
    this.supplierContact = supplierContact;
  }


  public Integer getSupplierState() {
    return supplierState;
  }

  public void setSupplierState(Integer supplierState) {
    this.supplierState = supplierState;
  }


  public String getSupplierEmail() {
    return supplierEmail;
  }

  public void setSupplierEmail(String supplierEmail) {
    this.supplierEmail = supplierEmail;
  }


  public String getSupplierFax() {
    return supplierFax;
  }

  public void setSupplierFax(String supplierFax) {
    this.supplierFax = supplierFax;
  }


  public String getSupplierAddress() {
    return supplierAddress;
  }

  public void setSupplierAddress(String supplierAddress) {
    this.supplierAddress = supplierAddress;
  }


  public String getSupplierNote() {
    return supplierNote;
  }

  public void setSupplierNote(String supplierNote) {
    this.supplierNote = supplierNote;
  }


  public java.time.LocalDateTime getSupplierCreatTime() {
    return supplierCreatTime;
  }

  public void setSupplierCreatTime(java.time.LocalDateTime supplierCreatTime) {
    this.supplierCreatTime = supplierCreatTime;
  }

}
