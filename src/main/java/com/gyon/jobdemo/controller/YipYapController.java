package com.gyon.jobdemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class YipYapController {
    @GetMapping("/yip")
    public String yip() {
        return "yap";
    }
}
