package com.homerunball.order.dao;

import com.homerunball.order.domain.OrderDetDto;
import com.homerunball.payment.domain.PaymentDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class OrderDetDaoImpl implements OrderDetDao {
    @Autowired
    private SqlSession session;
    private static final String NAMESPACE = "com.homerunball.order.dao.OrderDetDao.";

    /* 리스트 수를 센다*/
    @Override
    public int count() throws Exception {
        return session.selectOne(NAMESPACE+"count");
    }

    /*데이터를 삭제한다*/
    @Override
    public int delete(int od_det_seqnum, BigInteger od_id, int c_id) throws Exception {
        Map map = new HashMap();
        map.put("od_det_seqnum", od_det_seqnum);
        map.put("od_id", od_id);
        map.put("c_id", c_id);
        return session.delete(NAMESPACE+"delete", map);
    }

    @Override
    public int deleteAll() throws Exception {
        return session.delete(NAMESPACE+"deleteAll");
    }

    @Override
    public  List<OrderDetDto> select(int c_id) throws Exception {
       return session.selectList(NAMESPACE + "select", c_id);
    }

    @Override
    public List<OrderDetDto> selectByOdId(int c_id, BigInteger od_id) throws Exception {
        Map<String, Object> map = new HashMap<>();
        map.put("c_id", c_id);
        map.put("od_id", od_id);
        return session.selectList(NAMESPACE+"selectByOdId", map);
    }

    @Override
    public  List<OrderDetDto> idselect(BigInteger od_id) throws Exception {
        return session.selectList(NAMESPACE + "idselect", od_id);
    }

    @Override
    public List<OrderDetDto> selectAll() throws Exception {
        return session.selectList(NAMESPACE+"selectAll");
    }

    @Override
    public int insert(OrderDetDto ord_det) throws Exception {
        return session.insert(NAMESPACE+"insert", ord_det);
    }
    @Override
    public int update(OrderDetDto ord_det) throws Exception {
        return session.update(NAMESPACE+"update", ord_det);
    }

    @Override
    public int updateOrderStatus(OrderDetDto orderDetDto) throws Exception {
        return session.update(NAMESPACE+ "updateOrderStatus", orderDetDto);
    }

    @Override
    public List<OrderDetDto> selectPaymentHistoryWithDateRange(Map<String, Object> localDateMap) {
        return session.selectList(NAMESPACE + "selectPaymentHistoryWithDateRange", localDateMap);
    }

}