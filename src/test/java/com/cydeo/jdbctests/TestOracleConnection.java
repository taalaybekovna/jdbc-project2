package com.cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnection {

    /*
    HOW TO INIT VARIABLE

    OPT+ENTER --> Introduce Local Varibale --> MAC
    ALT+ENTER --> Introduce Local Variable --> WIN

   */
    public static void main(String[] args) throws SQLException {

        String dbUrl="jdbc:oracle:thin:@54.211.225.58:1521:XE";
        String dbUsername="hr";
        String dbPassword="hr";

        // DriverManager class getConnection is used for to make connection with database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // Statement helps us to execute Query
        Statement statement = conn.createStatement();

        // ResetSet stores data that we get from after query execution
        // rs is just a variable/object name

        ResultSet rs = statement.executeQuery("select * from regions");


        /*

        How to run query?
        - Choose query
        - CMD+ENTER or CTRLENTER
        - Choose session

         */

        //next() --> move to cursor in next line
        //true if the new current row is valid; false if there are no more rows
        //rs.next();

        /*
         getInt( index ) will return Int if we have Int value in that column
            - index starts from 1 with SQL tables

         getInt(columnLabel)

         */
        // 1
        //System.out.println(rs.getInt(1));
        //System.out.println(rs.getInt("REGION_ID"));

        // get me region name
        //System.out.println(rs.getString(2));
        //System.out.println(rs.getString("REGION_NAME"));


        //move to the 2 row
        //rs.next();

        // 2 - Americas
        //System.out.println(rs.getInt("REGION_ID")+" - "+rs.getString("REGION_NAME"));

        //move to the 3 row
        //rs.next();

        // 3 - Asia
        //System.out.println(rs.getInt("REGION_ID")+" - "+rs.getString("REGION_NAME"));

        //move to the 4 row
        //rs.next();

        // 4 - Middle East and Africa
        //System.out.println(rs.getInt("REGION_ID")+" - "+rs.getString("REGION_NAME"));




        while(rs.next()){
            System.out.println(rs.getInt("REGION_ID")+" - "+rs.getString("REGION_NAME"));
        }


        //close conn
        rs.close();
        statement.close();
        conn.close();

    }
}