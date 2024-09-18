<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PatientPanel.aspx.cs" Inherits="Hospital_Management_System.PatientPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <h2 class="text-center">Patient Panel</h2>

        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Enter Your Details</h5>
                <div class="mb-3">
                    <label for="symptoms" class="form-label">Symptoms</label>
                    <asp:TextBox ID="txtSymptoms" runat="server" TextMode="MultiLine" CssClass="form-control" required="required"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="doctor" class="form-label">Select Doctor</label>
                    <asp:DropDownList ID="ddlDoctors" runat="server" CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <label for="payment" class="form-label">Payment Amount</label>
                    <asp:TextBox ID="txtPayment" runat="server" CssClass="form-control" required="required" placeholder="Enter amount" Text="500"></asp:TextBox>
                </div>
                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" /> <%-- OnClick="btnSubmit_Click" />--%>
            </div>
        </div>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.bundle.min.js"></script>

</asp:Content>
