package edivelog.service.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.sql.Timestamp;


/**
 * The persistent class for the divesite database table.
 * 
 */
@Entity
@Table(name="divesite")
@NamedQuery(name="Divesite.findAll", query="SELECT d FROM Divesite d")
public class Divesite implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(length=255)
	private String action;

	@Column(length=255)
	private String description;

	@Column(nullable=false)
	private int diveSiteID;

	@Column(nullable=false, length=1)
	private String entrace;

	@Column(length=255)
	private String fileLocation;

	@Column(nullable=false, length=1)
	private String ground;

	private byte isCheckedOut;

	private byte isInvalid;

	@Column(precision=10, scale=2)
	private BigDecimal maxDepth;

	@Column(nullable=false, length=255)
	private String name;

	@Column(length=255)
	private String originalName;

	@Column(nullable=false)
	private int province;

	@Column(length=255)
	private String remark;

	@Lob
	private String remarks;

	@Column(nullable=false)
	private Timestamp timeCreate;

	private Timestamp timeUpdate;

	@Column(nullable=false)
	private int updateCount;

	@Column(length=255)
	private String updatedUser;

	@Column(nullable=false, length=1)
	private String waterType;

	public Divesite() {
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

	public int getDiveSiteID() {
		return this.diveSiteID;
	}

	public void setDiveSiteID(int diveSiteID) {
		this.diveSiteID = diveSiteID;
	}

	public String getEntrace() {
		return this.entrace;
	}

	public void setEntrace(String entrace) {
		this.entrace = entrace;
	}

	public String getFileLocation() {
		return this.fileLocation;
	}

	public void setFileLocation(String fileLocation) {
		this.fileLocation = fileLocation;
	}

	public String getGround() {
		return this.ground;
	}

	public void setGround(String ground) {
		this.ground = ground;
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

	public BigDecimal getMaxDepth() {
		return this.maxDepth;
	}

	public void setMaxDepth(BigDecimal maxDepth) {
		this.maxDepth = maxDepth;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOriginalName() {
		return this.originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public int getProvince() {
		return this.province;
	}

	public void setProvince(int province) {
		this.province = province;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getRemarks() {
		return this.remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
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

	public String getWaterType() {
		return this.waterType;
	}

	public void setWaterType(String waterType) {
		this.waterType = waterType;
	}

}