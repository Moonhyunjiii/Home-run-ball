package com.homerunball.product.customer.service;

import com.homerunball.product.customer.dao.ProductViewDao;
import com.homerunball.product.customer.domain.ProductViewDto;
import com.homerunball.product.customer.domain.StockViewDto;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductViewServiceImpl implements ProductViewService {
    @Autowired
    ProductViewDao productViewDao;

    @Override
    public int getCnt() throws Exception{
        return productViewDao.countPrd();
    }
    @Override
    public ProductViewDto read(String pd_id) throws Exception {
        return productViewDao.selectPrd(pd_id);
    }
    @Override
    public List<ProductViewDto> getList() throws Exception{
        return productViewDao.selectAllPrd();
    }
    @Override
    public StockViewDto readStkInfo(String pd_id) throws Exception {
        return productViewDao.selectStkRandOne(pd_id);
    }
    @Override
    public List<StockViewDto> getListStkId(String pd_id) throws Exception{
        return productViewDao.selectAllStkId(pd_id);
    }
    @Override
    public StockViewDto readStkOptInfo(String pd_id, String pd_clsf_cd) throws Exception{
        return productViewDao.selectStkOpt(pd_id, pd_clsf_cd);
    }
    @Override
    public List<Map<String, Object>> getByKeyword(String keyword) throws Exception {
        return productViewDao.findByKeyword(keyword);
    }
}
