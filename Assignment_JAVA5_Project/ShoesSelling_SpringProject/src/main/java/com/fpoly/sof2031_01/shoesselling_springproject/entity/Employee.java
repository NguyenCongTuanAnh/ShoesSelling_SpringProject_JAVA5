package com.fpoly.sof2031_01.shoesselling_springproject.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
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
@Table(name = "employees")
public class Employee {
    @Id
    @GeneratedValue(generator = "UUID")
    @Column(name = "employees_id")
    private UUID employeesID;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "position_id", referencedColumnName = "position_id")
    private Positon positon;

    @Column(name = "employees_code")
    private String employeesCode;
    @Column(name = "employees_name")
    private String employeesName;
    @Column(name = "employees_address")
    private String employeesAddress;
    @Column(name = "employees_phonenumber")
    private String employeesPhonenumber;
    @Column(name = "employees_gender")
    private boolean customersGender;
    @Column(name = "employees_birthday")
    private boolean customersBirthday;
    @Column(name = "employees_password")
    private boolean customersPassword;
    @Column(name = "employees_status")
    private boolean customersStatus;
}
