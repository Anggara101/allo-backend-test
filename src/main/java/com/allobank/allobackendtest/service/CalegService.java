package com.allobank.allobackendtest.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.allobank.allobackendtest.model.Caleg;
import com.allobank.allobackendtest.repository.CalegRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CalegService {

    private final CalegRepository calegRepository;

    public List<Caleg> getCaleg(String namaDapil, String namaPartai) {
        return calegRepository.findAllWithFilters(namaDapil, namaPartai);
    }

}
