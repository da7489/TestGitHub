/* BrowseListing.aspx.cs
 * Description: BrowseListing.cs code behind BrowseListing.aspx
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

public partial class BrowseListing : System.Web.UI.Page
{
    //Create cookies and setting their initial value
    //Add cookies to dropdown filter   
    // on each return clear the error messages
    // on initial load:
    
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMessage.Text = "";
        if (!IsPostBack)
        {
            HttpCookie filter1 = new HttpCookie("houseType", "0");
            Response.Cookies.Add(filter1);
            HttpCookie filter2 = new HttpCookie("city", "0");
            Response.Cookies.Add(filter2);
            HttpCookie filter3 = new HttpCookie("price1", "0");
            Response.Cookies.Add(filter3);
            HttpCookie filter4 = new HttpCookie("price2", "0");
            Response.Cookies.Add(filter4);
            HttpCookie filter5 = new HttpCookie("bed", "0");
            Response.Cookies.Add(filter5);
            HttpCookie filter6 = new HttpCookie("bath", "0");
            Response.Cookies.Add(filter6);
        }
        if (ddlPrice1.SelectedIndex == ddlPrice1.Items.Count - 1)
            ddlPrice2.Enabled = false;
        else
            ddlPrice2.Enabled = true;
                if(lblMessage.Text!="")
            lblMessage.Text = "";
    }

    //Enables dropdown
    protected void ddlPrice1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlPrice1.SelectedIndex == ddlPrice1.Items.Count - 1)
            ddlPrice2.Enabled = false;
    }
    protected void searchButton_Click(object sender, EventArgs e)
    {

    }

    //Create cookie called houseType based on the house type selection
    //-exists for duration of browser session
    //-unless we give it an expiry date
    protected void ddlPropertyType_SelectedIndexChanged(object sender, EventArgs e)
    {
        HttpCookie filter1 = new HttpCookie("houseType", ddlPropertyType.SelectedValue);
        filter1.Expires = DateTime.Now.AddDays(2);
        Response.Cookies.Add(filter1);
    }

    //Create cookie called city based on the city selection
    //-exists for duration of browser session
    //-unless we give it an expiry date
    
    protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        HttpCookie filter2 = new HttpCookie("city", ddlCity.SelectedValue);
        filter2.Expires = DateTime.Now.AddDays(2);
        Response.Cookies.Add(filter2);
    }

    //Create cookie called price1 based on the price selection
    //-exists for duration of browser session
    //-unless we give it an expiry date
    
    protected void ddlPrice1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        HttpCookie filter3 = new HttpCookie("price1", ddlPrice1.SelectedValue);
        filter3.Expires = DateTime.Now.AddDays(2);
        Response.Cookies.Add(filter3);
    }

    //Create cookie called price based on the price selection
    //-exists for duration of browser session
    //-unless we give it an expiry date
    
    protected void ddlPrice2_SelectedIndexChanged(object sender, EventArgs e)
    {
        HttpCookie filter4 = new HttpCookie("price2", ddlPrice1.SelectedValue);
        filter4.Expires = DateTime.Now.AddDays(2);
        Response.Cookies.Add(filter4);
    }
    //Create cookie called bed based on the bed selection
    //-exists for duration of browser session
    //-unless we give it an expiry date
    
    protected void ddlBed1_SelectedIndexChanged(object sender, EventArgs e)
    {
        HttpCookie filter5 = new HttpCookie("bed", ddlBed1.SelectedValue);
        filter5.Expires = DateTime.Now.AddDays(2);
        Response.Cookies.Add(filter5);
    }

    //Create cookie called bath based on the bath selection
    //-exists for duration of browser session
    //-unless we give it an expiry date
    
    protected void ddlBath_SelectedIndexChanged(object sender, EventArgs e)
    {
        HttpCookie filter6 = new HttpCookie("bath", ddlBath.SelectedValue);
        filter6.Expires = DateTime.Now.AddDays(2);
        Response.Cookies.Add(filter6);
    }

    /// handle the exception encountered to the user
    protected void houseListObjectDataSource_Selected(object sender, ObjectDataSourceStatusEventArgs e)
    {
        if (e.Exception != null)
        {
            e.ExceptionHandled = true;
            if (e.Exception.InnerException != null)
                lblMessage.Text = e.Exception.InnerException.Message;
            else
                lblMessage.Text = e.Exception.Message;
        }
    }
    //If search criteria does not meet display message no records are found
    protected void filterViewGV_DataBound(object sender, EventArgs e)
    {
        if (filterViewGV.Rows.Count == 0)
            lblMessage.Text = "Sorry! No records exists";
    }
}