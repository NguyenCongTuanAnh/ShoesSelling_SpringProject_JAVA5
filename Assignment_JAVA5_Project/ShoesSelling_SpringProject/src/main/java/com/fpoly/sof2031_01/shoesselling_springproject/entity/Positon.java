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
@Table(name = "positions")
public class Positon {
    @Id
    @GeneratedValue(generator = "UUID")
    @Column(name = "position_id")
    private UUID positionID;
    @Column(name = "position_code")
    private String positionCode;
    @Column(name = "position_name")
    private String positionName;
    @Column(name = "position_status")
    private int positionStatus;
}
