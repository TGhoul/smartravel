package com.yanjin.smartravel.serivce;

import com.yanjin.smartravel.domain.TrainPreOrder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author zpj
 * @date 2018/5/28
 */
@Service
public interface TrainPreOrderService extends
        JpaRepository<TrainPreOrder, Long> {

    /**
     * 查询火车订单
     * @param userId 用户id
     * @return
     */
    List<TrainPreOrder> findTrainPreOrdersByUserId(Long userId);

    @Query("FROM TrainPreOrder WHERE status = 2 ORDER BY id DESC")
    List<TrainPreOrder> findAllOrderById();
}
