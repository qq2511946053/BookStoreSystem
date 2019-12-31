package com.vp.bookstore.constans;

/**
 * @Author: duYang
 * @Date: 2019/12/23 14:01
 * @Version: 1.0
 */
public class ReceivingSql {
    public static final String findDefaultReceiving="select receiving_id,receiving_name,receiving_region,receiving_address,postalcode,receiving_phone from receiving where status=1 and user_id=?";
    public static final String findAllReceiving="select receiving_id,receiving_name,receiving_region,receiving_address,postalcode,receiving_phone from receiving where user_id=?";
    public static final String findById="select receiving_id,receiving_name,receiving_region,receiving_address,postalcode,receiving_phone from receiving where receiving_id=?";
}
