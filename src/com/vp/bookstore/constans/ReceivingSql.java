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
    public  static final String FINDRECEIVINGBYID="select*from receiving where user_id=? order by status desc";
    public  static final String FINDRECEIVINGBYIDANDSTATUS="select*from receiving where user_id=? and status=?";
    public  static final String FINDRECEIVINGBYRECEIVINGID="select*from receiving where receiving_id=?";
    public  static final String ADDRECEIVING="insert into receiving(receiving_region,receiving_address,postalcode,receiving_name,receiving_phone,user_id,status) values(?,?,?,?,?,?,?)";
    public  static final String UPDATERECEIVING="update receiving set receiving_region=?,receiving_address=?,postalcode=?,receiving_name=?,receiving_phone=?,user_id=?,status=? where receiving_id=?";
    public  static final String DELETERECEIVING="delete from receiving where receiving_id=?";
}
