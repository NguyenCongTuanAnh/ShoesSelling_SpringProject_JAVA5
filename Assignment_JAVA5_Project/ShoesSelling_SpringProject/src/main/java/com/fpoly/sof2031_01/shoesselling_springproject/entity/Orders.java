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

import java.sql.Date;
import java.util.UUID;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder

@Entity
@Table(name = "orders")
public class Orders {

    @Id
    @GeneratedValue(generator = "UUID")
    @Column(name = "orders_id")
    private UUID odersID;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "customers_id", referencedColumnName = "customers_id")
    private Customer customer;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "employees_id", referencedColumnName = "employees_id")
    private Employee employee ;
    @Column(name = "orders_code")
    private String ordersCode;

    @Column(name = "employees_createddate")
    private Date employeesCreateddate;
    @Column(name = "employees_paymentdate")
    private Date employeesPaymentdate;
    @Column(name = "employees_appointmentdate")
    private Date employeesAppointmentdate;
    @Column(name = "employees_shipdate")
    private Date employeesShipdate;
    @Column(name = "employees_receivedate")
    private Date employeesReceivedate;
    @Column(name = "employees_receivername")
    private String employeesReceivername;
    @Column(name = "employees_receiveraddress")
    private String employeesReceiveraddress;
    @Column(name = "employees_receiverphonenumber")
    private String employeesReceiverphonenumber;
    @Column(name = "employees_status")
    private int employeesStatus;
}
