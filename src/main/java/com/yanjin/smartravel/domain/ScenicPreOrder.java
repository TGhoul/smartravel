package com.yanjin.smartravel.domain;

import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

/**
 * @author zpj
 * @date 2018/6/1
 */
@Data
@Entity
@DynamicUpdate
public class ScenicPreOrder {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String scenicName;

    private Double price;

    private Integer status;

    private Long userId;

    private Date createTime;

}
