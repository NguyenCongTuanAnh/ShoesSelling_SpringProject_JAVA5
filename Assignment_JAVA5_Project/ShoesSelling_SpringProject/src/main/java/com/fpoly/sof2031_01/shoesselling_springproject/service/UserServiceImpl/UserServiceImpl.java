package com.fpoly.sof2031_01.shoesselling_springproject.service.UserServiceImpl;

import com.fpoly.sof2031_01.shoesselling_springproject.entity.User;
import com.fpoly.sof2031_01.shoesselling_springproject.repository.UserRepository;
import com.fpoly.sof2031_01.shoesselling_springproject.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;


    @Transactional
    public User loadUserByUsername(String username)
            throws UsernameNotFoundException {
        // Tìm user theo username hoặc email
        User user = userRepository.findByUsersName(username);

            return UserPrincipal.create(user);
    }

}
