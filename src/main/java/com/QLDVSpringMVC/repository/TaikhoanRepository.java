package com.QLDVSpringMVC.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.QLDVSpringMVC.model.Taikhoan;

@Repository("TaikhoanRepository")
public interface TaikhoanRepository extends JpaRepository<Taikhoan, String> {
	Taikhoan findOneByUsernameAndKhaitru(String username, Boolean khaitru);

	Taikhoan findOneByUsernameAndKhaitruAndChidoanMachidoan(String username, Boolean khaitru, int machidoan);
	Taikhoan findOneByUsernameAndKhaitruAndChidoanChidoantruong(String username, Boolean khaitru,String chidoantruong);
	List<Taikhoan> findAllByChidoanMachidoan(int machidoan);

	List<Taikhoan> findAllByChidoanMachidoanAndChucvuMachucvu(int machidoan, int machucvu);
}
