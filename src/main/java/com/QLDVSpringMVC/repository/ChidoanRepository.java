package com.QLDVSpringMVC.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.QLDVSpringMVC.model.Chidoan;
import com.QLDVSpringMVC.model.Khoa;
@Repository
public interface ChidoanRepository extends JpaRepository<Chidoan, Integer>{
	List<Chidoan> findAllByTrangthai(boolean DangHoatDong);
	List<Chidoan> findAllByTrangthaiAndKhoaMakhoa(boolean DangHoatDong,int makhoa);
}