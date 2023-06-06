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

import java.math.BigDecimal;
import java.sql.Date;
import java.text.DecimalFormat;
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

    @Column(name = "orders_createddate")
    private Date createdDate;
    @Column(name = "orders_paymentdate")
    private Date paymentDate;
    @Column(name = "orders_appointmentdate")
    private Date appointmentDate;
    @Column(name = "orders_shipdate")
    private Date shipDate;
    @Column(name = "orders_receivedate")
    private Date receiveDate;
    @Column(name = "orders_receivername")
    private String receiverName;
    @Column(name = "orders_receiveraddress")
    private String receiverAddress;
    @Column(name = "orders_receiverphonenumber")
    private String receiverPhonenumber;
    @Column(name = "orders_status")
    private int orderStatus;
    @Column(name = "total_order_price")
    private BigDecimal totalOrderPrice;

    public String toStringStatus(){
        if (this.orderStatus == 1){
            return "Đã Thanh Toán";
        }else {
            return "Chưa Thanh Toán";
        }
    }
    public String convertVNDToCurrencyFormat(double vnd) {
        // Format VND with decimal separator dot
        DecimalFormat formatter = new DecimalFormat("#,###.##");
        String formattedVND = formatter.format(vnd);

        // Replace dot with comma
        formattedVND = formattedVND.replace(".", ",");

        // Append "đ" character to the end
        formattedVND += " VNĐ";

        return formattedVND;
    }
}

