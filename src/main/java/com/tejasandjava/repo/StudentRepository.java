package com.tejasandjava.repo;

import org.springframework.boot.autoconfigure.data.jpa.JpaRepositoriesAutoConfiguration;
import org.springframework.data.jpa.repository.JpaRepository;

import com.tejasandjava.entity.Student;


public interface StudentRepository extends JpaRepository<Student, Integer>{

	Student findByEmailAndPassword(String email, String password);

}
