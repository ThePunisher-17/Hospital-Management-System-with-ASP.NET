<%@ Page Title="Forgot Password" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Hospital_Management_System.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css" />
    <title>Forgot Password</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <h2 class="text-center">Reset Your Password</h2>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Please Enter Your Details</h5>
                    <div class="mb-3">
                        <label for="txtName" class="form-label">Registered Name</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="txtEmail" class="form-label">Email</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="txtAge" class="form-label">Age</label>
                        <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" required="required" />
                    </div>
                    <asp:Button ID="btnResetPassword" runat="server" CssClass="btn btn-primary" Text="Reset Password" OnClick="btnResetPassword_Click" />
               
            </div>
        </div>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.bundle.min.js"></script>
</asp:Content>
