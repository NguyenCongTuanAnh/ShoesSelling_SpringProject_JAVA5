package com.fpoly.sof2031_01.shoesselling_springproject.repository;

import com.fpoly.sof2031_01.shoesselling_springproject.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface UserRepository extends JpaRepository<User, UUID>{

    public User findByUsersName(String userName);
}
