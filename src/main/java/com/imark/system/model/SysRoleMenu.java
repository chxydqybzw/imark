package com.imark.system.model;
// Generated 2016-3-8 21:27:40 by Hibernate Tools 3.2.2.GA


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * SysRoleMenu generated by hbm2java
 */
@Entity
@Table(name="SYS_ROLE_MENU")
public class SysRoleMenu  implements java.io.Serializable {


     private String id;
     private String roleId;
     private String menuId;
     private String updateUser;
     private Date updateDate;

    public SysRoleMenu() {
    }

	
    public SysRoleMenu(String id, String roleId, String menuId) {
        this.id = id;
        this.roleId = roleId;
        this.menuId = menuId;
    }
    public SysRoleMenu(String id, String roleId, String menuId, String updateUser, Date updateDate) {
       this.id = id;
       this.roleId = roleId;
       this.menuId = menuId;
       this.updateUser = updateUser;
       this.updateDate = updateDate;
    }
   
     @Id 
    
    @Column(name="ID", unique=true, nullable=false, length=36)
    public String getId() {
        return this.id;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    
    @Column(name="ROLE_ID", nullable=false, length=36)
    public String getRoleId() {
        return this.roleId;
    }
    
    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }
    
    @Column(name="MENU_ID", nullable=false, length=36)
    public String getMenuId() {
        return this.menuId;
    }
    
    public void setMenuId(String menuId) {
        this.menuId = menuId;
    }
    
    @Column(name="UPDATE_USER", length=36)
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




}


