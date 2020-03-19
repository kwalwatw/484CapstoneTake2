using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;

public class Driver
{
    SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private String CBHandle;
    private String username;
    private String truckingCompany;
    private String password;
    private DateTime lastUpdatedTime;
    private String lastUpdatedBy;

    public Driver(String firstName, String lastName, String email, String phone, String CBHandle, String truckingCompany, String password, DateTime lastupdated, String lastUpdatedBy)
    {
        setfirstName(firstName);
        setLastName(lastName);
        setEmail(email);
        setPhone(phone);
        setCBHandle(CBHandle);
        setUserName(CBHandle);
        setTruckingCompany(truckingCompany);
        setPassword(password);
        setlastUpdated(lastupdated);
        setlastUpdatedBy(lastUpdatedBy);
    }

    protected void setlastUpdated(DateTime lastUpdated)
    {
        this.lastUpdatedTime = lastUpdated;
    }

    protected void setlastUpdatedBy(String lastUpdatedBy)
    {
        this.lastUpdatedBy = lastUpdatedBy;
    }

    protected void setfirstName(String first)
    {
        this.firstName = first;
    }

    protected void setLastName(String last)
    {
        this.lastName = last;
    }

    protected void setEmail(String email)
    {
        this.email = email;
    }

    protected void setPhone(String phone)
    {
        this.phone = phone;
    }

    protected void setCBHandle(String CB)
    {
        this.CBHandle = CB;
    }

    protected void setUserName(String CB)
    {
        int inc = 0;
            SqlCommand select = new SqlCommand();
            select.CommandText = "select driverUsername from [user]";
            select.Connection = sc;
        sc.Open();
            SqlDataReader read = select.ExecuteReader();
        while (read.Read())
        {
           if(read.GetString(0).Equals(CB))
           {
                CB = CB + inc;

           }
           if(read.GetString(0).Equals(CB))
            {
                inc++;
                CB = CB + inc;
            }
        }
        sc.Close();

        this.username = CB;
        //check all other usernames. If CB handle is available as username, then set to that. If not, increment to CBHandle#. (CODE COMING SOON)
    }

    protected void doubleCheck(String CB)
    {

    }

    protected void setTruckingCompany(String truck)
    {
        this.truckingCompany = truck;
    }

    protected void setPassword(String password)
    {
        this.password = password;
    }

    public String getFirstName()
    {
        return this.firstName;
    }

    public String getLastName()
    {
        return this.lastName;
    }

    public String getEmail()
    {
        return this.email;
    }

    public String getPhone()
    {
        return this.phone;
    }

    public String getCBHandle()
    {
        return this.CBHandle;
    }

    public String getUserName()
    {
        return this.username;
    }

    public String getPassword()
    {
        return this.password;
    }

    public String getTruckingCompany()
    {
        return this.truckingCompany;
    }

    public DateTime getLastUpdated()
    {
        return this.lastUpdatedTime;
    }

    public String getLastUpdatedBy()
    {
        return this.lastUpdatedBy;
    }
    

}