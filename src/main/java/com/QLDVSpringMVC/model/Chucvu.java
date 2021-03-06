package com.QLDVSpringMVC.model;
// Generated 22-May-2021, 2:33:20 pm by Hibernate Tools 5.2.12.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Chucvu generated by hbm2java
 */
@Entity
@Table(name = "chucvu", catalog = "quanlydoanvien")
public class Chucvu implements java.io.Serializable {

	private int machucvu;
	private String tenchucvu;
	private Boolean trangthai;
	private Set<Taikhoan> taikhoans = new HashSet<Taikhoan>(0);

	public Chucvu() {
	}

	public Chucvu(int machucvu) {
		this.machucvu = machucvu;
	}

	public Chucvu(int machucvu, String tenchucvu, Boolean trangthai, Set<Taikhoan> taikhoans) {
		this.machucvu = machucvu;
		this.tenchucvu = tenchucvu;
		this.trangthai = trangthai;
		this.taikhoans = taikhoans;
	}

	@Id

	@Column(name = "Machucvu", unique = true, nullable = false)
	public int getMachucvu() {
		return this.machucvu;
	}

	public void setMachucvu(int machucvu) {
		this.machucvu = machucvu;
	}

	@Column(name = "Tenchucvu", length = 30)
	public String getTenchucvu() {
		return this.tenchucvu;
	}

	public void setTenchucvu(String tenchucvu) {
		this.tenchucvu = tenchucvu;
	}

	@Column(name = "Trangthai")
	public Boolean getTrangthai() {
		return this.trangthai;
	}

	public void setTrangthai(Boolean trangthai) {
		this.trangthai = trangthai;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "chucvu")
	public Set<Taikhoan> getTaikhoans() {
		return this.taikhoans;
	}

	public void setTaikhoans(Set<Taikhoan> taikhoans) {
		this.taikhoans = taikhoans;
	}

}
