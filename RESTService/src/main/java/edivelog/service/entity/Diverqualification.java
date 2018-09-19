package edivelog.service.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.sql.Timestamp;


/**
 * The persistent class for the diverqualification database table.
 * 
 */
@Entity
@Table(name="diverqualification")
@NamedQuery(name="Diverqualification.findAll", query="SELECT d FROM Diverqualification d")
public class Diverqualification implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(length=255)
	private String action;

	@Column(length=255)
	private String description;

	@Column(nullable=false)
	private int diver;

	@Column(nullable=false)
	private int diverQualificationID;

	private byte isCheckedOut;

	private byte isInvalid;

	@Temporal(TemporalType.DATE)
	@Column(nullable=false)
	private Date issueDate;

	@Column(nullable=false)
	private int qualification;

	@Column(length=255)
	private String remark;

	@Column(nullable=false)
	private Timestamp timeCreate;

	private Timestamp timeUpdate;

	@Column(nullable=false)
	private int updateCount;

	@Column(length=255)
	private String updatedUser;

	public Diverqualification() {
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

	public int getDiver() {
		return this.diver;
	}

	public void setDiver(int diver) {
		this.diver = diver;
	}

	public int getDiverQualificationID() {
		return this.diverQualificationID;
	}

	public void setDiverQualificationID(int diverQualificationID) {
		this.diverQualificationID = diverQualificationID;
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

	public Date getIssueDate() {
		return this.issueDate;
	}

	public void setIssueDate(Date issueDate) {
		this.issueDate = issueDate;
	}

	public int getQualification() {
		return this.qualification;
	}

	public void setQualification(int qualification) {
		this.qualification = qualification;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
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