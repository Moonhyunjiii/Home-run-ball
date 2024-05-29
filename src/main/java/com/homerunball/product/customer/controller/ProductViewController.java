package com.homerunball.product.customer.controller;

import com.homerunball.product.customer.domain.ProductViewDto;
import com.homerunball.product.customer.domain.StockViewDto;
import com.homerunball.product.customer.service.ProductViewService;
import java.security.Key;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductViewController {

    @Autowired
    ProductViewService productViewService;

    @GetMapping("/detail")
    public String item(HttpServletRequest request, Model m) {
        try {
            String pd_id = request.getParameter("pd_id");
            String pd_clsf_cd = request.getParameter("pd_clsf_cd");

            ProductViewDto prd = productViewService.read(pd_id);
            StockViewDto stkInfo = productViewService.readStkInfo(pd_id);
            List<ProductViewDto> listPrd = productViewService.getList();
            StockViewDto stkOptInfo = productViewService.readStkOptInfo(pd_id, pd_clsf_cd);
            List<StockViewDto> listStkOpt = productViewService.getListStkId(pd_id);

            //pd_id를 받아와서 db에 해당 제품이 존재하는지 조회
            boolean exists = listPrd.stream().anyMatch(product -> product.getPd_id().equals(pd_id));
            //제품이 존재하고, pd_id와 일치하는 제품이 있는경우 제품에 필요한 정보를 model로 넘기고 제품상세로 이동
            if (prd != null && exists) {
                m.addAttribute("prd", prd);
                m.addAttribute("stkInfo", stkInfo);
                m.addAttribute("stkOptInfo", stkOptInfo);
                m.addAttribute("listStkOpt", listStkOpt);
                return "productDetail";
            } else {
                // 제품이 존재하지 않거나, pd_id가 일치하지 않는 경우 고객 에러페이지로 이동
                m.addAttribute("errorMessage", "제품이 존재하지 않습니다.");
                return "errorPageCust";
            }
        } catch (Exception e) {
            //다른 문제인 경우, 에러 메세지를 넘기고, stackTrace 호출
            e.printStackTrace();
            m.addAttribute("errorMessage", "제품 상세페이지를 로드중 에러가 발생했습니다.");
            return "errorPageCust"; // 에러 페이지로 이동
        }
    }

    @GetMapping("/test")
    public String testForm() {
        return "productTest";
    }

    @PostMapping("/test")
    public String goCart(String pd_id, String pd_clsf_cd, Model m) {
        try {
            StockViewDto stkOptInfo = productViewService.readStkOptInfo(pd_id, pd_clsf_cd);
            List<StockViewDto> listStkOpt = productViewService.getListStkId(pd_id);

            System.out.println("pd_id = " + pd_id);
            System.out.println("pd_clsf_cd = " + pd_clsf_cd);
            System.out.println("listStkOpt.get(0) = " + listStkOpt.get(0).getPd_clsf_cd());

            m.addAttribute("stkOptInfo", stkOptInfo);
        } catch (Exception e) {
            e.printStackTrace();
            m.addAttribute("errorMessage", "An error occurred while processing the cart.");
            return "errorPageCust"; // 에러 페이지로 이동
        }
        return "productTest";
    }

    /* search 내비에서 제품명 검색 */
    @GetMapping("/search")
    @ResponseBody
    public ResponseEntity<?> search(@RequestParam String keyword) {
      try {
          List<Map<String, Object>> searchResultsList = productViewService.getByKeyword(keyword);
          return new ResponseEntity<>(searchResultsList, HttpStatus.OK);
      } catch (Exception e) {
          e.printStackTrace();
          Map<String, String> errorResponse = new HashMap<>();
          errorResponse.put("errorMessage", "검색중에 오류가 발생했습니다. 다시 시도해주세요.");
          return new ResponseEntity<>(errorResponse, HttpStatus.INTERNAL_SERVER_ERROR);
      }
    }

    /* 제품 타입에 따른 검색 */
    @GetMapping("/byType")
    public String findByType(@RequestParam("pd_type_cd") String pd_type_cd, Model model) {
      try {
        List<Map<String, Object>> result = productViewService.getByType(pd_type_cd);
          model.addAttribute("result", result);
      } catch (Exception e) {
          /* TODO : 처리를 해야하지 않나 */
        e.printStackTrace();
      }
      return "productSearchList";
    }

    @GetMapping("/byTypeMore")
    @ResponseBody
    public ResponseEntity<?> getMoreProducts(@RequestParam("pd_type_cd") String pd_type_cd, @RequestParam("page") int page) {
        try {
            List<Map<String, Object>> result = productViewService.getByType(pd_type_cd);
            return new ResponseEntity<>(result, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            Map<String, String> errorResponse = new HashMap<>();
            errorResponse.put("errorMessage", "불러오기 중에 오류가 발생했습니다. 다시 시도해주세요..");
            return new ResponseEntity<>(errorResponse, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}

