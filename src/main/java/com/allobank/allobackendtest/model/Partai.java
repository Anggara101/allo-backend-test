package com.allobank.allobackendtest.model;

import java.util.UUID;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name="partai")
@Data
public class Partai {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;
    private String namaPartai;
    @Column(name = "no_urut")
    private Integer nomorUrut;
}
