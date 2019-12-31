package com.vp.bookstore.util;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class UpLoadImage {
    public  static List<Object> UpLoadImage(HttpServletRequest req) {
        //设置上传的配置信息，上传缓存大小sizeThreshold，上传缓存位置repository
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(10240);
        //找到上传的工具类，使用上面的配置factory进行上传
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setHeaderEncoding("utf-8");// 设置编码格式
        List<Object> list = new ArrayList<Object>();
        try {
            List<FileItem> items = upload.parseRequest(req);
            for (FileItem item : items) {
                if (item.isFormField()) {
                    //表单元素
                    String vale = item.getString("utf-8");
                    list.add(vale);
                } else {
                    String name = item.getName();
                    if(!name.equals("")) {
                        String newname = UUID.randomUUID().toString() + name.substring(name.lastIndexOf("."));
                        //获取服务器根目录req.getServletContext().getRealPath("/")
                        String path = req.getServletContext().getRealPath("/") + "reception/images/" + newname;

                        item.write(new File(path));

                        list.add("reception/images/" + newname);
                    }else list.add("");
                }
            }
        } catch (
                FileUploadException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
   }


}
