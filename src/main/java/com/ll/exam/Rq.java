package com.ll.exam;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

public class Rq {
    private HttpServletRequest req;
    private HttpServletResponse resp;
    public Rq(HttpServletRequest req, HttpServletResponse resp) {
        this.req = req;
        this.resp = resp;

        // 한글깨짐 해결
        try {
            req.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=utf-8");
    }
    public int getIntParam (String paramName, int defaultValue) {
//        // 내구현
//        return Integer.parseInt(req.getParameter(paramName));
        // 강사님
        String value = req.getParameter(paramName);

        if (value == null) { // 예외1 : 숫자입력x
            return defaultValue;
        }

        try { // 나머지 예외처리 : try&catch 문 활용
            return Integer.parseInt(value);
        }
        catch (NumberFormatException e) {
            return defaultValue;
        }
    }
    //    // 내 구현
//    public void appendBody(String str) throws IOException {
//        resp.getWriter().append(str);
//    }
    // 강사님
    public void appendBody(String str) {
        // throws IOException 은 호출 측에 에러 떠넘김
        try {
            resp.getWriter().append(str);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
