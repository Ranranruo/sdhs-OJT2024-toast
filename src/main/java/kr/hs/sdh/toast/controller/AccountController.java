package kr.hs.sdh.toast.controller;

import kr.hs.sdh.toast.entity.Customer;
import kr.hs.sdh.toast.repository.AccountRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
class AccountController {
    private final AccountRepository accountRepository;

    public AccountController(AccountRepository accountRepository) {
        this.accountRepository = accountRepository;
    }

    @GetMapping(value = "/login")
    private String signUp() {
        return "login";
    }

    @GetMapping(value = "/register")
    private String getRegisterPage() {
        return "register";
    }

    @PostMapping("/register")
    private void register(Customer customer) {
//        return accountRepository.
    }

}