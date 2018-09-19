package edivelog.service.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the association database table.
 * 
 */
@Entity
@Table(name="association")
@NamedQuery(name="Association.findAll", query="SELECT a FROM Association a")
public class Association implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(length=255)
	private String action;

	@Column(length=255)
	private String association;

	@Column(nullable=false)
	private int associationID;

	@Column(length=255)
	private String description;

	private byte isCheckedOut;

	private byte isInvalid;

	@Column(length=255)
	private String remark;

	@Column(nullable=false, length=5)
	private String shortAssociation;

	@Column(nullable=false)
	private Timestamp timeCreate;

	private Timestamp timeUpdate;

	@Column(nullable=false)
	private int updateCount;

	@Column(length=255)
	private String updatedUser;

	public Association() {
	}

	public String getAction() {
		return this.action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public String getAssociation() {
		return this.association;
	}

	public void setAssociation(String association) {
		this.association = association;
	}

	public int getAssociationID() {
		return this.associationID;
	}

	public void setAssociationID(int associationID) {
		this.associationID = associationID;
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

	public String getShortAssociation() {
		return this.shortAssociation;
	}

	public void setShortAssociation(String shortAssociation) {
		this.shortAssociation = shortAssociation;
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