<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DoctorDashboard.aspx.cs" Inherits="Hospital_Management_System.DoctorDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <div class="card">
            <div class="card-body">
                <h2 class="card-title text-center">Doctor Dashboard</h2>
                <p class="text-center">Welcome, <asp:Label ID="lblDoctorName" runat="server" Text=""></asp:Label>!</p>
                
                <h4>Today's Appointments</h4>
                <asp:GridView ID="gvTodaysAppointments" runat="server" CssClass="table table-striped" AutoGenerateColumns="True"/>

                <div class="text-center mt-4">
                    <asp:Button ID="btnLogout" runat="server" CssClass="btn btn-danger" Text="Logout" OnClick="btnLogout_Click" />
                </div>
            </div>
        </div>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.bundle.min.js"></script>

</asp:Content>
