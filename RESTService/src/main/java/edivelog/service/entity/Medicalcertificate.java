package edivelog.service.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.sql.Timestamp;


/**
 * The persistent class for the medicalcertificate database table.
 * 
 */
@Entity
@Table(name="medicalcertificate")
@NamedQuery(name="Medicalcertificate.findAll", query="SELECT m FROM Medicalcertificate m")
public class Medicalcertificate implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(length=255)
	private String action;

	@Column(nullable=false)
	private int certificatID;

	@Column(length=255)
	private String description;

	@Column(nullable=false)
	private int diverID;

	@Column(length=255)
	private String doctor;

	@Column(length=255)
	private String image;

	private byte isCheckedOut;

	private byte isInvalid;

	@Temporal(TemporalType.DATE)
	@Column(nullable=false)
	private Date issueDate;

	@Column(length=255)
	private String limitations;

	@Column(nullable=false)
	private int nextExamination;

	@Column(length=255)
	private String remark;

	@Column(nullable=false)
	private Timestamp timeCreate;

	private Timestamp timeUpdate;

	@Column(nullable=false)
	private int updateCount;

	@Column(length=255)
	private String updatedUser;

	public Medicalcertificate() {
	}

	public String getAction() {
		return this.action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public int getCertificatID() {
		return this.certificatID;
	}

	public void setCertificatID(int certificatID) {
		this.certificatID = certificatID;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getDiverID() {
		return this.diverID;
	}

	public void setDiverID(int diverID) {
		this.diverID = diverID;
	}

	public String getDoctor() {
		return this.doctor;
	}

	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
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

	public String getLimitations() {
		return this.limitations;
	}

	public void setLimitations(String limitations) {
		this.limitations = limitations;
	}

	public int getNextExamination() {
		return this.nextExamination;
	}

	public void setNextExamination(int nextExamination) {
		this.nextExamination = nextExamination;
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