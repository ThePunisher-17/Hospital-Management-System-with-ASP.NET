<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Patient_signup.aspx.cs" Inherits="Hospital_Management_System.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<title>Patient Signup</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css" />
     <h1 class="card-title text-center text-primary">Welcome</h1>
        <div class="container mt-5">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title text-center">Patient Signup</h2>
                    <div class="mb-3">
                        <label for="fullName" class="form-label">Full Name</label>
                        <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Enter your full name" required="required"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your email" required="required" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Choose a password" required="required" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="confirmPassword" class="form-label">Confirm Password</label>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" placeholder="Confirm your password" required="required" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="age" class="form-label">Age</label>
                        <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" placeholder="Enter your age" required="required" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="gender" class="form-label">Gender</label>
                        <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-select" required="required">
                            <asp:ListItem Text="Select your gender" Value="" Selected="True" Enabled="False"></asp:ListItem>
                            <asp:ListItem Text="Male" Value="male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="female"></asp:ListItem>
                            <asp:ListItem Text="Other" Value="other"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="mb-3">
                        <label for="mobileNo" class="form-label">Mobile Number</label>
                        <asp:TextBox ID="txtMobileNo" runat="server" CssClass="form-control" placeholder="Enter your mobile number" required="required" TextMode="Phone"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Pre-existing Diseases</label>
                        <div class="form-check">
                            <asp:CheckBox ID="chkDiabetes" runat="server" CssClass="form-check-input" />
                            <label class="form-check-label" for="chkDiabetes">Diabetes</label>
                        </div>
                        <div class="form-check">
                            <asp:CheckBox ID="chkHypertension" runat="server" CssClass="form-check-input" />
                            <label class="form-check-label" for="chkHypertension">Hypertension</label>
                        </div>
                        <!-- Add more checkboxes for other diseases as needed -->
                    </div>
                    <div class="form-check mb-3">
                        <asp:CheckBox ID="chkTerms" runat="server" CssClass="form-check-input" required="required" />
                        <label class="form-check-label" for="chkTerms">I agree to the <a href="#">Terms of Service</a></label>
                    </div>
                    <asp:Button ID="btnRegister" runat="server" CssClass="btn btn-primary" Text="Register" OnClick="btnRegister_Click" />
                </div>
            </div>
        </div>





</asp:Content>
