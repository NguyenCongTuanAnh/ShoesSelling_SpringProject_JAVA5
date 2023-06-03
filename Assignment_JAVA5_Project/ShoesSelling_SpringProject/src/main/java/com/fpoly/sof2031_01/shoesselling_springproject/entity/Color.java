package com.fpoly.sof2031_01.shoesselling_springproject.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
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
@Table(name = "colors")
public class Color {
    @Id
    @GeneratedValue(generator = "UUID")
    @Column(name = "colors_id")
    private UUID colorID;
    @Column(name = "colors_code")
    private String colorCode;
    @Column(name = "colors_name")
    private String colorName;
}
