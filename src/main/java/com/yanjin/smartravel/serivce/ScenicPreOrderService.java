package com.yanjin.smartravel.serivce;

import com.yanjin.smartravel.domain.ScenicPreOrder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author zpj
 * @date 2018/6/1
 */
@Service
public interface ScenicPreOrderService extends JpaRepository<ScenicPreOrder, Long> {

    /**
     * 查询用户订单
     * @param userId
     * @return
     */
    List<ScenicPreOrder> findScenicPreOrdersByUserId(Long userId);


    @Query("FROM ScenicPreOrder WHERE status = 2 ORDER BY id DESC")
    List<ScenicPreOrder> findAllOrderById();
}
