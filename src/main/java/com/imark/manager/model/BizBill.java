package com.imark.manager.model;
// Generated 2016-2-1 22:01:32 by Hibernate Tools 3.2.2.GA


import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;

/**
 * BizBill generated by hbm2java
 */
@Entity
@Table(name="BIZ_BILL")
public class BizBill  implements java.io.Serializable {

	 //主键
     private String id;
     //入账时间
     private Date billDate;
     //账单类型
     private String billType;
     //账单名称
     private String billName;
     //金额
     private BigDecimal amount;
     //收益
     private BigDecimal earnings;
     //收益比例
     private BigDecimal earningsRatio;
     //更新人
     private String updateUser;
     //更新时间
     private Date updateDate;
     //排序
     private String disOrder;

    public BizBill() {
    }

	
    public BizBill(String id) {
        this.id = id;
    }
    public BizBill(String id, Date billDate, String billType, String billName, BigDecimal amount, BigDecimal earnings, BigDecimal earningsRatio, String updateUser, Date updateDate, String disOrder) {
       this.id = id;
       this.billDate = billDate;
       this.billType = billType;
       this.billName = billName;
       this.amount = amount;
       this.earnings = earnings;
       this.earningsRatio = earningsRatio;
       this.updateUser = updateUser;
       this.updateDate = updateDate;
       this.disOrder = disOrder;
    }
   
    @Id 
    @Column(name="ID", unique=true, nullable=false, length=32)
    @GenericGenerator(name="generator",strategy="uuid.hex")
    @GeneratedValue(generator="generator")
    public String getId() {
        return this.id;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    @Temporal(TemporalType.DATE)
    @Column(name="BILL_DATE")
    public Date getBillDate() {
        return this.billDate;
    }
    
    public void setBillDate(Date billDate) {
        this.billDate = billDate;
    }
    
    @Column(name="BILL_TYPE", length=10)
    public String getBillType() {
        return this.billType;
    }
    
    public void setBillType(String billType) {
        this.billType = billType;
    }
    
    @Column(name="BILL_NAME", length=200)
    public String getBillName() {
        return this.billName;
    }
    
    public void setBillName(String billName) {
        this.billName = billName;
    }
    
    @Column(name="AMOUNT", precision=10)
    public BigDecimal getAmount() {
        return this.amount;
    }
    
    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }
    
    @Column(name="EARNINGS", precision=10)
    public BigDecimal getEarnings() {
        return this.earnings;
    }
    
    public void setEarnings(BigDecimal earnings) {
        this.earnings = earnings;
    }
    
    @Column(name="EARNINGS_RATIO", precision=10)
    public BigDecimal getEarningsRatio() {
        return this.earningsRatio;
    }
    
    public void setEarningsRatio(BigDecimal earningsRatio) {
        this.earningsRatio = earningsRatio;
    }
    
    @Column(name="UPDATE_USER", length=10)
    public String getUpdateUser() {
        return this.updateUser;
    }
    
    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser;
    }
    @Temporal(TemporalType.DATE)
    @Column(name="UPDATE_DATE")
    public Date getUpdateDate() {
        return this.updateDate;
    }
    
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
    
    @Column(name="DIS_ORDER", length=10)
    public String getDisOrder() {
        return this.disOrder;
    }
    
    public void setDisOrder(String disOrder) {
        this.disOrder = disOrder;
    }




}


