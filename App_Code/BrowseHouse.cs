/* BrowseHouse.cs
 * Description: BrowseHouse DAL Class
 * 
 * Revistion History
 *       Hemlata Gupta,Cory Dafoe, Sachin Kumar Dhiman,Sandeep Singh Bondhi: 2012.03.26: Created
 *       Hemlata Gupta,Cory Dafoe, Sachin Kumar Dhiman,Sandeep Singh Bondhi: 2012.03.26: Version 1.0 Completed
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for BrowseHouse
/// BrowseHouse Data Access layer Gets Information and maintains information of tbl_houseInfo of the ListingInfoDB Database
/// </summary>
public class BrowseHouse
{   //  Class Level variables and properties
    private static string sqlConString = ConfigurationManager.ConnectionStrings["ListingConnection"].ToString();
    private static SqlConnection sqlCon = new SqlConnection(sqlConString);    
    private String houseID="", bldNumber="", streetName="", streetDirection="", unitNumber="",
    city="", postalCode="", province="", houseType="", houseStyle="", exterior="",
    description="", parking="", garage="", basement="", lotSize="", area="", roofCover="", ownership="", status="";
    private Decimal tax, price;
    private Int32 bedRoom, bathRoom, sellerID, yearBuilt;
    private bool refrigerator, stove, dishWasher, washerDryer, waterSoftener, waterHeater, centralAC, centralVaccum,
        firePlace, heatSystem, swimmingPool, deck;
    private Nullable<DateTime> datePosted;

    /// <summary>
    /// property to get or set the houseId
    /// </summary>

    public String HouseID
    {
        get
        {
            return houseID;
        }
        set
        {
            if (value != null) houseID = value.Trim();

        }
    }
    
    /// <summary>
    /// property to get or set the bldNumber
    /// </summary
    public String BldNumber
    {
        get
        {
            return bldNumber;
        }
        set
        {
            if (value != null) bldNumber = value.Trim();
        }
    }
     /// <summary>
    /// property to get or set the streetName
    /// </summary

    public String StreetName
    {
        get
        {
            return streetName;
        }
        set
        {
            if (value != null) streetName = value.Trim();
        }
    }

    /// <summary>
    /// property to get or set the streetDirection
    /// </summary
    public String StreetDirection
    {
        get
        {
            return streetDirection;
        }
        set
        {
            if (value != null) streetDirection = value.Trim();
        }
    }


    /// <summary>
    /// property to get or set the unitNumber
    /// </summary

    public String UnitNumber
    {
        get
        {
            return unitNumber;
        }
        set
        {
            if (value != null) unitNumber = value.Trim();

        }
    }

    /// <summary>
    /// property to get or set the city
    /// </summary

    public String City
    {
        get
        {
            return city;
        }
        set
        {
            if (value != null) city = value.Trim();
        }
    }

    /// <summary>
    /// property to get or set the postalCode
    /// </summary

    public String PostalCode
    {
        get
        {
            return postalCode;
        }
        set
        {
            if (value != null) postalCode = value.Trim();
        }
    }

    /// <summary>
    /// property to get or set the Province
    /// </summary

    public String Province
    {
        get
        {
            return province;
        }
        set
        {
            if (value != null) province = value.Trim();
        }
    }

    /// <summary>
    /// property to get or set the tax
    /// </summary

    public Decimal Tax
    {
        get
        {
            return tax;
        }
        set
        {
            if (value != null) tax = Convert.ToDecimal(value.ToString("#.##"));
            else tax = 0;
        }
    }

    /// <summary>
    /// property to get or set the price
    /// </summar

    public Decimal Price
    {
        get
        {
            return Convert.ToDecimal(price.ToString("#.##"));
        }
        set
        {
            if (value != null) price = Convert.ToDecimal(value.ToString("#.##"));
            else price = 0;
        }
    }

    /// <summary>
    /// property to get or set the bedroom
    /// </summar
    public Int32 BedRoom
    {
        get
        {
            return bedRoom;
        }
        set
        {
            if (value != null) bedRoom = value;
            else bedRoom = 0;
        }
    }
    /// <summary>
    /// property to get or set the bathroom
    /// </summar

    public Int32 BathRoom
    {
        get
        {
            return bathRoom;
        }
        set
        {
            if (value != null) bathRoom = value;
            else bathRoom = 0;
        }
    }

    /// <summary>
    /// property to get or set the housrType
    /// </summar
    public String HouseType
    {
        get
        {
            return houseType;
        }
        set
        {
            if (value != null) houseType = value.Trim();

        }
    }
    /// <summary>
    /// property to get or set the houseStyle
    /// </summar

    public String HouseStyle
    {
        get
        {
            return houseStyle;
        }
        set
        {
            if (value != null) houseStyle = value.Trim();
        }
    }

    /// <summary>
    /// property to get or set the description
    /// </summar

    public String Description
    {
        get
        {
            return description;
        }
        set
        {
            if (value != null) description = value.Trim();
        }
    }

    /// <summary>
    /// property to get or set the Parking
    /// </summar

    public String Parking
    {
        get
        {
            return parking;
        }
        set
        {
            if (value != null) parking = value.Trim();
        }
    }

    /// <summary>
    /// property to get or set the garage
    /// </summar
    
    public String Garage
    {
        get
        {
            return garage;
        }
        set
        {
            if (value != null) garage = value.Trim();
        }
    }
    
    /// <summary>
    /// property to get or set the basement
    /// </summar
    public String Basement
    {
        get
        {
            return basement;
        }
        set
        {
            if (value != null) basement = value.Trim();
        }
    }

    /// <summary>
    /// property to get or set the refrigerator
    /// </summar

    public bool Refrigerator
    {
        get
        {
            return refrigerator;
        }
        set
        {
            if (value != null) refrigerator = value;
            else refrigerator = false;
        }
    }

    /// <summary>
    /// property to get or set the stove
    /// </summar
    public bool Stove
    {
        get
        {
            return stove;
        }
        set
        {
            if (value != null) stove = value;
            else stove = false;
        }
    }

    
    /// <summary>
    /// property to get or set the dishWasher
    /// </summar
    public bool DishWasher
    {
        get
        {
            return dishWasher;
        }
        set
        {
            if (value != null) dishWasher = value;
            else dishWasher = false;
        }
    }
    
    /// <summary>
    /// property to get or set the washerDryer
    /// </summar

    public bool WasherDryer
    {
        get
        {
            return washerDryer;
        }
        set
        {
            if (value != null) washerDryer = value;
            else washerDryer = false;
        }
    }

     
    /// <summary>
    /// property to get or set the waterSoftener
    /// </summar
    public bool Watersoftener
    {
        get
        {
            return waterSoftener;
        }
        set
        {
            if (value != null) waterSoftener = value;
            else waterSoftener = false;
        }
    }

    public bool WaterHeater
    {
        get
        {
            return waterHeater;
        }
        set
        {
            if (value != null) waterHeater = value;
            else waterHeater = false;
        }
    }

    public bool CentralAC
    {
        get
        {
            return centralAC;
        }
        set
        {
            if (value != null) centralAC = value;
            else centralAC = false;
        }
    }

    public bool CentralVaccum
    {
        get
        {
            return centralVaccum;
        }
        set
        {
            if (value != null) centralVaccum = value;
            else centralVaccum = false;
        }
    }

    public bool FirePlace
    {
        get
        {
            return firePlace;
        }
        set
        {
            if (value != null) firePlace = value;
            else firePlace = false;
        }
    }

    public bool HeatSystem
    {
        get
        {
            return heatSystem;
        }
        set
        {
            if (value != null) heatSystem = value;
            else heatSystem = false;
        }
    }

    public bool SwimmingPool
    {
        get
        {
            return swimmingPool;
        }
        set
        {
            if (value != null) swimmingPool = value;
            else swimmingPool = false;
        }
    }

    public bool Deck
    {
        get
        {
            return deck;
        }
        set
        {
            if (value != null) deck = value;
            else deck = false;
        }
    }

    public String LotSize
    {
        get
        {
            return lotSize;
        }
        set
        {
            if (value != null) lotSize = value;
            else lotSize = "";
        }
    }

    public String Area
    {
        get
        {
            return area;
        }
        set
        {
            if (value != null) area = value;
            else area = "";
        }
    }

    public String RoofCover
    {
        get
        {
            return roofCover;
        }
        set
        {
            if (value != null) roofCover = value;
            else roofCover = "";
        }
    }

    public String Exterior
    {
        get
        {
            return exterior;
        }
        set
        {
            if (value != null) exterior = value;
            else exterior = "";
        }
    }

    public String Ownership
    {
        get
        {
            return ownership;
        }
        set
        {
            if (value != null) ownership = value;
            else ownership = "";
        }
    }

    public String Status
    {
        get
        {
            return status;
        }
        set
        {
            if (value != null) status = value;
            else status = "";
        }
    }

    public Nullable<DateTime> DatePosted
    {
        get
        {
            return datePosted;
        }
        set
        {
            datePosted = value;
        }
    }

    public Int32 SellerID
    {
        get
        {
            return sellerID;
        }
        set
        {
            sellerID = value;
        }
    }

    public Int32 Yearbuilt
    {
        get
        {
            return yearBuilt;
        }
        set
        {
            yearBuilt = value;
        }
    }
    
    
	public BrowseHouse()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    // Get the first HouseID that will be used to populate the information about the first home on the Home page
    public static DataTable GetFirstHouseID()
    {
        SqlDataAdapter houseAdapter = new SqlDataAdapter("SELECT TOP (1) * FROM tbl_HouseInfo ORDER BY HouseID",
            ConfigurationManager.ConnectionStrings["ListingConnection"].ConnectionString);
        DataTable houseTable = new DataTable();

        try
        {
            houseAdapter.Fill(houseTable);
            return houseTable;
        }
        catch (Exception ex)
        {

            throw;
        }
    }

    // Get the seller name + phone number to display in the seller drop down while viewing or modifying existing property listing
    public static DataTable GetSellerNamePhone()
    {
        SqlDataAdapter houseAdapter = new SqlDataAdapter("SELECT Name + ' ' + '(' + Phone + ')' AS sellerInfo FROM tbl_SellerInfo WHERE sellerID = (select dbo.tbl_HouseInfo.SellerID FROM dbo.tbl_HouseInfo where dbo.tbl_HouseInfo.HouseID = '{0}')",
            ConfigurationManager.ConnectionStrings["ListingConnection"].ConnectionString);
        DataTable houseTable = new DataTable();

        try
        {
            houseAdapter.Fill(houseTable);
            return houseTable;
        }
        catch (Exception ex)
        {

            throw;
        }
    }

    //Get top record from tbl_HouseInfo
    public static DataTable GetHouseIDString()
    {
        
        SqlDataAdapter houseAdapter = new SqlDataAdapter("SELECT TOP (1) * FROM tbl_HouseInfo ORDER BY HouseID DESC ",
            ConfigurationManager.ConnectionStrings["ListingConnection"].ConnectionString);
        DataTable houseTable = new DataTable();

        try
        {
            houseAdapter.Fill(houseTable);
            return houseTable;
        }
        catch (Exception ex)
        {

            throw;
        }
    }

    //Get house record from tbl_HouseInfo based on specific key

    public static DataTable GetCompleteList(String houseIDString)
    {
        string sqlScript = String.Format("SELECT * FROM tbl_HouseInfo WHERE HouseID = '{0}'", houseIDString);
        DataTable completeTable = new DataTable();
        SqlDataAdapter houseAdapter = new SqlDataAdapter(sqlScript, sqlCon);
        try
        {
            houseAdapter.Fill(completeTable);
            return completeTable;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    //Get house record from tbl_HouseInfo based on city
     
    public static DataTable GetHouseList( String cityString)
    {
        string sqlScript = String.Format("SELECT * FROM tbl_HouseInfo WHERE city='{0}'", cityString);
        DataTable houseTable = new DataTable();
        SqlDataAdapter houseAdapter = new SqlDataAdapter(sqlScript, sqlCon);
        try
        {
            houseAdapter.Fill(houseTable);
            return houseTable;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    //Insert method to insert new house object into tbl_HouseInfo

    public static String Insert( BrowseHouse newHouse )
    {
        //Edit(newHouse);
        String newHouseID="H0";
        Int32 hId=0;
        String datePostedString;
        String seller = "NULL";

        DataTable nHouse = GetHouseIDString();

        if (nHouse.Rows.Count != 0)
            newHouseID = nHouse.Rows[0].Field<String>("HouseID").ToString();
        hId = Convert.ToInt32(newHouseID.Substring(1));
        hId++;
        newHouseID = "H" + hId.ToString();

        if(newHouse.DatePosted != null)
            datePostedString = "'" + Convert.ToDateTime(newHouse.DatePosted).ToString("MM/dd/yyyy") + "'";
        else
            datePostedString="NULL";
        if (newHouse.SellerID == 0)
            seller = "NULL";
        else
            seller = newHouse.SellerID.ToString();

        string sqlInsert = string.Format(
            "INSERT INTO tbl_HouseInfo(HouseID,BldNumber,StreetName,StreetDirection,UnitNumber,City,PostalCode, " +
            "Province,Tax,Price,Bedroom,Bathroom,HouseType,HouseStyle,Description," +
            "Parking,Garage,Basement,Refrigerator,Stove,DishWasher,WasherDryer," +
            "Watersoftener,WaterHeater,CentralAC,CentralVaccum,FirePlace,HeatSystem," +
            "SwimmingPool, Deck, LotSize, Area, RoofCover, Exterior, Ownership, Status, DatePosted, " +
            "SellerID, YearBuilt) " +
            "VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}','{15}', "+
                    "'{16}', '{17}', '{18}', '{19}', '{20}', '{21}', '{22}','{23}','{24}','{25}','{26}','{27}','{28}','{29}','{30}','{31}'," +
                    "'{32}', '{33}', '{34}', '{35}', {36}, {37}, '{38}')",
            newHouseID, newHouse.BldNumber, newHouse.StreetName, newHouse.StreetDirection, newHouse.UnitNumber, newHouse.City, 
            newHouse.PostalCode,newHouse.Province,newHouse.Tax, Convert.ToDecimal(newHouse.Price.ToString("#.##")), newHouse.BedRoom, newHouse.BathRoom, newHouse.houseType,
            newHouse.HouseStyle,newHouse.Description, newHouse.Parking, newHouse.Garage, newHouse.Basement, newHouse.Refrigerator,
            newHouse.Stove, newHouse.DishWasher, newHouse.washerDryer, newHouse.Watersoftener, newHouse.WaterHeater,
            newHouse.CentralAC, newHouse.centralVaccum, newHouse.FirePlace, newHouse.HeatSystem, newHouse.SwimmingPool,
            newHouse.Deck, newHouse.LotSize, newHouse.Area, newHouse.RoofCover, newHouse.Exterior, newHouse.Ownership,
            newHouse.Status, datePostedString, seller, newHouse.Yearbuilt);

        SqlCommand houseCommand = new SqlCommand(sqlInsert, sqlCon);

        try
        {
            sqlCon.Open();
            houseCommand.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            sqlCon.Close();
        }

        return newHouse.HouseID;
    }



    ///// <summary>
    /// update a house record using the given object
    /// </summary>
    /// <param name="newHouse"></param>
    public static void Update(BrowseHouse newHouse)
    {
             string sqlUpdate = string.Format(
            "UPDATE tbl_HouseInfo SET BldNumber='{0}',StreetName='{1}',StreetDirection='{2}',UnitNumber='{3}',City='{4}',PostalCode='{5}', " +
            "Province='{6}',Tax='{7}',Price='{8}',Bedroom='{9}',Bathroom='{10}',HouseType='{11}',HouseStyle='{12}',Description='{13}'," +
            "Parking='{14}',Garage='{15}',Basement='{16}',Refrigerator='{17}',Stove='{18}',DishWasher='{19}',WasherDryer='{20}'," +
            "Watersoftener='{21}',WaterHeater='{22}',CentralAC='{23}',CentralVaccum='{24}',FirePlace='{25}',HeatSystem='{26}'," +
            "SwimmingPool='{27}', Deck='{28}', LotSize='{29}', Area='{30}', RoofCover='{31}', Exterior='{32}', Ownership='{33}', Status='{34}', " +
            "SellerID='{35}', YearBuilt='{36}' WHERE HouseID='{37}'",
             newHouse.BldNumber, newHouse.StreetName, newHouse.StreetDirection, newHouse.UnitNumber, newHouse.City,
            newHouse.PostalCode, newHouse.Province, newHouse.Tax, Convert.ToDecimal(newHouse.Price.ToString("#.##")), newHouse.BedRoom, newHouse.BathRoom, newHouse.houseType,
            newHouse.HouseStyle, newHouse.Description, newHouse.Parking, newHouse.Garage, newHouse.Basement, newHouse.Refrigerator,
            newHouse.Stove, newHouse.DishWasher, newHouse.washerDryer, newHouse.Watersoftener, newHouse.WaterHeater,
            newHouse.CentralAC, newHouse.centralVaccum, newHouse.FirePlace, newHouse.HeatSystem, newHouse.SwimmingPool,
            newHouse.Deck, newHouse.LotSize, newHouse.Area, newHouse.RoofCover, newHouse.Exterior, newHouse.Ownership,
            newHouse.Status, newHouse.SellerID, newHouse.Yearbuilt, newHouse.HouseID);

        SqlCommand houseUpdateCommand = new SqlCommand(sqlUpdate, sqlCon);

        try
        {
            sqlCon.Open();
            houseUpdateCommand.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            sqlCon.Close();
        }

    }

    
    //Get Record from tbl_HouseInfo based on search criteria
    public static DataTable GetHouseList(String PropertyType, String sCity,
                                            Int32 Price1, Int32 Price2, Int32 Bed, Int32 Bath, int MaxPrice)
    {
        //Price1 
        int idx=0;
        String qryString = "SELECT * FROM tbl_HouseInfo WHERE ";
        
        if (sCity != "0")
        {
            qryString += "city = '{" + idx + "}' AND ";
            qryString = String.Format(qryString, sCity);
        }
        if (PropertyType != "0")
        {
            qryString += "HouseType = '{" + idx + "}' AND ";
            qryString = String.Format(qryString, PropertyType);
        }
        if (Bed != 0)
        {
            qryString += "BedRoom = '{" + idx + "}' AND ";
            qryString = String.Format(qryString, Bed);
        }
        if (Bath != 0)
        {
            qryString += "BathRoom = '{" + idx + "}' AND ";
            qryString = String.Format(qryString, Bath);
        }
        if(Price1 != 0 || Price2 != 0)
        {
            if (Price1 == MaxPrice)
            {
                qryString += "price >= " + Price1 + " AND ";
            }
            else if (Price1 < Price2)
            {
                qryString += "price >= " + Price1 + " AND price <= " + Price2 + " AND ";
            }
            else if (Price1 > Price2)
            {
                qryString += "price >= " + Price2 + " AND price <= " + Price1 + " AND ";
            }
        }
        qryString += "1=1;";

        DataTable houseTable = new DataTable();
        SqlDataAdapter houseAdapter = new SqlDataAdapter(qryString, sqlCon);
        try
        {
            houseAdapter.Fill(houseTable);
            return houseTable;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    public static void Delete(BrowseHouse newHouse)
    {

        string sqlDelete = string.Format(
            "DELETE FROM tbl_HouseInfo WHERE HouseID='{0}'", newHouse.houseID);

        SqlCommand houseCommand = new SqlCommand(sqlDelete, sqlCon);

        try
        {
            sqlCon.Open();
            houseCommand.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            sqlCon.Close();
        }

      }

    //Get all the records from the tbl_HouseInfo
    public static DataTable GetListings()
    {

        string sql = "SELECT * FROM tbl_HouseInfo ORDER BY HouseID DESC";
        SqlCommand houseCommand = new SqlCommand(sql, sqlCon);
       DataTable listingTable = new DataTable();
       SqlDataAdapter listingAdapter = new SqlDataAdapter(sql, sqlCon);
        try
        {
            listingAdapter.Fill(listingTable);
            return listingTable;
        }
        catch (Exception ex)
        {
            throw ex ;
        }
    }

    //Get distinct record from the tbl_HouseInfo
    public static DataTable GetHouseType()
    {
        string houseTypeString = String.Format("SELECT DISTINCT HouseType  FROM tbl_HouseInfo ORDER BY HouseType");
        DataTable houseTypeTable = new DataTable();
        SqlDataAdapter HouseTypeAdapter = new SqlDataAdapter(houseTypeString, sqlCon);
        try
        {
            HouseTypeAdapter.Fill(houseTypeTable);
            return houseTypeTable;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

   //Get specific houseType record from tbl_HouseInfo based on given houseId key
    public static DataTable GetSingleHouseType(string houseId)
    {
        string houseTypeString = String.Format("SELECT HouseType FROM tbl_HouseInfo WHERE HouseID='{0}'", houseId);
        DataTable houseTypeTable = new DataTable();
        SqlDataAdapter HouseTypeAdapter = new SqlDataAdapter(houseTypeString, sqlCon);
        try
        {
            HouseTypeAdapter.Fill(houseTypeTable);
            return houseTypeTable;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }


    ////Get specific houseStyle record from tbl_HouseInfo based on given houseId key
        public static DataTable GetSingleHouseStyle(string houseId)
         {
        string houseStyleString = String.Format("SELECT DISTINCT HouseStyle FROM tbl_HouseInfo WHERE HouseID='{0}'", houseId);
        DataTable houseStyleTable = new DataTable();
        SqlDataAdapter HouseStyleTypeAdapter = new SqlDataAdapter(houseStyleString, sqlCon);
        try
        {
            HouseStyleTypeAdapter.Fill(houseStyleTable);
            return houseStyleTable;
        }
        catch (Exception ex)
        {
            throw ex;
        }
       }
        // Get distinct houseStyle record from tbl_HouseInfo 
        public static DataTable GetHouseStyle()
        {
            string houseStyleString = String.Format("SELECT DISTINCT HouseStyle FROM tbl_HouseInfo");
            DataTable houseStyleTable = new DataTable();
            SqlDataAdapter HouseStyleTypeAdapter = new SqlDataAdapter(houseStyleString, sqlCon);
            try
            {
                HouseStyleTypeAdapter.Fill(houseStyleTable);
                return houseStyleTable;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //Get specific and distinct basement record from tbl_HouseInfo based on given houseId key

        public static DataTable GetBasement(String houseId)
        {
            string basementString = String.Format("SELECT DISTINCT Basement FROM tbl_HouseInfo WHERE HouseId='{0}'",houseId);
            DataTable basementTable = new DataTable();
            SqlDataAdapter basementAdapter = new SqlDataAdapter(basementString, sqlCon);
            try
            {
                basementAdapter.Fill(basementTable);
                return basementTable;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //Get all distinct basement record from tbl_HouseInfo 
        public static DataTable GetBasements()
        {
            string basementString = String.Format("SELECT DISTINCT Basement FROM tbl_HouseInfo");
            DataTable basementTable = new DataTable();
            SqlDataAdapter basementAdapter = new SqlDataAdapter(basementString, sqlCon);
            try
            {
                basementAdapter.Fill(basementTable);
                return basementTable;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    
}

