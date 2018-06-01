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
 * @date 2018/5/28
 */
@Data
@Entity
@DynamicUpdate
public class HotelPreOrder {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long userId;

    private String hotelName;

    private Double price;

    private String address;

    private Date createTime;

    private Integer status;
}
