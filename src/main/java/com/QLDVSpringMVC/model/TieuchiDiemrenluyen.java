package com.QLDVSpringMVC.model;
// Generated 22-May-2021, 2:33:20 pm by Hibernate Tools 5.2.12.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * TieuchiDiemrenluyen generated by hbm2java
 */
@Entity
@Table(name = "tieuchi_diemrenluyen", catalog = "quanlydoanvien")
public class TieuchiDiemrenluyen implements java.io.Serializable {

	private int idPhieuTc;
	private PhieuDrl phieuDrl;
	private Tieuchi tieuchi;
	private Set<Diemdv> diemdvs = new HashSet<Diemdv>(0);

	public TieuchiDiemrenluyen() {
	}

	public TieuchiDiemrenluyen(int idPhieuTc, PhieuDrl phieuDrl, Tieuchi tieuchi) {
		this.idPhieuTc = idPhieuTc;
		this.phieuDrl = phieuDrl;
		this.tieuchi = tieuchi;
	}

	public TieuchiDiemrenluyen(int idPhieuTc, PhieuDrl phieuDrl, Tieuchi tieuchi, Set<Diemdv> diemdvs) {
		this.idPhieuTc = idPhieuTc;
		this.phieuDrl = phieuDrl;
		this.tieuchi = tieuchi;
		this.diemdvs = diemdvs;
	}

	@Id

	@Column(name = "IdPhieu_TC", unique = true, nullable = false)
	public int getIdPhieuTc() {
		return this.idPhieuTc;
	}

	public void setIdPhieuTc(int idPhieuTc) {
		this.idPhieuTc = idPhieuTc;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Maphieu", nullable = false)
	public PhieuDrl getPhieuDrl() {
		return this.phieuDrl;
	}

	public void setPhieuDrl(PhieuDrl phieuDrl) {
		this.phieuDrl = phieuDrl;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MaTC", nullable = false)
	public Tieuchi getTieuchi() {
		return this.tieuchi;
	}

	public void setTieuchi(Tieuchi tieuchi) {
		this.tieuchi = tieuchi;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "tieuchiDiemrenluyen")
	public Set<Diemdv> getDiemdvs() {
		return this.diemdvs;
	}

	public void setDiemdvs(Set<Diemdv> diemdvs) {
		this.diemdvs = diemdvs;
	}

}
