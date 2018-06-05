package com.yanjin.smartravel.serivce;

import com.yanjin.smartravel.domain.Scenic;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

/**
 * @author zpj
 * @date 2018/6/2
 */
@Service
public interface ScenicService extends JpaRepository<Scenic, Long> {

}
