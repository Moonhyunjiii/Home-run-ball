package com.homerunball.cart.dao;

import com.homerunball.cart.domain.CartDto;
import com.homerunball.customer.domain.CustDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class CartDaoImplTest {
    @Autowired
    private CartDao cartDao;

    @Test
    public void countTest() throws Exception{
        cartDao.deleteAll();
        assertTrue(cartDao.count()==0);

        int c_id = cartDao.getcustAll().get(0).getC_id();
        CartDto cart = new CartDto(c_id, "GLV000021-20", "pd_clsf_code", "img", "","pd_name", "pd_type_cd", 2,  0, 0);
        assertTrue(cartDao.insert(cart)==1);
        assertTrue(cartDao.count()==1);

        assertTrue(cartDao.insert(cart)==1);
        assertTrue(cartDao.count()==2);
    }


    /* 한 고객의 장바구니 선택 삭제 */
    @Test
    public void deleteTest() throws Exception{
        cartDao.deleteAll();
        assertTrue(cartDao.count()==0);

        int c_id = cartDao.getcustAll().get(0).getC_id();
        CartDto cart = new CartDto(c_id, "GLV000021-20", "pd_clsf_code", "img", "","pd_name", "pd_type_cd", 2,  0, 0);
        assertTrue(cartDao.insert(cart)==1);
        assertTrue(cartDao.count()==1);
        /* 장바구니 User U000005를 선택해서 id를 가져온다*/
        int getcid = cartDao.selectAll().get(0).getC_id();
        /* id와 담은제품이 일치할경우 객체삭제 */
        cartDao.delete(getcid, cart.getPd_id(), cart.getPd_clsf_code());
        assertTrue(cartDao.count()==0);

        /* 장바구니 User U000005 생성*/
        assertTrue(cartDao.insert(cart)==1);
        // 장바구니에 userid와 제품id+1를 delete, count 할경우 존재하지 않는 제품id 이기때문에 count는 그대로
        assertTrue(cartDao.delete(getcid,  cart.getPd_id()+1, cart.getPd_clsf_code())==0);
        assertTrue(cartDao.count()==1);
    }

    /* 모든유저데이터 전체삭제 */
    @Test
    public void deleteAllTest() throws Exception{
        cartDao.deleteAll();
        assertTrue(cartDao.count()==0);

        int c_id = cartDao.getcustAll().get(0).getC_id();
        CartDto cart = new CartDto(c_id, "GLV000021-20", "pd_clsf_code", "img", "","pd_name", "pd_type_cd", 2,  0, 0);
        assertTrue(cartDao.insert(cart)==1);
        assertTrue(cartDao.deleteAll()==1);
        assertTrue(cartDao.count()==0);


        assertTrue(cartDao.insert(cart)==1);
        assertTrue(cartDao.insert(cart)==1);
        assertTrue(cartDao.count()==2);
        assertTrue(cartDao.deleteAll()==2);
        assertTrue(cartDao.count()==0);
    }

    @Test
    public void cidDeleteAll() throws Exception {
        cartDao.deleteAll();
        assertTrue(cartDao.count()==0);


        /* cart에 0번고객이 장바구니에 2개를추가,  */
        int c_id = cartDao.getcustAll().get(0).getC_id();
        CartDto cart = new CartDto(c_id, "GLV000021-20", "pd_clsf_code", "img", "","pd_name", "pd_type_cd", 2,  0, 0);
        CartDto cart2 = new CartDto(c_id, "GLV000021-20", "pd_clsf_code2", "img", "","pd_name", "pd_type_cd", 2,  0, 0);
        assertTrue(cartDao.insert(cart)==1);
        assertTrue(cartDao.insert(cart2)==1);

        /* 1번고객이 장바구니에 1개추가 총 count는 3개 */
        int c_id2 = cartDao.getcustAll().get(1).getC_id();
        CartDto cart3 = new CartDto(c_id, "GLV000021-20", "pd_clsf_code", "img", "","pd_name", "pd_type_cd", 2,  0, 0);
        assertTrue(cartDao.insert(cart3)==1);
        assertTrue(cartDao.count()==3);

        /* 5번고객의 장바구니를 전체삭제 */
        assertTrue(cartDao.cidDeleteAll(cart2.getC_id())==2);
        /* 남은고객은 6번고객 1건 */
        assertTrue(cartDao.count()==1);

        List<CartDto> list = cartDao.selectAll();
        /* cart에 남아있는 list의 개수도 1개 */
        assertTrue(list.size()==1);
    }

    @Test
    public void insertTest() throws Exception {
        cartDao.deleteAll();
        assertTrue(cartDao.count()==0);

        /* 0번째 고객이 장바구니에 물건을 담음 */
        int c_id = cartDao.getcustAll().get(0).getC_id();
        CartDto cart = new CartDto(c_id, "GLV000021-20", "pd_clsf_code", "img", "","pd_name", "pd_type_cd", 2,  0, 0);
        assertTrue(cartDao.insert(cart)==1);
        assertTrue(cartDao.count()==1);

         /* 0번째 고객이 장바구니에 한번 더 담은후 0번째 고객의 장바구니를 전체삭제 */
        cart = new CartDto(c_id, "GLV000021-20", "pd_clsf_code", "img", "pd_name", "","pd_type_cd", 2,  0, 0);
        assertTrue(cartDao.insert(cart)==1);
        assertTrue(cartDao.count()==2);

        cartDao.deleteAll();
        assertTrue(cartDao.count()==0);

        /* 0번째 고객이 장바구니에 물건을 담고 count */
        cart = new CartDto(c_id, "GLV000021-20", "pd_clsf_code", "img", "pd_name", "","pd_type_cd", 2,  0, 0);
        assertTrue(cartDao.insert(cart)==1);
        assertTrue(cartDao.count()==1);
    }

    @Test
    public void selectUserTest() throws Exception {
        cartDao.deleteAll();
        assertTrue(cartDao.count()==0);

        /* 0번째고객이 장바구니에 물건을 담는다 */
        int cid = cartDao.getcustAll().get(0).getC_id();
        CartDto cart = new CartDto(cid, "GLV000021-20", "pd_clsf_code", "img", "","pd_name", "pd_type_cd", 2,  0, 0);
        assertTrue(cartDao.insert(cart)==1);

        /* 1번째고객이 장바구니에 물건을 담는다 */
        int cid2 = cartDao.getcustAll().get(1).getC_id();
        CartDto cart2 = new CartDto(cid2, "GLV000021-20", "pd_clsf_code", "img", "","pd_name", "pd_type_cd", 2,  0, 0);

        /* cart 0번째고객과 cart3번째 고객이 같은지 비교 */

        assertFalse(cart.equals(cart2));
    }

    @Test
    public void selectAllTest() throws Exception {
        cartDao.deleteAll();
        assertTrue(cartDao.count()==0);

        /* 전체삭제진행후에 장바구니 전체조회할경우 장바구니 개수가 0인지 확인 */
        List<CartDto> list = cartDao.selectAll();
        assertTrue(list.size()==0);

        /* 0번째고객이 장바구니에 물건을 담는다 */
        int cid = cartDao.getcustAll().get(0).getC_id();
        CartDto cart = new CartDto(cid, "GLV000021-20", "pd_clsf_code", "img", "","pd_name", "pd_type_cd", 2,  0, 0);
        assertTrue(cartDao.insert(cart)==1);

        /* 장바구니 전체조회할경우 개수가 1인지 확인 */
        list = cartDao.selectAll();
        assertTrue(list.size()==1);

        /* 같은고객이 장바구니에 한번더 담은후 size가 2인지 확인 */
        assertTrue(cartDao.insert(cart)==1);
        list = cartDao.selectAll();
        assertTrue(list.size()==2);
    }

    @Test
    public void updateTest() throws Exception {
        cartDao.deleteAll();
        assertTrue(cartDao.count()==0);


        /* 0번째고객이 장바구니에 물건을 담는다 */
        int cid = cartDao.getcustAll().get(0).getC_id();
        CartDto cart = new CartDto(cid, "GLV000021-20", "pd_clsf_code", "img", "","pd_name", "pd_type_cd", 2,  0, 0);
        assertTrue(cartDao.insert(cart)==1);
        assertTrue(cartDao.count()==1);

        // 0번쨰 고객의 고객ID 가져오기
        int c_id = cart.getC_id();
        System.out.println(c_id); // 100001
        System.out.println(cart); // CardDto{c_id='100001', pd_id='GLV000021-30', pd_clsf_code='333', cart_cnt=2, price=0, totalPrice=0}
         /*0번째고객의, 사이즈와 장바구니담은수량을 변경한다*/
        cart.setC_id(cid);
        cart.setPd_clsf_code("XS");
        cart.setCart_cnt(3);

        assertTrue(cartDao.update(cart)==1);
        System.out.println("cart1: "+cart); //CardDto{c_id='100001', pd_id='GLV000021-30', pd_clsf_code='XS', cart_cnt=3}

        /* 0번째고객을 선택해서 cart2에 담는다 */
        List<CartDto> cart2 = cartDao.selectUser(c_id);

        // 동일한 객체인지 확인
        System.out.println("cart2: "+cart2);
        assertTrue(c_id==cart2.get(0).getC_id());
    }

    @Test
    public void cartCheckTest() throws Exception {
        cartDao.deleteAll();
        assertTrue(cartDao.count()==0);

        /* 0번째고객이 장바구니에 물건을 담는다 */
        CartDto cart = new CartDto(100003, "GLV000021-20", "pd_clsf_code", "img", "","pd_name", "pd_type_cd", 2,  0, 0);
        CartDto cart2 = new CartDto(100003, "GLV000021-20", "pd_clsf_code", "img", "","pd_name", "pd_type_cd", 2,  0, 0);
        CartDto cart3 = new CartDto(100003, "GLV000021-20", "pd_clsf_code", "img", "","pd_name", "pd_type_cd", 2,  0, 0);
        assertTrue(cartDao.insert(cart)==1);
        assertTrue(cartDao.insert(cart2)==1);
        assertTrue(cartDao.insert(cart3)==1);
        assertTrue(cartDao.count()==3);

//        List<CartDto> c = cartDao.selectAll();
//
//        System.out.println(cartDao.cartCheck(c));
//        assertTrue();
        /* cart 와 cart2는 동일고객 */
        assertTrue(cart.equals(cart2));
        /* car2와 cart3는 다른고객 */
        assertFalse(cart2.equals(cart3));
    }
}