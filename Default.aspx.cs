/* ModifiyListing.aspx.cs
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
using System.Collections;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {        
        // Get brief description for the first house displayed on Home page.
        try
        {
            DataTable latestHouse = BrowseHouse.GetCompleteList("H1");
            if (latestHouse.Rows.Count > 0)
                lblH1.Text = latestHouse.Rows[0].Field<String>("Description");

            // Get brief description for the second house displayed on Home page.
            latestHouse = BrowseHouse.GetHouseIDString();
            if (latestHouse.Rows.Count > 0)
                lblH2.Text = latestHouse.Rows[0].Field<String>("Description");
        }
        catch (Exception ex)
        {
            //lblMessage.Text = ex.Message;
            lblMessage.Text = "Sorry, we are currently facing some technical problems. Please visit us again later";
        }    
    }
}