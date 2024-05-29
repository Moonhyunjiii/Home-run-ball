package com.homerunball;

import com.homerunball.admin.product.domain.MainProductDto;
import com.homerunball.admin.product.service.MainProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {
    @Autowired
    private MainProductService mainProductService;

    @RequestMapping("/")
    public String main(Model m) {
        try {
            /*newProductList: 등록된 신제품을 모두 저장한다.*/
            List<MainProductDto> newProductList = mainProductService.getAllNewSalesProduct();
            /*newProductNumber: 판매중인 신제품 수를 저장하는 변수.*/
            int newProductNumber = newProductList.size();
            /*모델에 newProductList를 담아서 index.jsp로 넘겨준다.*/
            m.addAttribute("newProductList", newProductList);
            /*모델에 newProductNumber를 담아서 index.jsp로 넘겨준다.*/
            m.addAttribute("newProductNumber", newProductNumber);

            /*hotProductList: 등록된 인기제품을 모두 저장한다.*/
            List<MainProductDto> hotProductList = mainProductService.getAllHotSalesProduct();
            /*hotProductNumber: 판매중인 인기제품 수를 저장하는 변수.*/
            int hotProductNumber = hotProductList.size();
            /*모델에 hotProductList를 담아서 index.jsp로 넘겨준다.*/
            m.addAttribute("hotProductList", hotProductList);
            /*모델에 hotProductNumber를 담아서 index.jsp로 넘겨준다.*/
            m.addAttribute("hotProductNumber", hotProductNumber);

            /*recommendProductList: 등록된 추천 제품을 모두 저장한다.*/
            List<MainProductDto> recommendProductList = mainProductService.getAllRecommendSalesProduct();
            /*recommendProductNumber: 판매중인 추천 제품 수를 저장하는 변수.*/
            int recommendProductNumber = recommendProductList.size();
            /*모델에 recommendProductList를 담아서 index.jsp로 넘겨준다.*/
            m.addAttribute("recommendProductList", recommendProductList);
            /*모델에 recommendProductNumber를 담아서 index.jsp로 넘겨준다.*/
            m.addAttribute("recommendProductNumber", recommendProductNumber);
        } catch (Exception e) {
            e.printStackTrace();
            return "errorPage";
        }
        return "index";
    }
}