package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P03_MetadataTest {
    String dbUrl = "jdbc:oracle:thin:@54.211.225.58:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {

        // DriverManager class getConnection is used for to make connection with database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // Statement helps us to execute Query
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        // ResultSet stores data that we get from after query execution
        // rs is just a variable/object name
        ResultSet rs = statement.executeQuery("select * from REGIONS" );


        // Database Metadata --> Information bout database
        DatabaseMetaData databaseMetaData = conn.getMetaData();


        System.out.println(databaseMetaData.getUserName());
        System.out.println(databaseMetaData.getDatabaseProductName());
        System.out.println(databaseMetaData.getDatabaseProductVersion());
        System.out.println(databaseMetaData.getDriverName());
        System.out.println(databaseMetaData.getDriverVersion());

        /*
        We are not going to use it for testing purpose.Just information about database
         */

        // Metadata -- Data about Table
        ResultSetMetaData rsmd = rs.getMetaData();

        // How many column we have
        int columnCount = rsmd.getColumnCount();
        System.out.println(columnCount);

        // What is the column name 5th column
        // System.out.println(rsmd.getColumnName(5));
        // it will return columnName based on provided index


        // PRINT ALL COLUMN NAMES DYNAMICALLY
        System.out.println("=== PRINT ALL COLUMN NAMES DYNAMICALLY ===");
        for (int i = 1; i <=columnCount; i++) {
            System.out.println(rsmd.getColumnName(i));
        }


        /*

        - HOW TO GET DATA DYNAMICALLY

           ResultTest --> Table Content

                rs.next()          --> with while loop we are getting data from all table.
                                        It will jump to each row to get data
                rs.getString(index) --> To get related cell content
                rs.getString(columName)

           ResultTestMetadata -->Info about table

                rsmd.getColumnCount() --> it will return columnCount
                rsmd.getColumnName(index) --> it will give provided index ColumnName


         */






        // PRINT ALL TABLE CONTENT DYNAMICALLY

        // iterate each row with while loop
        while(rs.next()){

            //iterate each column dynamically
            for (int i = 1; i <=rsmd.getColumnCount(); i++) {
                System.out.print(rsmd.getColumnName(i)+"-"+rs.getString(i)+" ");

            }
            System.out.println();
        }




        //close conn
        rs.close();
        statement.close();
        conn.close();

    }
}

