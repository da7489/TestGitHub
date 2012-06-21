using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Windows.Forms;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
            lblMessage.Text = "";
    }

    protected void submitButton_Click(object sender, EventArgs e)
    {
        MailAddress customer = new MailAddress(emailTextBox.Text,
            firstNameTextBox.Text + " " + lastNameTextBox.Text, System.Text.Encoding.UTF8);
        MailAddress weAsUs = new MailAddress("realtorestate.cc@gmail.com", "Hema Gupta");
        MailMessage newMsg = new MailMessage(customer, weAsUs);
        newMsg.Subject = subjectTextBox.Text;
        newMsg.Body = messageTextBox.Text;
        //MailAddress carbonCopy = new MailAddress("hgupta-cc@conestogac.on.ca");
        //newMsg.CC.Add(carbonCopy);
        
        //SmtpClient clntReady = new SmtpClient("smtp.gmail.com");
        var clntReady = new SmtpClient("smtp.gmail.com", 587)
        {
            Credentials = new System.Net.NetworkCredential("realtorestate.cc@gmail.com", "dia1ar0ra"),
            EnableSsl = true
        }; 

        try
        {
            newMsg.From = customer;
            clntReady.Send(newMsg);
            //clntReady.Send(customer.Address, weAsUs.Address, subjectTextBox.Text, messageTextBox.Text);
            firstNameTextBox.Text = "";
            lastNameTextBox.Text = "";
            emailTextBox.Text = "";
            phoneTextBox.Text = "";
            subjectTextBox.Text = "";
            messageTextBox.Text = "";
            lblMessage.Text = "Thank you! We have received your message.";
            //if(MessageBox.Show("Thank you! We have received your message.", "Message Received", MessageBoxButtons.OK)
            //            == DialogResult.OK)
                //Response.Redirect("~/Default.aspx");
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message.ToString();
        }
    }

    protected void clearButton_Click(object sender, EventArgs e)
    {
        messageTextBox.Text = "";
        phoneTextBox.Text = "";
        firstNameTextBox.Text = "";
        lastNameTextBox.Text = "";
        emailTextBox.Text = "";
        subjectTextBox.Text = "";
        lblMessage.Text = "";
    }
}