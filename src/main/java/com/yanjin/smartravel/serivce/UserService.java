package com.yanjin.smartravel.serivce;

import com.yanjin.smartravel.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

/**
 * @author zpj
 * @date 2018/5/20
 */
@Service
public interface UserService extends JpaRepository<User, Long> {

    /**
     * 查询用户
     * @param name 用户名
     * @return
     */
    User findUserByUsername(String name);
}
