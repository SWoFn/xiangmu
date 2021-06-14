package com.t164.pojo;


public class Client {

  private Integer id;
  private String clientNum;
  private String clientName;
  private Double clientMoney;
  private String clientPhone;
  private String clientZuoji;
  private String clientContact;
  private Integer clientState;

  @Override
  public String toString() {
    return "Client{" +
            "id=" + id +
            ", clientNum='" + clientNum + '\'' +
            ", clientName='" + clientName + '\'' +
            ", clientMoney=" + clientMoney +
            ", clientPhone='" + clientPhone + '\'' +
            ", clientZuoji='" + clientZuoji + '\'' +
            ", clientContact='" + clientContact + '\'' +
            ", clientState=" + clientState +
            '}';
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public String getClientNum() {
    return clientNum;
  }

  public void setClientNum(String clientNum) {
    this.clientNum = clientNum;
  }


  public String getClientName() {
    return clientName;
  }

  public void setClientName(String clientName) {
    this.clientName = clientName;
  }


  public Double getClientMoney() {
    return clientMoney;
  }

  public void setClientMoney(Double clientMoney) {
    this.clientMoney = clientMoney;
  }


  public String getClientPhone() {
    return clientPhone;
  }

  public void setClientPhone(String clientPhone) {
    this.clientPhone = clientPhone;
  }


  public String getClientZuoji() {
    return clientZuoji;
  }

  public void setClientZuoji(String clientZuoji) {
    this.clientZuoji = clientZuoji;
  }


  public String getClientContact() {
    return clientContact;
  }

  public void setClientContact(String clientContact) {
    this.clientContact = clientContact;
  }


  public Integer getClientState() {
    return clientState;
  }

  public void setClientState(Integer clientState) {
    this.clientState = clientState;
  }

}
