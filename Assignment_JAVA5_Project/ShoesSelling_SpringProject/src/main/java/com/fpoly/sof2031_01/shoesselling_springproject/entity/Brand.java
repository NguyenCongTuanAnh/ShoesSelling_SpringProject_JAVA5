package com.fpoly.sof2031_01.shoesselling_springproject.entity;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.util.UUID;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder

@Entity
@Table(name = "brands")
public class Brand {
    @Column(name = "brands_id")
    @Id
    private UUID brandId;

    @Column(name = "brands_code")
    private String brandCode;

    @Column(name = "brands_name")
    private String brandsName;
}
