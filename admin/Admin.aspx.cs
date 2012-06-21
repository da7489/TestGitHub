using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
               
    }
    //Redirects to NewListing Page
    protected void newListing_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/NewListing.aspx");
    }
    //Redirects to ModifiyListing Page
    protected void editListing_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/ModifyListing.aspx");
    }
    //Redirects to Seller maintenance Page
    protected void newButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/SellerMaintenance.aspx");
    }

    //Redirects to  Seller maintenance Page
    protected void  modifyButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/SellerMaintenance.aspx");
    }
}
