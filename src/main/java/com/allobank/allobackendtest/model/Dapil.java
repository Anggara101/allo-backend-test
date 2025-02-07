package com.allobank.allobackendtest.model;

import java.util.List;
import java.util.UUID;

import jakarta.persistence.CollectionTable;
import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name="dapil")
@Data
public class Dapil {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;
    private String namaDapil;
    private String provinsi;
    @ElementCollection
    @CollectionTable(name = "dapil_wilayah", joinColumns = @JoinColumn(name = "dapil_id"))
    @Column(name = "wilayah")
    private List<String> wilayahDapilList;
    private int jumlahKursi;
}
