package edivelog.service.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author amondruffel
 *
 *Entity class representing the Activity Entity in a MySQL Database
 *
 */
@Entity
@Table(name = "Activity")
public class Activity
{

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer activityID;
    
    @Column(name = "Activity", length = 100, nullable=false)
    private String activity;
    
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
    
    protected Activity() {}
    
    public Activity(String activity, Date timeCreate, int updateCount)
    {
        this.activity = activity;
        this.timeCreate = timeCreate;
        this.updateCount = updateCount;
    }
    
    public Integer getActivityID()
    {
        return activityID;
    }

    public void setActivityID(Integer activityID)
    {
        this.activityID = activityID;
    }

    public String getActivity()
    {
        return activity;
    }

    public void setActivity(String activity)
    {
        this.activity = activity;
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
