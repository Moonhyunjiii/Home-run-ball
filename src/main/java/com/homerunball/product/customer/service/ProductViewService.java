package com.homerunball.product.customer.service;

import com.homerunball.product.customer.domain.ProductViewDto;
import com.homerunball.product.customer.domain.StockViewDto;

import java.util.List;
import java.util.Map;

public interface ProductViewService {
    int getCnt() throws Exception;
    ProductViewDto read(String pd_id) throws Exception;
    List<ProductViewDto> getList() throws Exception;
    StockViewDto readStkInfo(String pd_id) throws Exception;
    List<StockViewDto> getListStkId(String pd_id) throws Exception;
    StockViewDto readStkOptInfo(String pd_id, String pd_clsf_cd) throws Exception;
    List<Map<String, Object>> getByKeyword(String keyword) throws Exception;
    List<Map<String, Object>> getByType(String pd_type_cd) throws Exception;
}
