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
public class Brands {
    @Column(name = "brands_id")
    @Id
    private UUID brandsId;

    @Column(name = "brands_code")
    private String brandsCode;

    @Column(name = "brands_name")
    private String brandsName;
}
