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
    &nbsp;&nbsp;&nbsp;
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fnameBox" CssClass="validation" ErrorMessage="Please enter a First Name." ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="fnameBox" runat="server" CssClass="form-control" placeholder="Enter First Name" MaxLength="30"></asp:TextBox>
  </div>
     
  <div class="input-heading form-group center-block">
    <asp:Label ID="lname" runat="server" Text="Last Name"></asp:Label>
    &nbsp;&nbsp;&nbsp;
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="validation" ControlToValidate="lnameBox" ErrorMessage="Please enter a Last Name." ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="lnameBox" runat="server" CssClass="form-control" placeholder="Enter Last Name" MaxLength="30"></asp:TextBox>
  </div>
     
  <div class="input-heading form-group center-block">
 <asp:Label ID="truckcompany" runat="server" Text="Trucking Company"></asp:Label>
 &nbsp;&nbsp;&nbsp;
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="truckcompanyBox" CssClass="validation" ErrorMessage="Please enter a Trucking Company." ForeColor="Red"></asp:RequiredFieldValidator>
 <asp:TextBox ID="truckcompanyBox" runat="server" CssClass="form-control" placeholder="Company" MaxLength="30"></asp:TextBox>
  </div>
     
  <div class="input-heading form-group center-block">
    <asp:Label ID="email" runat="server" Text="Email"></asp:Label>
    &nbsp;&nbsp;&nbsp;
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emailBox" CssClass="validation" ErrorMessage="Please enter an email." ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="emailBox" runat="server" CssClass="form-control" placeholder="Email" MaxLength="30"></asp:TextBox>
  </div>
     
  <div class="input-heading form-group center-block">
    <asp:Label ID="cbHandle" runat="server" Text="CB Handle"></asp:Label>
    &nbsp;&nbsp;&nbsp;
      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cbHandleBox" CssClass="validation" ErrorMessage="Please enter a CB Handle." ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="cbHandleBox" runat="server" CssClass="form-control" placeholder="CB Handle" MaxLength="30"></asp:TextBox>
  </div>

  <div class="input-heading form-group center-block">
    <asp:Label ID="phone" runat="server" Text="Phone Number"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="phoneBox" runat="server" CssClass="form-control" placeholder="Phone Number" MaxLength="14"></asp:TextBox>
  </div>
     
  <div class="input-heading form-group center-block">
    <asp:Label ID="password" runat="server" Text="Password"></asp:Label>
    &nbsp;&nbsp;&nbsp;
      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="passwordBox" CssClass="validation" ErrorMessage="Please enter a password." ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="passwordBox" runat="server" CssClass="form-control" placeholder="CB Handle" MaxLength="30"></asp:TextBox>
  </div>

  <div class="input-heading form-group center-block">
    <asp:Label ID="password2" runat="server" Text="Confirm Password"></asp:Label>
    &nbsp;&nbsp;&nbsp;
      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="passwordBox2" CssClass="validation" ErrorMessage="Please confirm the previous password." ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="passwordBox2" runat="server" CssClass="form-control" placeholder="Confirm Password" MaxLength="30"></asp:TextBox>
      
      <asp:Button ID="SignUpButton" runat="server" Text="Sign-Up" CssClass="input-heading btn" style="margin-top:10px;" OnClick="SignUpClick" /> 
  </div>    
</div> <!-- end column -->   
</div> <!-- end row -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- end of do not delete -->
</asp:Content>
