package com.homerunball.order.dao;

import com.homerunball.customer.domain.CustDto;
import com.homerunball.order.domain.OrderDetDto;

import com.homerunball.payment.domain.PaymentDto;
import java.math.BigInteger;
import java.util.List;
import java.util.Map;

public interface OrderDetDao {


  /* 리스트 수를 센다*/
  int count() throws Exception;

  int delete(int od_det_seqnum, BigInteger od_id, int c_id) throws Exception;

  int deleteAll() throws Exception;

  List<OrderDetDto> select(int c_id) throws Exception;

  List<OrderDetDto> selectByOdId(int c_id, BigInteger od_id) throws Exception;

  List<OrderDetDto> idselect(BigInteger od_id) throws Exception;

  List<OrderDetDto> selectAll() throws Exception;

  int insert(OrderDetDto orderDetDto) throws Exception;

  int update(OrderDetDto orderDetDto) throws Exception;

  int updateOrderStatus(OrderDetDto orderDetDto) throws Exception;
  List<OrderDetDto> selectPaymentHistoryWithDateRange(Map<String, Object> localDateMap);
}