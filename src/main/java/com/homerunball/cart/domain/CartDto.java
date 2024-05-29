package com.homerunball.cart.domain;

import java.util.Date;
import java.util.Objects;

public class CartDto {
    private int c_id;
    private String pd_id;
    private String pd_clsf_code;
    private Date frst_reg_dt;
    private String frst_reg_id;
    private Date last_mod_dt;
    private String last_mod_id;

    private String mn_img_fn;
    private String cd_name;
    private  String pd_name;
    private String pd_type_cd;
    private int cart_cnt=1;
    private int sls_prc;
    private int rtl_prc;

    public CartDto(){}
    public CartDto(int c_id, String pd_id, String pd_clsf_code, String mn_img_fn, String cd_name, String pd_name, String pd_type_cd, int cart_cnt, int sls_prc, int rtl_prc) {
        this.c_id = c_id;
        this.pd_id = pd_id;
        this.pd_clsf_code = pd_clsf_code;
        this.mn_img_fn = mn_img_fn;
        this.cd_name = cd_name;
        this.pd_name = pd_name;
        this.pd_type_cd = pd_type_cd;
        this.cart_cnt = cart_cnt;
        this.sls_prc = sls_prc;
        this.rtl_prc = rtl_prc;
    }


    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;
        CartDto cartDto = (CartDto) object;
        return c_id == cartDto.c_id && cart_cnt == cartDto.cart_cnt && sls_prc == cartDto.sls_prc && rtl_prc == cartDto.rtl_prc && Objects.equals(pd_id, cartDto.pd_id) && Objects.equals(pd_clsf_code, cartDto.pd_clsf_code) && Objects.equals(frst_reg_dt, cartDto.frst_reg_dt) && Objects.equals(frst_reg_id, cartDto.frst_reg_id) && Objects.equals(last_mod_dt, cartDto.last_mod_dt) && Objects.equals(last_mod_id, cartDto.last_mod_id) && Objects.equals(mn_img_fn, cartDto.mn_img_fn) && Objects.equals(cd_name, cartDto.cd_name) && Objects.equals(pd_name, cartDto.pd_name) && Objects.equals(pd_type_cd, cartDto.pd_type_cd);
    }

    @Override
    public int hashCode() {
        return Objects.hash(c_id, pd_id, pd_clsf_code, frst_reg_dt, frst_reg_id, last_mod_dt, last_mod_id, mn_img_fn, cd_name, pd_name, pd_type_cd, cart_cnt, sls_prc, rtl_prc);
    }

    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public String getPd_id() {
        return pd_id;
    }

    public void setPd_id(String pd_id) {
        this.pd_id = pd_id;
    }

    public String getPd_clsf_code() {
        return pd_clsf_code;
    }

    public void setPd_clsf_code(String pd_clsf_code) {
        this.pd_clsf_code = pd_clsf_code;
    }

    public int getCart_cnt() {
        return cart_cnt;
    }

    public void setCart_cnt(int cart_cnt) {
        this.cart_cnt = cart_cnt;
    }

    public String getPd_type_cd() {
        return pd_type_cd;
    }

    public void setPd_type_cd(String pd_type_cd) {
        this.pd_type_cd = pd_type_cd;
    }

    public String getMn_img_fn() {
        return mn_img_fn;
    }

    public void setMn_img_fn(String mn_img_fn) {
        this.mn_img_fn = mn_img_fn;
    }

    public String getCd_name() {
        return cd_name;
    }

    public void setCd_name(String cd_name) {
        this.cd_name = cd_name;
    }
    public String getPd_name() {
        return pd_name;
    }

    public void setPd_name(String pd_name) {
        this.pd_name = pd_name;
    }

    public int getSls_prc() {
        return sls_prc;
    }

    public void setSls_prc(int sls_prc) {
        this.sls_prc = sls_prc;
    }

    public int getRtl_prc() {
        return rtl_prc;
    }

    public void setRtl_prc(int rtl_prc) {
        this.rtl_prc = rtl_prc;
    }

    @Override
    public String toString() {
        return "CartDto{" +
                "c_id=" + c_id +
                ", pd_id='" + pd_id + '\'' +
                ", pd_clsf_code='" + pd_clsf_code + '\'' +
                ", frst_reg_dt=" + frst_reg_dt +
                ", frst_reg_id='" + frst_reg_id + '\'' +
                ", last_mod_dt=" + last_mod_dt +
                ", last_mod_id='" + last_mod_id + '\'' +
                ", mn_img_fn='" + mn_img_fn + '\'' +
                ", cd_name='" + cd_name + '\'' +
                ", pd_name='" + pd_name + '\'' +
                ", pd_type_cd='" + pd_type_cd + '\'' +
                ", cart_cnt=" + cart_cnt +
                ", sls_prc=" + sls_prc +
                ", rtl_prc=" + rtl_prc +
                '}';
    }
}