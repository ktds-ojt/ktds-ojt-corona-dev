package com.example.controller;

import com.example.model.TEST_DB_1;
import com.example.service.UserService;
import io.micrometer.shaded.org.pcollections.HashPMap;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
public class ExcelController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/api/user/testdb1/excel")
    public void excelDown(HttpServletResponse response) throws Exception {

        // 게시판 목록조회
        List<TEST_DB_1> test_db_1 = userService.SelectTESTDB1();
        // 워크북 생성
        Workbook wb = new HSSFWorkbook();
        Sheet sheet = wb.createSheet("게시판");
        Row row = null;
        Cell cell = null;
        int rowNo = 0;

        row = sheet.createRow(rowNo++);
        cell = row.createCell(0);
        cell.setCellValue("시");
        cell = row.createCell(1);
        cell.setCellValue("전기소비(kWh)");
        cell = row.createCell(2);
        cell.setCellValue("단가(원)");;
        cell = row.createCell(3);
        cell.setCellValue("전기요금(원)");

        // 데이터 부분 생성



        for(int i = 0; i < test_db_1.size(); i++){
            HashMap<String, Integer> map = test_db_1.get(i);
            System.out.println(map.get("TEST_DB_TIME"));
            row = sheet.createRow(rowNo++);

            cell = row.createCell(0);
            cell.setCellValue(String.valueOf(map.get("TEST_DB_TIME")));

            cell = row.createCell(1);
            cell.setCellValue(map.get("TEST_DB_USE"));

            cell = row.createCell(2);
            cell.setCellValue(map.get("TEST_DB_COST"));

            cell = row.createCell(3);
            cell.setCellValue(map.get("TEST_DB_PRICE"));
        }

        // 컨텐츠 타입과 파일명 지정
        response.setContentType("ms-vnd/excel");
        response.setHeader("Content-Disposition", "attachment;filename=test.xls");

        // 엑셀 출력
        wb.write(response.getOutputStream());
        wb.close();
    }
};