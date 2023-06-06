package com.fpoly.sof2031_01.shoesselling_springproject.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.text.DecimalFormat;
import java.util.UUID;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
public class Cart {
    private ProductDetail productDetail;
    private int shoeQuaity;

    public double shoeTotalPrice(){
        return shoeQuaity * productDetail.getExportPrice();
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
