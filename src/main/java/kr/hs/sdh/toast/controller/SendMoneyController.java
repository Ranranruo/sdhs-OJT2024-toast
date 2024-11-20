package kr.hs.sdh.toast.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller

public class SendMoneyController {
    @GetMapping("/send-money/{bankAccountNumber}")
    private String getSendMoneyPage(@PathVariable String bankAccountNumber) {
        return "send-money";
    }
}
