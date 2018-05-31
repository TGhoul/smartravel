package com.yanjin.smartravel.serivce;

import com.yanjin.smartravel.domain.HotelPreOrder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author zpj
 * @date 2018/5/28
 */
@Service
public interface HotelPreOrderService extends JpaRepository<HotelPreOrder, Long> {

    /**
     * 查询酒店订单
     * @param userId 用户id
     * @return
     */
    List<HotelPreOrder> findHotelPreOrdersByUserId(Long userId);
}
