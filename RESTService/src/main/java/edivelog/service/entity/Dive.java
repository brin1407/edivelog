package edivelog.service.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.sql.Time;
import java.util.Date;
import java.sql.Timestamp;


/**
 * The persistent class for the dive database table.
 * 
 */
@Entity
@Table(name="dive")
@NamedQuery(name="Dive.findAll", query="SELECT d FROM Dive d")
public class Dive implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(length=255)
	private String action;

	private byte decompression;

	@Column(length=255)
	private String decompressionRemark;

	@Column(length=255)
	private String description;

	private int dischargePressure;

	@Temporal(TemporalType.DATE)
	@Column(nullable=false)
	private Date diveDate;

	private Time diveEnd;

	@Column(nullable=false)
	private int diveID;

	@Column(nullable=false)
	private int diver;

	@Column(nullable=false)
	private int diveSite;

	private Time diveStart;

	@Column(nullable=false)
	private int diveTime;

	private int footlets;

	private int glove;

	private int initialPressure;

	private byte isApproved;

	private byte isCheckedOut;

	private byte isInvalid;

	private int jacket;

	@Column(precision=10, scale=1)
	private BigDecimal leadWeight;

	@Column(nullable=false)
	private int logBookID;

	@Column(nullable=false, precision=10, scale=2)
	private BigDecimal maxDepth;

	@Column(length=255)
	private String remark;

	private int suite;

	private int tank;

	@Column(nullable=false)
	private Timestamp timeCreate;

	private Timestamp timeUpdate;

	@Column(nullable=false)
	private int updateCount;

	@Column(length=255)
	private String updatedUser;

	public Dive() {
	}

	public String getAction() {
		return this.action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public byte getDecompression() {
		return this.decompression;
	}

	public void setDecompression(byte decompression) {
		this.decompression = decompression;
	}

	public String getDecompressionRemark() {
		return this.decompressionRemark;
	}

	public void setDecompressionRemark(String decompressionRemark) {
		this.decompressionRemark = decompressionRemark;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getDischargePressure() {
		return this.dischargePressure;
	}

	public void setDischargePressure(int dischargePressure) {
		this.dischargePressure = dischargePressure;
	}

	public Date getDiveDate() {
		return this.diveDate;
	}

	public void setDiveDate(Date diveDate) {
		this.diveDate = diveDate;
	}

	public Time getDiveEnd() {
		return this.diveEnd;
	}

	public void setDiveEnd(Time diveEnd) {
		this.diveEnd = diveEnd;
	}

	public int getDiveID() {
		return this.diveID;
	}

	public void setDiveID(int diveID) {
		this.diveID = diveID;
	}

	public int getDiver() {
		return this.diver;
	}

	public void setDiver(int diver) {
		this.diver = diver;
	}

	public int getDiveSite() {
		return this.diveSite;
	}

	public void setDiveSite(int diveSite) {
		this.diveSite = diveSite;
	}

	public Time getDiveStart() {
		return this.diveStart;
	}

	public void setDiveStart(Time diveStart) {
		this.diveStart = diveStart;
	}

	public int getDiveTime() {
		return this.diveTime;
	}

	public void setDiveTime(int diveTime) {
		this.diveTime = diveTime;
	}

	public int getFootlets() {
		return this.footlets;
	}

	public void setFootlets(int footlets) {
		this.footlets = footlets;
	}

	public int getGlove() {
		return this.glove;
	}

	public void setGlove(int glove) {
		this.glove = glove;
	}

	public int getInitialPressure() {
		return this.initialPressure;
	}

	public void setInitialPressure(int initialPressure) {
		this.initialPressure = initialPressure;
	}

	public byte getIsApproved() {
		return this.isApproved;
	}

	public void setIsApproved(byte isApproved) {
		this.isApproved = isApproved;
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

	public int getJacket() {
		return this.jacket;
	}

	public void setJacket(int jacket) {
		this.jacket = jacket;
	}

	public BigDecimal getLeadWeight() {
		return this.leadWeight;
	}

	public void setLeadWeight(BigDecimal leadWeight) {
		this.leadWeight = leadWeight;
	}

	public int getLogBookID() {
		return this.logBookID;
	}

	public void setLogBookID(int logBookID) {
		this.logBookID = logBookID;
	}

	public BigDecimal getMaxDepth() {
		return this.maxDepth;
	}

	public void setMaxDepth(BigDecimal maxDepth) {
		this.maxDepth = maxDepth;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public int getSuite() {
		return this.suite;
	}

	public void setSuite(int suite) {
		this.suite = suite;
	}

	public int getTank() {
		return this.tank;
	}

	public void setTank(int tank) {
		this.tank = tank;
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