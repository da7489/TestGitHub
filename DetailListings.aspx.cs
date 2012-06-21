/* DetailListing.aspx.cs
 * Description: Real Estata Website
 * 
 * Revistion History
 *       Hemlata Gupta,Cory Dafoe, Sachin Kumar Dhiman,Sandeep Singh Bondhi: 2012.03.26: Created
 *       Hemlata Gupta,Cory Dafoe, Sachin Kumar Dhiman,Sandeep Singh Bondhi: 2012.03.26: Version 1.0 Completed
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;

public partial class DetailListings : System.Web.UI.Page
{
    DataTable houseViewDataTabe;
    
    // Load the drop down list with the address information and update the details view accordinlgy
    protected void Page_Load(object sender, EventArgs e)
    {
        lblTemp.Text = "";
        int currRow=0;
        if (!IsPostBack)
        {
            addressDropDownList.Items.Clear();
            String houseType;
            if (Request.Cookies["houseType"] != null)
                houseType = Request.Cookies["houseType"].Value;
            else
                houseType = "0";

            String city;
            if (Request.Cookies["city"] != null)
                city = Request.Cookies["city"].Value;
            else
                city = "0";

            Int32 price1;

            if (Request.Cookies["price1"] != null)
                price1 = Convert.ToInt32(Request.Cookies["price1"].Value);
            else
                price1 = 0;

            Int32 price2;
            if (Request.Cookies["price2"] != null)
                price2 = Convert.ToInt32(Request.Cookies["price2"].Value);
            else
                price2 = 0;

            Int32 bed;
            if (Request.Cookies["bed"] != null)
                bed = Convert.ToInt32(Request.Cookies["bed"].Value);
            else
                bed = 0;

            Int32 bath;
            if (Request.Cookies["bath"] != null)
                bath = Convert.ToInt32(Request.Cookies["bath"].Value);
            else
                bath = 0;

            DataTable houseTable = BrowseHouse.GetHouseList(houseType, city, price1, price2, bed, bath, 750000);
            String addressString = "";
            int numRecords = houseTable.Rows.Count;
            if (addressDropDownList.Items.Count != houseTable.Rows.Count)
            {
                for (int i = 0; i < houseTable.Rows.Count; i++)
                {
                    addressString = "";
                    if (houseTable.Rows[i].Field<String>("BldNumber") != null)
                        addressString += houseTable.Rows[i].Field<String>("BldNumber").ToString() + " ";
                    else
                        addressString += "";

                    if (houseTable.Rows[i].Field<String>("StreetName") != null)
                        addressString += houseTable.Rows[i].Field<String>("StreetName").ToString() + " ";
                    else
                        addressString += "";

                    if (houseTable.Rows[i].Field<String>("StreetDirection") != null)
                        addressString += houseTable.Rows[i].Field<String>("StreetDirection").ToString();
                    else
                        addressString += "";

                    addressString = addressString.Trim();
                    addressDropDownList.DataTextField = addressString;
                    addressDropDownList.DataValueField = houseTable.Rows[i].Field<String>("HouseID").ToString();
                    addressDropDownList.Items.Add(addressString);
                    addressDropDownList.Items[i].Value = houseTable.Rows[i].Field<String>("HouseID").ToString();
                }
            }
            if (Request.QueryString.HasKeys() == true)
            {
                String nHouseID = Request.QueryString.GetValues(0).First();
                for (int i = 0; i < houseTable.Rows.Count; i++)
                {
                    if (nHouseID.CompareTo(houseTable.Rows[i].Field<String>("HouseID")) == 0)
                    {
                        addressDropDownList.SelectedIndex = i;
                        currRow = i;
                        addressDropDownList_SelectedIndexChanged(sender, e);
                        break;
                    }
                }
            }

            lblFeature.Text = houseTable.Rows[currRow].Field<String>("Description");
        }
    }

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
   /* public static AjaxControlToolkit.Slide[] GetSlides(string contextKey)
    {
        return default(AjaxControlToolkit.Slide[]);
    }*/
   
    protected void goBackButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("BrowseListing.aspx");
    }
    protected void addressDropDownList_Load(object sender, EventArgs e)
    {
        //
    }

    // Display the address string created using the cookies and display the house information in grid view accordingly.s
    protected void addressDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        String houseType;
        if (Request.Cookies["houseType"] != null)
            houseType = Request.Cookies["houseType"].Value;
        else
            houseType = "0";

        String city;
        if (Request.Cookies["city"] != null)
            city = Request.Cookies["city"].Value;
        else
            city = "0";

        Int32 price1;

        if (Request.Cookies["price1"] != null)
            price1 = Convert.ToInt32(Request.Cookies["price1"].Value);
        else
            price1 = 0;

        Int32 price2;
        if (Request.Cookies["price2"] != null)
            price2 = Convert.ToInt32(Request.Cookies["price2"].Value);
        else
            price2 = 0;

        Int32 bed;
        if (Request.Cookies["bed"] != null)
            bed = Convert.ToInt32(Request.Cookies["bed"].Value);
        else
            bed = 0;

        Int32 bath;
        if (Request.Cookies["bath"] != null)
            bath = Convert.ToInt32(Request.Cookies["bath"].Value);
        else
            bath = 0;

        houseViewDataTabe =
            BrowseHouse.GetHouseList(houseType, city, price1, price2, bed, bath, 750000);
        String getHouseIDs =
            houseViewDataTabe.Rows[addressDropDownList.SelectedIndex].Field<String>("HouseID").ToString();

    }
    protected void DetailsView3_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}