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

import java.sql.Date;
import java.util.UUID;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder

@Entity
@Table(name = "customers")
public class Customer {
    @Id
    @GeneratedValue(generator = "UUID")
    @Column(name = "customers_id")
    private UUID customersID;
    @Column(name = "customers_code")
    private String customersCode;
    @Column(name = "customers_name")
    private String customersName;
    @Column(name = "customers_firstname")
    private String firstName;
    @Column(name = "customers_lastname")
    private String lastName;
    @Column(name = "customers_birthday")
    private Date customersBirthday;
    @Column(name = "customers_phonenumber")
    private String customersPhonenumber;
    @Column(name = "customers_address")
    private String customersAddress;
    @Column(name = "customers_cityname")
    private String customersCityName;
    @Column(name = "customers_countryname")
    private String customersCountryName;
    @Column(name = "customers_gender")
    private boolean customersGender;
    @Column(name = "customers_status")
    private int customersStatus;
}
