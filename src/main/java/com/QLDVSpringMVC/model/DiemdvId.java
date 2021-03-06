package com.QLDVSpringMVC.model;
// Generated 22-May-2021, 2:33:20 pm by Hibernate Tools 5.2.12.Final

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * DiemdvId generated by hbm2java
 */
@Embeddable
public class DiemdvId implements java.io.Serializable {

	private int idPhieuTc;
	private String maTk;
	private int machucvu;

	public DiemdvId() {
	}

	public DiemdvId(int idPhieuTc, String maTk, int machucvu) {
		this.idPhieuTc = idPhieuTc;
		this.maTk = maTk;
		this.machucvu = machucvu;
	}

	@Column(name = "IdPhieu_TC", nullable = false)
	public int getIdPhieuTc() {
		return this.idPhieuTc;
	}

	public void setIdPhieuTc(int idPhieuTc) {
		this.idPhieuTc = idPhieuTc;
	}

	@Column(name = "MaTK", nullable = false, length = 10)
	public String getMaTk() {
		return this.maTk;
	}

	public void setMaTk(String maTk) {
		this.maTk = maTk;
	}

	@Column(name = "Machucvu", nullable = false)
	public int getMachucvu() {
		return this.machucvu;
	}

	public void setMachucvu(int machucvu) {
		this.machucvu = machucvu;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof DiemdvId))
			return false;
		DiemdvId castOther = (DiemdvId) other;

		return (this.getIdPhieuTc() == castOther.getIdPhieuTc())
				&& ((this.getMaTk() == castOther.getMaTk()) || (this.getMaTk() != null && castOther.getMaTk() != null
						&& this.getMaTk().equals(castOther.getMaTk())))
				&& (this.getMachucvu() == castOther.getMachucvu());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getIdPhieuTc();
		result = 37 * result + (getMaTk() == null ? 0 : this.getMaTk().hashCode());
		result = 37 * result + this.getMachucvu();
		return result;
	}

}
