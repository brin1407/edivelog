package edivelog.service.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the tanktype database table.
 * 
 */
@Entity
@Table(name="tanktype")
@NamedQuery(name="Tanktype.findAll", query="SELECT t FROM Tanktype t")
public class Tanktype implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(length=255)
	private String action;

	@Column(length=255)
	private String description;

	private byte isCheckedOut;

	private byte isInvalid;

	@Column(length=255)
	private String remark;

	@Column(nullable=false, length=80)
	private String tankType;

	@Column(nullable=false)
	private int tankTypeID;

	@Column(nullable=false)
	private Timestamp timeCreate;

	private Timestamp timeUpdate;

	@Column(nullable=false)
	private int updateCount;

	@Column(length=255)
	private String updatedUser;

	public Tanktype() {
	}

	public String getAction() {
		return this.action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public byte getIsCheckedOut() {
		return this.isCheckedOut;
	}

	public void setIsCheckedOut(byte isCheckedOut) {
		this.isCheckedOut = isCheckedOut;
	}

	public byte getIsInvalid() {
		return this.isInvalid;
	}

	public void setIsInvalid(byte isInvalid) {
		this.isInvalid = isInvalid;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getTankType() {
		return this.tankType;
	}

	public void setTankType(String tankType) {
		this.tankType = tankType;
	}

	public int getTankTypeID() {
		return this.tankTypeID;
	}

	public void setTankTypeID(int tankTypeID) {
		this.tankTypeID = tankTypeID;
	}

	public Timestamp getTimeCreate() {
		return this.timeCreate;
	}

	public void setTimeCreate(Timestamp timeCreate) {
		this.timeCreate = timeCreate;
	}

	public Timestamp getTimeUpdate() {
		return this.timeUpdate;
	}

	public void setTimeUpdate(Timestamp timeUpdate) {
		this.timeUpdate = timeUpdate;
	}

	public int getUpdateCount() {
		return this.updateCount;
	}

	public void setUpdateCount(int updateCount) {
		this.updateCount = updateCount;
	}

	public String getUpdatedUser() {
		return this.updatedUser;
	}

	public void setUpdatedUser(String updatedUser) {
		this.updatedUser = updatedUser;
	}

}