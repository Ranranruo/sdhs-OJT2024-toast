package kr.hs.sdh.toast.controller;

import kr.hs.sdh.toast.model.CustomerDetails;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
class MainController {

    @GetMapping(value = "/")
    private String index(@AuthenticationPrincipal CustomerDetails user, Model model) {
        model.addAttribute("user", user);

        return "index";
    }

}