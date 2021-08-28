package com.example.demo.repositeries;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.models.userinfo;

@Repository
public interface userreposit extends JpaRepository<userinfo, Integer> {
	@Query("from userinfo where email=:e and pass=:p")
	userinfo check(@Param("e") String email, @Param("p") String pass);

}
