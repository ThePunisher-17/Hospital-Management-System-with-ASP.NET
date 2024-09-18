<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Doctor_login.aspx.cs" Inherits="Hospital_Management_System.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Doctor Login</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css" />

     <h1 class="card-title text-center text-primary">Welcome</h1>
        <div class="container mt-5">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title text-center">Doctor Login</h2>
                    <div class="mb-3">
                        <label for="doctorId" class="form-label">Doctor ID</label>
                        <asp:TextBox ID="txtDoctorId" runat="server" CssClass="form-control" placeholder="Enter your doctor ID" required="required"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter your password" required="required" TextMode="Password"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary" Text="Login" OnClick="btnLogin_Click" />
                </div>
            </div>
        </div>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.bundle.min.js"></script>


</asp:Content>
