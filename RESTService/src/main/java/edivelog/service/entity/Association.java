/*
 * Project:		RESTService
 * Package:		edivelog.service.entity
 * File: 		Association.java
 *
 * Created:		Sep 5, 2018
 * Author:		amondruffel (Sophos Technology GmbH)
 * Copyright:	(C) 2018 Sophos Technology GmbH
 */
package edivelog.service.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Association
{

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer associationID;
    
    @Column(name = "Association", length = 100, nullable=false)
    private String association;
    
    @Column(name = "Description", length = 255, nullable=true)
    private String description;
    
    @Column(name = "Remark", length = 255, nullable=true)
    private String remark;
    
    @Column(name = "isCheckedOut", nullable=true)
    private boolean isCheckedOut;
    
    @Column(name = "Action", length = 255, nullable=true)
    private String action;
    
    @Column(name = "isInvalid", nullable=true)
    private boolean isInvalid;
    
    @Column(name = "TimeCreate", nullable=false)
    private Date timeCreate;
    
    @Column(name = "TimeUpdate", nullable=true)
    private Date timeUpdate;
    
    @Column(name = "UpdatedUser", length = 255, nullable=true)
    private String updatedUser;
    
    @Column(name = "UpdateCount", length = 11, nullable=false)
    private int updateCount;
    
    protected Association() {}
    
    public Association(String association, Date timeCreate, int updateCount)
    {
        this.association = association;
        this.timeCreate = timeCreate;
        this.updateCount = updateCount;
    }
    
    public Integer getAssociationID()
    {
        return associationID;
    }

    public void setAsscociationID(Integer associationID)
    {
        this.associationID = associationID;
    }

    public String getAssociation()
    {
        return association;
    }

    public void setAssociation(String association)
    {
        this.association = association;
    }

    public String getDescription()
    {
        return description;
    }

    public void setDescription(String description)
    {
        this.description = description;
    }

    public String getRemark()
    {
        return remark;
    }

    public void setRemark(String remark)
    {
        this.remark = remark;
    }

    public boolean isCheckedOut()
    {
        return isCheckedOut;
    }

    public void setCheckedOut(boolean isCheckedOut)
    {
        this.isCheckedOut = isCheckedOut;
    }

    public String getAction()
    {
        return action;
    }

    public void setAction(String action)
    {
        this.action = action;
    }

    public boolean isInvalid()
    {
        return isInvalid;
    }

    public void setInvalid(boolean isInvalid)
    {
        this.isInvalid = isInvalid;
    }

    public Date getTimeCreate()
    {
        return timeCreate;
    }

    public void setTimeCreate(Date timeCreate)
    {
        this.timeCreate = timeCreate;
    }

    public Date getTimeUpdate()
    {
        return timeUpdate;
    }

    public void setTimeUpdate(Date timeUpdate)
    {
        this.timeUpdate = timeUpdate;
    }

    public String getUpdatedUser()
    {
        return updatedUser;
    }

    public void setUpdatedUser(String updatedUser)
    {
        this.updatedUser = updatedUser;
    }

    public int getUpdateCount()
    {
        return updateCount;
    }

    public void setUpdateCount(int updateCount)
    {
        this.updateCount = updateCount;
    }
    
}
