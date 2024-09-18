<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin_login.aspx.cs" Inherits="Hospital_Management_System.Admin_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="card-title text-center text-primary">Welcome</h1>
    <div class="container mt-5">
        <div class="card">
            <div class="card-body">
                <h2 class="card-title text-center">Admin Login</h2>
                
                    <div class="mb-3">
                        <label for="adminId" class="form-label">Admin ID</label>
                        <asp:TextBox ID="txtAdminId" runat="server" placeholder="Enter Admin ID" CssClass="form-control" required="required"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="hospitalCode" class="form-label">Hospital Code</label>
                        <asp:TextBox ID="txtHospitalCode" runat="server" placeholder="Enter Hospital Code" CssClass="form-control" required="required"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter Password" CssClass="form-control" TextMode="Password" required="required"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary" Text="Login" /> <%-- OnClick="btnLogin_Click" />--%>
                
            </div>
        </div>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.bundle.min.js"></script>

</asp:Content>
