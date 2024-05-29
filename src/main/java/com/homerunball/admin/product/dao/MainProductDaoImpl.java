package com.homerunball.admin.product.dao;

import com.homerunball.admin.product.domain.MainProductDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MainProductDaoImpl implements MainProductDao {
    @Autowired
    private SqlSession session;
    private static String NAMESPACE = "com.homerunball.admin.product.dao.MainProductDao.";

    /*판매중인 신제품을 선택한다.*/
    @Override
    public List<MainProductDto> selectAllNewSalesProduct() throws Exception {
        return session.selectList(NAMESPACE + "selectNewMainProduct");
    }

    /*판매중인 인기제품을 선택한다.*/
    @Override
    public List<MainProductDto> selectAllHotSalesProduct() throws Exception {
        return session.selectList(NAMESPACE + "selectHotMainProduct");
    }

    /*판매중인 추천 제품을 선택한다.*/
    @Override
    public List<MainProductDto> selectAllRecommendSalesProduct() throws Exception {
        return session.selectList(NAMESPACE + "selectRecommendMainProduct");
    }
}