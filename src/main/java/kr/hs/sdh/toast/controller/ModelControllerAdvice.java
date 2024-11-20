package kr.hs.sdh.toast.controller;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
class ModelControllerAdvice {

    @ModelAttribute(value = "applicationFormUrlencoded")
    private MediaType applicationFormUrlencoded() {
        return MediaType.APPLICATION_FORM_URLENCODED;
    }

}