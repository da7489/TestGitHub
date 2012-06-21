/* SellerDAL.cs
 * Description: Real Estata Website
 * SellerDAL to maintain and access the tbl_sellerInfo
 * 
 * Revistion History
 *       Hemlata Gupta,Cory Dafoe, Sachin Kumar Dhiman,Sandeep Singh Bondhi: 2012.03.26: Created
 *       Hemlata Gupta,Cory Dafoe, Sachin Kumar Dhiman,Sandeep Singh Bondhi: 2012.03.26: Version 1.0 Completed
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

// <summary>
/// Summary description forSellerDAL
/// SellerrDAL - class to access and maintain the tbl_sellerInfo table in the listigInfoDB
/// ... Hemlata Gupta Mar 2012
/// </summary>
public class SellerDAL
{
    //Class level variables and properties
    private static String sellerString=ConfigurationManager.ConnectionStrings["ListingConnection"].ToString();
    private static SqlConnection sellerConn = new SqlConnection(sellerString);
    private int sellerId = 0;
    private string name = "", address = "", phone = "", email = "", notes = "";
    private decimal commissionRate = 0, askPrice = 0;

    //Get and set properties for class variables
    public int SellerId
    {
        get { return sellerId; }
        set { sellerId = value; }
    }
    

    public string Notes
    {
        get { return notes; }
        set { if(value!=null) notes=value.Trim(); }
    }

    public string Email
    {
        get { return email; }
        set { if(value!=null) email= value.Trim(); }
    }
   

    public string Phone
    {
        get { return phone; }
        set { if(value!=null) phone= value.Trim(); }
    }

    public string Name
    {
        get { return name; }
        set { if(value!=null) name= value.Trim(); }
    }

    public string Address
    {
        get { return address; }
        set {if( value!=null) address= value.Trim(); }
    }

    public decimal AskPrice
    {
        get { return askPrice; }
        set { askPrice = value; }
    }

    public decimal CommissionRate
    {
        get { return commissionRate; }
        set { commissionRate = value; }
    }
    
	public SellerDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    // get all records from the tbl_sellerInfo ordered by name

    public static DataTable GetSellers()
    {
       String sellerSql = string.Format("SELECT * FROM tbl_sellerInfo ORDER BY name");
       SqlDataAdapter sellerAdapter = new SqlDataAdapter(sellerSql, sellerConn);
       DataTable sellerTable = new DataTable();
       try
       {
           sellerAdapter.Fill(sellerTable);
           return sellerTable;
       }
       catch (Exception ex)
       {
           
           throw ex;
       }

    }

    // get specific records from the tbl_sellerInfo for given key
    public static DataTable GetSeller(int sellerId)
    {
        String sellerSql = string.Format("SELECT * FROM tbl_sellerInfo  WHERE sellerID='{0}'", sellerId);
        SqlDataAdapter sellerAdapter = new SqlDataAdapter(sellerSql, sellerConn);
        DataTable sellerTable = new DataTable();
        try
        {
            sellerAdapter.Fill(sellerTable);
            return sellerTable;
        }
        catch (Exception ex)
        {

            throw ex;
        }

    }

    // get specific records for seller name from the tbl_sellerInfo for a given key
    public static DataTable GetSellerName(int sellerId)
    {
        String sellerSql = string.Format("SELECT Name +''+ Address FROM tbl_sellerInfo  WHERE sellerID='{0}'", sellerId);
        SqlDataAdapter sellerAdapter = new SqlDataAdapter(sellerSql, sellerConn);
        DataTable sellerTable = new DataTable();
        try
        {
            sellerAdapter.Fill(sellerTable);
            return sellerTable;
        }
        catch (Exception ex)
        {

            throw ex;
        }

    }


    //Insert method to insert new seller object into tbl_HouseInfo

    public static Int32 Insert(SellerDAL newSeller)
    {
        string sqlInsert = String.Format("INSERT INTO tbl_sellerInfo (Name, Address, Phone, commissionRate,AskPrice,Email,Notes)" +
              " VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", newSeller.name, newSeller.address, 
            newSeller.phone, newSeller.commissionRate, newSeller.askPrice, newSeller.email, newSeller.notes);
        SqlCommand insertCommand = new SqlCommand(sqlInsert, sellerConn);
        try
        {
            sellerConn.Open();
            insertCommand.ExecuteNonQuery();
            insertCommand.CommandText="SELECT @@IDENTITY";
            return Convert.ToInt32(insertCommand.ExecuteScalar());
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            sellerConn.Close();
        }
        
    }

    //Update method to update new house object into tbl_HouseInfo
    public static void Update(SellerDAL newSeller)
    {
        string sqlUpdate = String.Format(
           "UPDATE tbl_sellerInfo SET Name='{0}', Address='{1}', Phone='{2}', commissionRate='{3}', AskPrice='{4}', Email='{5}', Notes='{6}' WHERE sellerID='{7}'" ,
           newSeller.name, newSeller.address,newSeller.phone, newSeller.commissionRate,newSeller.askPrice,newSeller.email, newSeller.notes,newSeller.sellerId);

        SqlCommand updateCommand = new SqlCommand(sqlUpdate, sellerConn);
        try
        {
            sellerConn.Open();
            updateCommand.ExecuteNonQuery();
            
        }
        catch (Exception ex)
        {

            throw ex;
        }
        finally
        {
            sellerConn.Close();
        }

    }
    
}