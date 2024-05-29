package com.homerunball.order.domain;

import com.homerunball.cart.domain.CartDto;

import java.math.BigInteger;
import java.util.Date;
import java.util.Objects;

public class OrderDetDto {
    private Integer od_det_seqnum;
    private BigInteger od_id;
    private String pd_id;
    private String pd_clsf_cd;
    private Integer c_id;
    private Date od_dt;
    private String pd_name;
    private Integer sls_prc;
    private Integer od_qty;
    private String od_stat_cd;
    private String pd_type_cd;
    private String mn_img_fn;
    private Date frst_reg_dt;
    private String frst_reg_id;
    private Date last_mod_dt;
    private String last_mod_id;

    /* 2024.05.23 [혁락] 추가 */
    private String brd_name;
    private String od_stat_name;
    /* end  2024.05.23 [혁락] 추가 */


    public OrderDetDto(){}

    public  OrderDetDto(Integer c_id){
        this(c_id, "", "", new Date(), "",0,0,"","","", new Date(),"", new Date(), "");
    }

    public OrderDetDto(Integer c_id, String pd_id, String pd_clsf_cd, Date od_dt, String pd_name, Integer sls_prc, Integer od_qty,  String od_stat_cd, String mn_img_fn, String pd_type_cd, Date frst_reg_dt, String frst_reg_id, Date last_mod_dt, String last_mod_id) {

        this.c_id = c_id;
        this.pd_id = pd_id;
        this.pd_clsf_cd = pd_clsf_cd;
        this.od_dt = od_dt;
        this.pd_name = pd_name;
        this.sls_prc = sls_prc;
        this.od_qty = od_qty;
        this.od_stat_cd = od_stat_cd;
        this.mn_img_fn = mn_img_fn;
        this.pd_type_cd = pd_type_cd;
        this.frst_reg_dt = frst_reg_dt;
        this.frst_reg_id = frst_reg_id;
        this.last_mod_dt = last_mod_dt;
        this.last_mod_id = last_mod_id;
    }

    public OrderDetDto(BigInteger od_id, Integer c_id, String pd_id, String pd_clsf_cd) {
        this.od_id = od_id;
        this. c_id =  c_id;
        this.pd_id = pd_id;
        this.pd_clsf_cd = pd_clsf_cd;
    }

    private CartDto cartDto; // CartDto 필드 추가

    // Getter and Setter for cartDto
    public CartDto getCartDto() {
        return cartDto;
    }

    public void setCartDto(CartDto cartDto) {
        this.cartDto = cartDto;
    }





