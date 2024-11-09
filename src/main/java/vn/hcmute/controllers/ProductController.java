package vn.hcmute.controllers;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

@WebServlet(urlPatterns = {"/admin/books","/user/books"})
public class ProductController extends HttpServlet {

}
