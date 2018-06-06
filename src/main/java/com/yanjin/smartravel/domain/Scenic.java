package com.yanjin.smartravel.domain;

import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

/**
 * 景点实体
 * @author zpj
 * @date 2018/6/2
 */
@Data
@Entity
@DynamicUpdate
public class Scenic {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private Double price;

    private String summaryImg;

    private Date createTime;

    private Date startDate;

    private Date endDate;

    private String detail;

    /** 0省内推荐 1国内推荐 2国外推荐  */
    private Integer type;
}


