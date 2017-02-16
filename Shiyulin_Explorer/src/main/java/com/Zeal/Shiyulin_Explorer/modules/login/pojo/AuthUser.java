package com.Zeal.Shiyulin_Explorer.modules.login.pojo;

import java.util.Date;

public class AuthUser {
    private Long id;

    private String name;

    private String password;

    private String bindPhone;

    private String bindQq;

    private String bindEmail;

    private String bindWechat;

    private Integer sex;

    private String address;

    private Long img;

    private String signature;

    private Date registTime;

    private Integer age;

    private Integer lovestatus;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
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

    public String getBindPhone() {
        return bindPhone;
    }

    public void setBindPhone(String bindPhone) {
        this.bindPhone = bindPhone;
    }

    public String getBindQq() {
        return bindQq;
    }

    public void setBindQq(String bindQq) {
        this.bindQq = bindQq;
    }

    public String getBindEmail() {
        return bindEmail;
    }

    public void setBindEmail(String bindEmail) {
        this.bindEmail = bindEmail;
    }

    public String getBindWechat() {
        return bindWechat;
    }

    public void setBindWechat(String bindWechat) {
        this.bindWechat = bindWechat;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Long getImg() {
        return img;
    }

    public void setImg(Long img) {
        this.img = img;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public Date getRegistTime() {
        return registTime;
    }

    public void setRegistTime(Date registTime) {
        this.registTime = registTime;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getLovestatus() {
        return lovestatus;
    }

    public void setLovestatus(Integer lovestatus) {
        this.lovestatus = lovestatus;
    }
}