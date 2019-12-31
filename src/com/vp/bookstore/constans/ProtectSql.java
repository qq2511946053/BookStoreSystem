package com.vp.bookstore.constans;

/**
 * @Author: duYang
 * @Date: 2019/12/23 14:01
 * @Version: 1.0
 */
public class ProtectSql {
    public  final  static String  PROTECTADD="insert into protect(user_id,protect_problem,protect_answer) values(?,?,?)";
    public  final  static String  FINDPROTECTBYID="select*from protect where user_id=?";
}
