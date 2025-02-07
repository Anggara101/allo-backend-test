package com.allobank.allobackendtest.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.allobank.allobackendtest.model.Caleg;
import com.allobank.allobackendtest.service.CalegService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("api/v1/caleg")
public class CalegController {

    private final CalegService calegService;

    @GetMapping
    public ResponseEntity<List<Caleg>> getCaleg(@RequestParam(required = false) String dapil, @RequestParam(required = false) String partai) {
        List<Caleg> calegs = calegService.getCaleg(dapil, partai);
        return ResponseEntity.ok(calegs);
    }    
}
