package com.homerunball.product.customer.dao;

import com.homerunball.product.customer.domain.ProductViewDto;
import com.homerunball.product.customer.domain.StockViewDto;

import java.util.List;
import java.util.Map;

public interface ProductViewDao {
    int countPrd() throws Exception;

    ProductViewDto selectPrd(String pd_id) throws Exception;

    List<ProductViewDto> selectAllPrd() throws Exception;

    StockViewDto selectStkRandOne(String pd_id) throws Exception;

    List<StockViewDto> selectAllStkId(String pd_id) throws Exception;

    StockViewDto selectStkOpt(String pd_id, String pd_clsf_cd) throws Exception;

    List<Map<String, Object>> findByKeyword(String keyword) throws Exception;
}
