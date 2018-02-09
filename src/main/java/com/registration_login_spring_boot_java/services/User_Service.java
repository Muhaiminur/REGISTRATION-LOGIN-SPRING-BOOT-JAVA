package com.registration_login_spring_boot_java.services;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.registration_login_spring_boot_java.modal.User;
import com.registration_login_spring_boot_java.repository.User_Repository;


@Service
@Transactional
public class User_Service {
private final User_Repository userRepository;
	
	public User_Service(User_Repository userRepository) {
		this.userRepository=userRepository;
	}
	//this is built in method actually it is direct saving
	public void saveMyUser(User user ) {
		userRepository.save(user);
	}

}
