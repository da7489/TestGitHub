/* SellerMaintenance.aspx.cs
 * Description: SellerMaintenance.cs code behind SellerMaintenance.aspx
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
//admin_SellerMaintenance

public partial class admin_SellerMaintenance : System.Web.UI.Page
{
    String sellerId = "";
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

    // when the grid is reloaded with new data
    // - select the first row, if there are any records
    protected void sellerGridView_DataBound(object sender, EventArgs e)
    {
        if (sellerGridView.Rows.Count > 0)
        {
            sellerGridView.SelectedIndex = 0;
        }
        else
        {
            sellerGridView.SelectedIndex = -1;
        }
        sellerDetailsView.DataBind();
       
    }

    /// <summary>
    /// bind the Detailview with respect to items insert event
    /// handle the exception encountered to the user after an insert attempt
    /// //do not loose the user input keep in insert mode
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void sellerDetailsView_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            //do not lose user information
            e.ExceptionHandled = true;
            e.KeepInInsertMode = true;
            //is there any specific exception, else give the generic exception
            if (e.Exception.InnerException != null) //database exception, more deep exception
                lblMessage.Text = e.Exception.InnerException.Message.Replace(";;", "<br />");
            else
                lblMessage.Text = e.Exception.Message.Replace(";;", "<br />");
        }
        sellerDetailsView.DataBind();

    }

    // <summary>
    /// bind the Detailview with respect to items update event
    /// Handle the exception encountered to the user
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void sellerDetailsView_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
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
        sellerGridView.DataBind();
    }

    // display any exceptions encountered to the user
    protected void sellerObjectDataSource_Selected(object sender, ObjectDataSourceStatusEventArgs e)
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
    protected void sellerGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        sellerDetailsView.PageIndex = sellerGridView.SelectedIndex;
    }
}