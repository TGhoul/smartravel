package com.yanjin.smartravel.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
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
public class TrainPreOrder {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long userId;

    private String name;

    private Double price;

    private String trainNumber;

    private String seatType;

    @JsonFormat(timezone = "GMT+8", pattern = "HH:mm")
    private Date startTime;

    @JsonFormat(timezone = "GMT+8", pattern = "HH:mm")
    private Date endTime;

    private Date orderTime;

    private Integer status;
}
