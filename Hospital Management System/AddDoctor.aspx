<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddDoctor.aspx.cs" Inherits="Hospital_Management_System.AddDoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <div class="card">
            <div class="card-body">
                <h2 class="card-title text-center">Add Doctor</h2>
             
                    <div class="mb-3">
                        <label for="doctorId" class="form-label">Name of Doctor </label>
                        <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="specialization" class="form-label">Specialization</label>
                        <asp:TextBox ID="txtSpecialization" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                    </div>
                    

                <div class="mb-3">
                        <label for="mobile" class="form-label">Enter Mobile No</label>
                        <asp:TextBox ID="mobile" runat="server" CssClass="form-control" required="required" TextMode="Phone"></asp:TextBox>
                <div class="mb-3">
                <div class="mb-3">
                         <label for="age" class="form-label">Enter Age</label>
                         <asp:TextBox ID="Age" runat="server" CssClass="form-control" required="required" TextMode="Number"></asp:TextBox>
                <div class="mb-3">
                        <label for="gender" class="form-label">Gender</label><br />
                    <asp:RadioButtonList ID="gender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                </div>

                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control" required="required"></asp:TextBox>
                    </div>

                <div class="mb-3">
                        <label for="password" class="form-label">Confirm Password</label>
                        <asp:TextBox ID="confPassword" runat="server" TextMode="Password" CssClass="form-control" required="required"></asp:TextBox>
                    </div>

                    <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Add Doctor" OnClick="btnSubmit_Click" />
           
            </div>
        </div>
    </div>
</asp:Content>
