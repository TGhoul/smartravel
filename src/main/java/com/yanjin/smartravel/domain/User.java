package com.yanjin.smartravel.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * @author zpj
 * @date 2018/5/20
 */
@Data
@Entity
public class User {

    /** 主键 */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /** 用户名 */
    private String username;

    /** 密码 */
    private String password;

    /** 性别 */
    private int gender;
}
