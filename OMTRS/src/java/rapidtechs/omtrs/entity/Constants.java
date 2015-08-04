/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rapidtechs.omtrs.entity;

import java.sql.*;
import java.io.*;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author HASNA
 */
public class Constants {
    
    //public static OmtrsUser currentUser;
    //public static List<String> keyList = new ArrayList<String>();

    /*public static void loadKeyList()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/omtrs", "root", "root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM keywords " );
            OmtrsUser user = null;
            while (rs.next())
            {
               keyList.add(rs.getString("KEYWORD"));
            }
        } catch (Exception e)
        {

        }
    }
    
    public static boolean compareArray(String[] dataArry)
    {
        Constants.loadKeyList();
        boolean block = false;
        if (dataArry.length != 0)
        {
            for (String word : dataArry)
            {
                for (String key : Constants.keyList)
                {
                    if (word.equalsIgnoreCase(key))
                    {
                        block = true;
                    }
                }
            }
        }
        return block;
    }
    
    public static boolean compareUserKeys(String[] dataArry, String userID)
    {
        List<String> usrKeyList;
        usrKeyList = Constants.getSelUserKeyList(userID);
        boolean block = false;
        if (dataArry.length != 0)
        {
            for (String word : dataArry)
            {
                for (String key : usrKeyList)
                {
                    if (word.equalsIgnoreCase(key))
                    {
                        block = true;
                    }
                }
            }
        }
        return block;
    }
    public static List<String> getSelUserKeyList(String userID)
    {
        List<String> userKeyList = new ArrayList<String>();
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/socialnet", "root", "root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM user_keywords where USER_ID = " + userID + "");
            while (rs.next())
            {
               userKeyList.add(rs.getString("KEYWORD"));
            }
        } catch (Exception e)
        {

        }
        return userKeyList;
    }
    
    public static int getMisbehaveCount(int userID)
    {
        int count = 0;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/socialnet", "root", "root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT MISBEHAVE_COUNT FROM users where ID = " +userID + "" );
            OmtrsUser user = null;
            while (rs.next())
            {
              count = rs.getInt("MISBEHAVE_COUNT");
            }
        } catch (Exception e)
        {

        }
        return count;
    }*/
    
}
