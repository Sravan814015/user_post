package com.example.demo.repositeries;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.demo.models.admin;

public interface adminreposit extends JpaRepository<admin, Integer> {
	@Query("from admin where email=:e and pass=:p")
	admin check(@Param("e") String email, @Param("p") String pass);

}
