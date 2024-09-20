<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Patient_Login.aspx.cs" Inherits="Hospital_Management_System.Patient_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css" />
    <title>Patient Login</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="card-title text-center text-primary">Welcome</h1>
    <div class="container mt-5">
        <div class="card">
            <div class="card-body">
                <h2 class="card-title text-center">Patient Login</h2>

                
                    <div class="mb-3">
                        <label for="MobileNo" class="form-label">Mobile No</label>
                        <asp:TextBox ID="MobileNo" runat="server" placeholder="Enter Mobile No" CssClass="form-control" required="required"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter password" CssClass="form-control" TextMode="Password" required="required"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary" Text="Login" OnClick="btnLogin_Click" />
                    <div class="mt-3">
                        <asp:LinkButton ID="toSignup" runat="server" PostBackUrl="~/Patient_signup.aspx">Create Account</asp:LinkButton>
                        <span class="mx-2">|</span>
                        <asp:LinkButton ID="btnDoctorLogin" runat="server" OnClick="btnDoctorLogin_Click" > Are you a Doctor </asp:LinkButton>
                        <span class="mx-2">|</span>
                        <asp:LinkButton ID="toForgotPassword" runat="server" OnClick="toForgotPassword_clicked">Forgot Password?</asp:LinkButton>
                    </div>
                    <div class="mt-3">
                    </div>
                
            </div>
        </div>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.bundle.min.js"></script>
</asp:Content>
