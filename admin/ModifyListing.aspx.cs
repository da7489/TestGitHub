/* ModifyListing.aspx.cs
 * Description: ModifiyListing.cs code behind ModifiyListing.aspx
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

public partial class admin_ModifiyListing : System.Web.UI.Page
{
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
    

    //Select the first row in gridview,if there are any rows in gridview
    //Otherwise donot select any row
    protected void listingGridView_DataBound(object sender, EventArgs e)
    {
        if (listingGridView.Rows.Count > 0)
        {
            listingGridView.SelectedIndex = 0;
        }
        else
        {
            listingGridView.SelectedIndex = -1;
        }
        listingDetailsView.DataBind();
    }
   
    // display any exceptions encountered to the user
    protected void modifiyListingObjectDataSource_Selected(object sender, ObjectDataSourceStatusEventArgs e)
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

    // <summary>
    /// bind the Detailview with respect to items update event
    /// Handle the exception encountered to the user
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void  listingDetailsView_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            //do not lose user input
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;
            if (e.Exception.InnerException != null)
                lblMessage.Text = e.Exception.InnerException.Message.Replace(";;", "<br />");
            else
                lblMessage.Text = e.Exception.Message.Replace(";;", "<br />");
        }
        listingDetailsView.DataBind();
    }

    protected void listingGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        listingDetailsView.PageIndex = listingGridView.SelectedIndex;
    }
}
