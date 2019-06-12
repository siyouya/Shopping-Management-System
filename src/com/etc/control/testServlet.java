package com.etc.control;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class UploadServlet
 */
@MultipartConfig
@WebServlet(name = "testServlet",urlPatterns = "/testServlet")
public class testServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        Part part = request.getPart("photo");
        String fileName = getFileName(part);
        writeTo(fileName,part);
    }

    private void writeTo(String fileName, Part part)throws IOException {
        InputStream in = part.getInputStream();
        OutputStream out = new FileOutputStream("d:/"+fileName);
        byte[] b = new byte[1024];
        int length = -1;
        while((length = in.read(b))!=-1)
        {
            out.write(b, 0, length);
        }
        in.close();
        out.close();
    }

    private String getFileName(Part part) {
        String head = part.getHeader("Content-Disposition");
        String fileName = head.substring(head.indexOf("filename=\"")+10, head.lastIndexOf("\""));
        System.out.println(fileName);
        return fileName;
    }

}