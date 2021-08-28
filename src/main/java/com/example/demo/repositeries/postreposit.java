package com.example.demo.repositeries;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.models.post;

public interface postreposit extends JpaRepository<post, Integer> {

}
