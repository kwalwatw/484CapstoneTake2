using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class index : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Hello
    }


    //Sign up button click
    protected void SignUpClick(object sender, EventArgs e)
    {
        String first = fnameBox.Text;
        String last = lnameBox.Text;
        String truckComp = truckcompanyBox.Text;
        String email = emailBox.Text;
        String handle = cbHandleBox.Text;
        String phone = phoneBox.Text;
        String pass = passwordBox.Text;
        String passconfirm = passwordBox2.Text;
        DateTime lastUpdated = DateTime.Now;
        String lastUpdatedBy = first + " " + last;

        Boolean checkpass = true;
        if (!pass.Equals(passconfirm))
        {
            checkpass = false;
            ErrorMessage.Visible = true;
        }

        if (checkpass && checkFields())
        {
            ErrorMessage.Visible = false;
            Driver driv = new Driver(first, last, email, phone, handle, truckComp, pass, lastUpdated, lastUpdatedBy);

            SqlCommand insert = new SqlCommand();
            insert.CommandText = "insert into [User] (firstName, lastName, emailAddress, phoneNumber, validatedStatus, lastUpdated, lastUpdatedBy, userType, adminUsername, CB_Handle, driverUsername, truckingCompany) values"
                + "(@firstName, @lastName, @emailAddress, @phoneNumber, 'N', @lastUpdated, @lastUpdatedBy, 'D', NULL, @CB_Handle, @driverUsername, @truckingCompany)";
            insert.Parameters.AddWithValue("@firstName", driv.getFirstName());
            insert.Parameters.AddWithValue("@lastName", driv.getLastName());
            insert.Parameters.AddWithValue("@emailAddress", driv.getEmail());
            insert.Parameters.AddWithValue("@phoneNumber", driv.getPhone());
            insert.Parameters.AddWithValue("@lastUpdated", driv.getLastUpdated());
            insert.Parameters.AddWithValue("@lastUpdatedBy", driv.getLastUpdatedBy());
            insert.Parameters.AddWithValue("@CB_Handle", driv.getCBHandle());
            insert.Parameters.AddWithValue("@driverUsername", driv.getUserName());
            insert.Parameters.AddWithValue("@truckingCompany", driv.getTruckingCompany());
            insert.Connection = sc;
            sc.Open();
            insert.ExecuteNonQuery();
            sc.Close();
        }

        }

        //Back end checking that the fields are filled so objects are not created
        protected Boolean checkFields()
        {
            Boolean returnFields = true;
            if (fnameBox.Text.Length < 1 || lnameBox.Text.Length < 1 || truckcompanyBox.Text.Length < 1 || emailBox.Text.Length < 1 || cbHandleBox.Text.Length < 1 || phoneBox.Text.Length < 1 || passwordBox.Text.Length < 1 || passwordBox2.Text.Length < 1)
            {
                returnFields = false;
            }

            return returnFields;
        }
    } 