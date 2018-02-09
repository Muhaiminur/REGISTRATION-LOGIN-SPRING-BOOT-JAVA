package com.registration_login_spring_boot_java.repository;

import org.springframework.data.repository.CrudRepository;

import com.registration_login_spring_boot_java.modal.User;

public interface User_Repository extends CrudRepository<User, Integer> {

}
