using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Driver
{
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private String CBHandle;
    private String username;
    private String truckingCompany;
    private String password;

    public Driver(String firstName, String lastName, String email, String phone, String CBHandle, String truckingCompany, String password)
    {
        setfirstName(firstName);
        setLastName(lastName);
        setEmail(email);
        setPhone(phone);
        setCBHandle(CBHandle);
        setUserName(CBHandle);
        setTruckingCompany(truckingCompany);
        setPassword(password);
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
        //check all other usernames. If CB handle is available as username, then set to that. If not, increment to CBHandle#. (CODE COMING SOON)
    }

    protected void setTruckingCompany(String truck)
    {
        this.truckingCompany = truck;
    }

    protected void setPassword(String password)
    {
        this.password = password;
    }

    protected String getFirstName()
    {
        return this.firstName;
    }

    protected String getLastName()
    {
        return this.lastName;
    }

    protected String getEmail()
    {
        return this.email;
    }

    protected String getPhone()
    {
        return this.phone;
    }

    protected String getCBHandle()
    {
        return this.CBHandle;
    }

    protected String getUserName()
    {
        return this.username;
    }

    protected String getPassword()
    {
        return this.password;
    }

    protected String getTruckingCompany()
    {
        return this.truckingCompany;
    }

}