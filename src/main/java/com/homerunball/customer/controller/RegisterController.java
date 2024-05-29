package com.homerunball.customer.controller;
import com.homerunball.customer.dao.CustDao;
import com.homerunball.customer.domain.CustDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import com.homerunball.customer.service.CustService;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;


@Controller
@RequestMapping("/register")
public class RegisterController {

    /*고객다오 의존성 주입*/
    @Autowired
    CustDao custDao;

    /*고객서비스 의존성 주입*/
    @Autowired
    CustService custService;

    /*겟맵핑 /add 경로일시 회원가입 폼으로 이동*/
    @GetMapping("/add")
    public String register() {
        return "registerForm";
    }

    /*유효성 검사를 하기 위한 어노테이션*/
    /*새로 작성한 Validator를 사용하기 위해서 InitBinder 어노테이션 사용*/
    @InitBinder
    /*유효성 검사를 위해 WebDataBinder클래스의 객체를 사용*/
    public void custValid(WebDataBinder binder) {
        /*객체를 통해 새로운 Validator인 CustValidator를 등록*/
        binder.setValidator(new CustValidator());
    }

    @GetMapping("/mailCheck")
    @ResponseBody
    public String mailCheck(String email, HttpServletRequest request) {
     try{
        System.out.println("이메일 인증 요청이 들어옴!");
        System.out.println("이메일 인증 이메일 : " + email);

        String verificationCode = custService.joinEmail(email); // 이메일로 인증번호 발송
        System.out.println("자바에서 받아온 인증번호:  " + verificationCode);

        HttpSession session = request.getSession();
        session.setAttribute("verificationCode", verificationCode); // 세션에 인증번호 저장
        System.out.println("세션에 저장된 인증번호: " + session.getAttribute("verificationCode"));

        return verificationCode;
     } catch (Exception e) {
         return "errorPageC";
     }
    }

    @PostMapping("/add")
    public String save(@Valid CustDto custDto, BindingResult result, RedirectAttributes Successful, @RequestParam("c_email2") String userInputCode, HttpServletRequest request) {
        System.out.println("자스를 통과한 이메일, 비밀번호, 핸드폰 번호 에러가 있나요? = " + result);
        try {
            if (result.hasErrors()) {
                return "registerForm";
            }
            HttpSession session = request.getSession();
            String savedVerificationCode = (String) session.getAttribute("verificationCode");

            System.out.println("넘어와라: " + savedVerificationCode);
            System.out.println("입력 값: " + userInputCode);

            if (savedVerificationCode != null && savedVerificationCode.equals(userInputCode)) {
                // 인증번호 일치 시 회원가입 진행
                if (custDto.getSms_agr() == null) {
                    custDto.setSms_agr("N");
                }
                if (custDto.getEmail_agr() == null) {
                    custDto.setEmail_agr("N");
                }
                System.out.println("회원가입 정보 = " + custDto);
                Successful.addFlashAttribute("signUpClear", "msg");

                custDto.setC_pwd(custService.pwdEncrypt(custDto.getC_pwd()));

                /*회원가입시 적었던 정보를 Dto를 이용하여 Dao에 인서트하여 DB 저장*/
                custDao.insert(custDto);

                return "redirect:/login";
//                return "redirect:/";
            } else {
                // 인증번호 불일치 시 회원가입 폼으로 이동
                System.out.println("인증번호 잘못 입력하셨다구요");
                return "registerForm";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "errorPageC";
        }
    }

    @PostMapping("/email-check")
    public @ResponseBody String emailCheck(@RequestParam("c_email") String c_email) {
        try {
            String checkResult = custService.emailCheck(c_email);
            return checkResult;
        } catch (Exception e) {
            // 예외 처리 로직
            return "Invalid email address";
        }
    }
}