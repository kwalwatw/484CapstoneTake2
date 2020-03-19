<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
<link href="Content/custom.css" rel="stylesheet" type="text/css" media="screen">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
    <div class="col-md-12">
<img src="Content/logo.png" alt="Logo" class="logo center-block">
    </div> <!-- end col div-->
</div> <!-- end logo div -->
<div class="row">
<div class="col-md-12 ">
  <div class="input-heading form-group center-block">
    <asp:Label ID="fname" runat="server" Text="First Name"></asp:Label>
    <asp:TextBox ID="fnameBox" runat="server" CssClass="form-control" placeholder="Enter First Name"></asp:TextBox>
  </div>
     
  <div class="input-heading form-group center-block">
    <asp:Label ID="lname" runat="server" Text="Last Name"></asp:Label>
    <asp:TextBox ID="lnameBox" runat="server" CssClass="form-control" placeholder="Enter Last Name"></asp:TextBox>
  </div>
     
  <div class="input-heading form-group center-block">
 <asp:Label ID="truckcompany" runat="server" Text="Trucking Company"></asp:Label>
 <asp:TextBox ID="truckcompanyBox" runat="server" CssClass="form-control" placeholder="Company"></asp:TextBox>
  </div>
     
  <div class="input-heading form-group center-block">
    <asp:Label ID="email" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="emailBox" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
  </div>
     
  <div class="input-heading form-group center-block">
    <asp:Label ID="cbHandle" runat="server" Text="CB Handle"></asp:Label>
    <asp:TextBox ID="cbHandleBox" runat="server" CssClass="form-control" placeholder="CB Handle"></asp:TextBox>
  </div>
     
  <div class="input-heading form-group center-block">
    <asp:Label ID="password" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="passwordBox" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
      
      <button type="submit" style="margin-top:10px;" class="input-heading btn"><a href="whereto-trucker.html">Sign-Up</a></button>
  </div>    
</div> <!-- end column -->   
</div> <!-- end row -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<!-- end of do not delete -->
</asp:Content>
