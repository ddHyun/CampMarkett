package com.izo.camp.market;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izo.camp.mapper.OrderMapper;
import com.izo.camp.vo.OrderVO;

@Service
public class OrderService {
	
	@Autowired
	OrderMapper orderMapper;
	
	public boolean orderAdd(List<OrderVO> orderList) {
	
		for(OrderVO orderVO : orderList) {
			orderMapper.insertOrder(orderVO);
			System.out.println("동작중");
		}
		
		return false;
	}
}
