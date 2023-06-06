package com.fpoly.sof2031_01.shoesselling_springproject.controller;

import java.security.SecureRandom;
import java.sql.Date;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Base64;

public class MyFuntion {
    public static String convertVNDToCurrencyFormat(double vnd) {
        // Format VND with decimal separator dot
        DecimalFormat formatter = new DecimalFormat("#,###.##");
        String formattedVND = formatter.format(vnd);

        // Replace dot with comma
        formattedVND = formattedVND.replace(".", ",");

        // Append "đ" character to the end
        formattedVND += " VNĐ";

        return formattedVND;
    }
    public static String genUniqueidentifierString(int length){
        SecureRandom random = new SecureRandom();
        byte[] bytes = new byte[length];
        random.nextBytes(bytes);
        String base64String = Base64.getEncoder().encodeToString(bytes);
        String code = base64String.replaceAll("[^A-Za-z0-9]", "").substring(0, length);
        return code;
    }


    public static java.sql.Date convertStringToSqlDate(String dateString) throws ParseException {

        if (dateString.isBlank()){
            return null;
        }
            DateFormat inputFormatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
        return  new java.sql.Date(inputFormatter.parse(dateString).getTime());
    }




}
