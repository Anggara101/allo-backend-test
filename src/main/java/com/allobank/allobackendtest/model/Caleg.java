package com.allobank.allobackendtest.model;

import java.util.UUID;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name="caleg")
@Data
public class Caleg {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;
    @ManyToOne
    @JoinColumn(name = "dapil_id")
    private Dapil dapil;
    @ManyToOne
    @JoinColumn(name = "partai_id")
    private Partai partai;
    @Column(name = "no_urut")
    private Integer nomorUrut;
    private String nama;
    @Enumerated(EnumType.STRING)
    private JenisKelamin jenisKelamin;
}