    @Override
    public String toString() {
        return "OrderDetDto{" +
                "od_det_seqnum=" + od_det_seqnum +
                ", od_id=" + od_id +
                ", pd_id='" + pd_id + '\'' +
                ", pd_clsf_cd='" + pd_clsf_cd + '\'' +
                ", c_id='" + c_id + '\'' +
                ", od_dt=" + String.format("%tF",od_dt) +
                ", pd_name='" + pd_name + '\'' +
                ", sls_prc=" + sls_prc +
                ", od_qty=" + od_qty +
                ", od_stat_cd='" + od_stat_cd + '\'' +
                ", mn_img_fn='" + mn_img_fn + '\'' +
                ", pd_type_cd='" + pd_type_cd + '\'' +
                ", frst_reg_dt=" + frst_reg_dt +
                ", frst_reg_id='" + frst_reg_id + '\'' +
                ", last_mod_dt=" + last_mod_dt +
                ", last_mod_id='" + last_mod_id + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;
        OrderDetDto that = (OrderDetDto) object;
        return Objects.equals(od_det_seqnum, that.od_det_seqnum) && Objects.equals(od_id, that.od_id) && Objects.equals(pd_id, that.pd_id) && Objects.equals(pd_clsf_cd, that.pd_clsf_cd) && Objects.equals(c_id, that.c_id) && Objects.equals(od_dt, that.od_dt) && Objects.equals(pd_name, that.pd_name) && Objects.equals(od_stat_cd, that.od_stat_cd) && Objects.equals(pd_type_cd, that.pd_type_cd) && Objects.equals(mn_img_fn, that.mn_img_fn) && Objects.equals(frst_reg_dt, that.frst_reg_dt) && Objects.equals(frst_reg_id, that.frst_reg_id) && Objects.equals(last_mod_dt, that.last_mod_dt) && Objects.equals(last_mod_id, that.last_mod_id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(od_det_seqnum, od_id, pd_id, pd_clsf_cd, c_id, od_dt, pd_name, od_stat_cd, frst_reg_dt, frst_reg_id, last_mod_dt, last_mod_id);
    }

    public Integer getOd_det_seqnum() {
        return od_det_seqnum;
    }

    public void setOd_det_seqnum(Integer od_det_seqnum) {
        this.od_det_seqnum = od_det_seqnum;
    }

    public BigInteger getOd_id() {
        return od_id;
    }

    public void setOd_id(BigInteger od_id) {
        this.od_id = od_id;
    }

    public String getPd_id() {
        return pd_id;
    }

    public void setPd_id(String pd_id) {
        this.pd_id = pd_id;
    }

    public String getPd_clsf_cd() {
        return pd_clsf_cd;
    }

    public void setPd_clsf_cd(String pd_clsf_cd) {
        this.pd_clsf_cd = pd_clsf_cd;
    }

    public Integer getC_id() {
        return c_id;
    }

    public void setC_id(Integer c_id) { this.c_id = c_id;}

    public Date getOd_dt() {
        return od_dt;
    }

    public void setOd_dt(Date od_dt) {
        this.od_dt = od_dt;
    }

    public String getPd_name() {
        return pd_name;
    }

    public void setPd_name(String pd_name) {
        this.pd_name = pd_name;
    }

    public Integer getSls_prc() {
        return sls_prc;
    }

    public void setSls_prc(Integer sls_prc) {
        this.sls_prc = sls_prc;
    }

    public Integer getOd_qty() {
        return od_qty;
    }

    public void setOd_qty(Integer od_qty) {
        this.od_qty = od_qty;
    }

    public String getOd_stat_cd() { return od_stat_cd; }

    public void setOd_stat_cd(String od_stat_cd) {this.od_stat_cd = od_stat_cd;}
    public String getMn_img_fn() {return mn_img_fn;}
    public void setMn_img_fn(String mn_img_fn) {this.mn_img_fn = mn_img_fn;}
    public String getPd_type_cd() {return pd_type_cd;}

    public void setPd_type_cd(String pd_type_cd) {this.pd_type_cd = pd_type_cd;}

    public Date getFrst_reg_dt() {
        return frst_reg_dt;
    }

    public void setFrst_reg_dt(Date frst_reg_dt) {
        this.frst_reg_dt = frst_reg_dt;
    }

    public String getFrst_reg_id() {
        return frst_reg_id;
    }

    public void setFrst_reg_id(String frst_reg_id) {
        this.frst_reg_id = frst_reg_id;
    }

    public Date getLast_mod_dt() {
        return last_mod_dt;
    }

    public void setLast_mod_dt(Date last_mod_dt) {
        this.last_mod_dt = last_mod_dt;
    }

    public String getLast_mod_id() {
        return last_mod_id;
    }

    public void setLast_mod_id(String last_mod_id) {
        this.last_mod_id = last_mod_id;
    }


    /* 2024.05.23 [혁락] 추가 */
    public String getBrd_name() {
        return brd_name;
    }

    public void setBrd_name(String brd_name) {
        this.brd_name = brd_name;
    }

    public String getOd_stat_name() {
        return od_stat_name;
    }

    public void setOd_stat_name(String od_stat_name) {
        this.od_stat_name = od_stat_name;
    }
    /* end  2024.05.23 [혁락] 추가 */
}