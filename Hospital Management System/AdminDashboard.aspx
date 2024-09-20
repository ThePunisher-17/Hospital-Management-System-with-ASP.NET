<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Hospital_Management_System.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container mt-5">
        <div class="card">
            <div class="card-body">
                <h2 class="card-title text-center">Admin Dashboard</h2>
                <p class="text-center"><asp:Label ID="lblAdminName" runat="server" Text="Admin Name"></asp:Label>!</p>
                
                <h4>Statistics</h4>
                <div class="row">
                    <div class="col-md-4">
                        <div class="card mb-3">
                            <div class="card-body">
                                <h5 class="card-title">Doctors Enrolled</h5>
                                <asp:Label ID="lblDoctorsCount" runat="server" Text="0"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-3">
                            <div class="card-body">
                                <h5 class="card-title">Today's Appointments</h5>
                                <asp:Label ID="lblTodaysAppointments" runat="server" Text="0"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-3">
                            <div class="card-body">
                                <h5 class="card-title">Total Payments Received</h5>
                                <asp:Label ID="lblTotalPayments" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>

                <h4 class="mt-4">List of Enrolled Doctors</h4>
                <asp:GridView ID="gvDoctors" runat="server" CssClass="table table-striped" AutoGenerateColumns="True"/>

                <asp:GridView ID="gvPatients" runat="server" CssClass="table table-striped" AutoGenerateColumns="True" />

                <div class="text-center mt-4">
                    <asp:Button ID="btnAddDoctor" runat="server" CssClass="btn btn-success" Text="Add Doctor" OnClick="btnAddDoctor_Click" /> <%--OnClick="btnAddDoctor_Click" />--%>
                    <asp:Button ID="btnViewPatients" runat="server" CssClass="btn btn-info" Text="View All Patients" OnClick="btnViewPatients_Click" /> <%--OnClick="btnViewPatients_Click" />--%>
                </div>

                <div class="text-center mt-4">
                    <asp:Button ID="btnLogout" runat="server" CssClass="btn btn-danger" Text="Logout" OnClick="btnLogout_Click" />
                </div>

            </div>
        </div>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.bundle.min.js"></script>
</asp:Content>
