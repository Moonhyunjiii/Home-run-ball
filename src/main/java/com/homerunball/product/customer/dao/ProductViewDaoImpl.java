package com.homerunball.product.customer.dao;

import com.homerunball.product.customer.domain.ProductViewDto;
import com.homerunball.product.customer.domain.StockViewDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class ProductViewDaoImpl implements ProductViewDao {
    @Autowired
    SqlSession session;
    private static final String NAMESPACE = "com.homerunball.product.customer.dao.ProductViewMapper.";

    @Override
    public int countPrd() throws Exception{
        return session.selectOne(NAMESPACE+"countPrd");
    }
    @Override
    public ProductViewDto selectPrd(String pd_id) throws Exception{
        return session.selectOne(NAMESPACE+"selectPrd",pd_id);
    }
    @Override
    public List<ProductViewDto> selectAllPrd() throws Exception{
        return session.selectList(NAMESPACE+"selectAllPrd");
    }
    @Override
    public StockViewDto selectStkRandOne(String pd_id) throws Exception{
        return session.selectOne(NAMESPACE+"selectStkRandOne", pd_id);
    }
    @Override
    public List<StockViewDto> selectAllStkId(String pd_id) throws Exception{
        return session.selectList(NAMESPACE+"selectAllStkId", pd_id);
    }
    @Override
    public StockViewDto selectStkOpt(String pd_id, String pd_clsf_cd) throws Exception{
        Map map = new HashMap();
        map.put("pd_id", pd_id);
        map.put("pd_clsf_cd", pd_clsf_cd);
        return session.selectOne(NAMESPACE+"selectStkOpt", map);
    }
    @Override
    public List<Map<String, Object>> findByKeyword(String keyword) throws Exception{
        return session.selectList(NAMESPACE+"findByKeyword", keyword);
    }

    @Override
    public List<Map<String, Object>> findByType(String pd_type_cd) throws Exception {
        return session.selectList(NAMESPACE+"findByType", pd_type_cd);
    }
}
