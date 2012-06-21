/* NewListing.aspx.cs
 * Description: NewListing.cs code behind the web page for inserting new listing in the database
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
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web.Services;


public partial class admin_newListing : System.Web.UI.Page
{
    //Class level variables
    String newHouseId="";
    Int32 imgRecord = 0;
    /// <summary>
    /// on each return clear the error messages
    /// on initial load:
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMessage.Text = "";
    }
    
    //Uploding images to a specific folder on the file system based on the HouseID returned from the database
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        HttpFileCollection hfc = Request.Files;
        DataTable nHouse = BrowseHouse.GetHouseIDString();
        String fldrName = nHouse.Rows[0].Field<String>("HouseID").ToString();
        string path = Server.MapPath(@"~/images/details/");
        String hsDirectoryName = path + fldrName;

        if (!Directory.Exists(hsDirectoryName))
            Directory.CreateDirectory(hsDirectoryName);
        for (int i = 0, j=1; i < hfc.Count; i++,j++)
        {
            HttpPostedFile hpf = hfc[i];
            if (hpf.ContentLength > 0)
            {
                hpf.SaveAs(Server.MapPath(@"~\images\details\") + fldrName + @"\" +
                  j.ToString() + ".jpg");
               
            }
        }
    }

    /// handle the exception encountered to the user 
    protected void House2ObjectDataSource_Selected(object sender, ObjectDataSourceStatusEventArgs e)
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

    /// <summary>
    /// bind the gridview with respect to items insert event
    /// handle the exception encountered to the user after an insert attempt
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void dvHouseList_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            e.ExceptionHandled = true;
            e.KeepInInsertMode = true;
            if (e.Exception.InnerException != null)
                lblMessage.Text = e.Exception.InnerException.Message.Replace(";;", "<br />");
            else
                lblMessage.Text = e.Exception.Message.Replace(";;", "<br />"); ;
        }
    }
}