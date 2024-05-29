package com.homerunball.order.controller;

import com.homerunball.cart.dao.CartDao;
import com.homerunball.cart.domain.CartDto;
import com.homerunball.delivery.dao.DeliveryDao;
import com.homerunball.delivery.domain.DeliveryDto;
import com.homerunball.delivery.service.DeliveryService;
import com.homerunball.order.dao.OrdDao;
import com.homerunball.order.dao.OrderAndStkDao;
import com.homerunball.order.dao.OrderDetDao;
import com.homerunball.order.domain.OrdAndStkDto;
import com.homerunball.order.domain.OrdDto;
import com.homerunball.order.domain.OrderDetDto;
import com.homerunball.order.service.OrdService;
import freemarker.ext.beans.StringModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


@Controller
@RequestMapping("/")
public class OrdController {
    @Autowired
    OrdService ordService;
    @Autowired
    OrdDao ordDao;
    @Autowired
    CartDao cartDao;
    @Autowired
    OrderDetDao orderdetDao;
    @Autowired
    OrderAndStkDao orderAndStkDao;

    /* 김수연 시작 */
    @Autowired /* 의존성 주입 */
            DeliveryDao deliveryDao;
    @Autowired
    DeliveryService deliveryService;
    /* 김수연 끝 */


    @PostMapping("/order")
    public String order(Model m, HttpSession session, HttpServletRequest request, @SessionAttribute(name = "c_id")int sessionId){

        int c_id = (int)session.getAttribute("c_id");
        try {
//            List<CartDto> list = cartDao.selectUser(c_id);
            List<CartDto> list = cartDao.getStk(c_id);
            if(list.isEmpty()){
                return "redirect:/cart/list";
            }
           /* List<OrdAndStkDto> stkList = orderAndStkDao.getcartItem(c_id);*/

          /*  System.out.println("list = " +list);*/

            OrderDetDto ord_det = new OrderDetDto();
            OrdDto ord = new OrdDto();

            /*System.out.println(ord_det);

            System.out.println("od_stat_cd=" + ord_det.getOd_stat_cd());
*/


            /*장바구니에서 data 가져와서 order_det 테이블에 insert */
            for (CartDto cart : list){
                ord_det.setPd_id(cart.getPd_id());
                ord_det.setPd_clsf_cd(cart.getPd_clsf_code());
                ord_det.setPd_name(cart.getPd_name());
                ord_det.setSls_prc(cart.getSls_prc());
                ord_det.setOd_qty(cart.getCart_cnt());
                ord_det.setC_id(cart.getC_id());

                orderdetDao.insert(ord_det);
            }
           /* System.out.println("od_stat_cd" + ord_det.getOd_stat_cd());*/

            int totalpd_qty = 0;
            int totalqty = 0;
            int totalamount = 0;
            int totalrtlamount = 0;

            /*중복 안돼는 set을 만든다*/
            Set<String> od_pd_qtyid = new HashSet<>();

            for (CartDto cart : list) {
                /*제품 가지 수*/
                od_pd_qtyid.add(cart.getPd_id());     /*set에 상품 id를 넣어서 for문 돌려줌*/

                /*주문 총 수량 구하기*/
                totalqty += cart.getCart_cnt();

                /*주문 총 금액 구하기*/
                int itemtotal = cart.getSls_prc() * cart.getCart_cnt();
                totalamount += itemtotal;

                /*주문 총 소비자가 구하기*/
                totalrtlamount += cart.getRtl_prc();
            }

            /*상품 id를 담은 set(od_pd_qtyid)의 사이즈를 담아줌*/
            totalpd_qty = od_pd_qtyid.size();

            ord.setC_id(ord_det.getC_id());
            ord.setOd_pd_qty(totalpd_qty);
            ord.setOd_tot_qty(totalqty);
            ord.setOd_pay_amt(totalamount);
            ord.setRtl_prc(totalrtlamount);

            ordDao.insert(ord);

            /*System.out.println("ord_det.getC_id()" +ord_det.getC_id());*/
            System.out.println("ord1111" + ord);

            m.addAttribute("list", list);
            m.addAttribute("ord", ord);
            /*m.addAttribute("stkList", stkList);*/
            System.out.println("ordDao" + ord);

            /* 김수연 시작 */
            DeliveryDto defaultDto = deliveryDao.selecteDefault(sessionId);
            m.addAttribute("defaultDto", defaultDto);

            System.out.println("******* 기본배송지 ****** defaultDto = " + defaultDto);
            /* 김수연 끝 */

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "order";
    }
}
