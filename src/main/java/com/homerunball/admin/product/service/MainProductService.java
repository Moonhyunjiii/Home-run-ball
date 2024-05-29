package com.homerunball.admin.product.service;

import com.homerunball.admin.product.domain.MainProductDto;

import java.util.List;

public interface MainProductService {
    /*판매중인 신제품을 선택한다.*/
    List<MainProductDto> getAllNewSalesProduct() throws Exception;

    /*판매중인 인기제품을 선택한다.*/
    List<MainProductDto> getAllHotSalesProduct() throws Exception;

    /*판매중인 추천 제품을 선택한다.*/
    List<MainProductDto> getAllRecommendSalesProduct() throws Exception;
}