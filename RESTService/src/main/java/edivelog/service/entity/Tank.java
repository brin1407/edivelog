package edivelog.service.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the tanks database table.
 * 
 */
@Entity
@Table(name="tanks")
@NamedQuery(name="Tank.findAll", query="SELECT t FROM Tank t")
public class Tank implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(length=255)
	private String action;

	@Column(length=255)
	private String description;

	private byte isCheckedOut;

	private byte isInvalid;

	@Column(nullable=false)
	private float pressure;

	@Column(length=255)
	private String remark;

	@Column(nullable=false)
	private float size;

	@Column(nullable=false)
	private int tanksID;

	@Column(nullable=false)
	private int tankType;

	@Column(nullable=false)
	private Timestamp timeCreate;

	private Timestamp timeUpdate;

	@Column(nullable=false)
	private int updateCount;

	@Column(length=255)
	private String updatedUser;

	public Tank() {
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

	public float getPressure() {
		return this.pressure;
	}

	public void setPressure(float pressure) {
		this.pressure = pressure;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public float getSize() {
		return this.size;
	}

	public void setSize(float size) {
		this.size = size;
	}

	public int getTanksID() {
		return this.tanksID;
	}

	public void setTanksID(int tanksID) {
		this.tanksID = tanksID;
	}

	public int getTankType() {
		return this.tankType;
	}

	public void setTankType(int tankType) {
		this.tankType = tankType;
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