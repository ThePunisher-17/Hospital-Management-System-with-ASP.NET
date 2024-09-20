<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EmergencyContact.aspx.cs" Inherits="Hospital_Management_System.EmergencyContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-5">
        <h2 class="text-center">Emergency Contact</h2>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Immediate Assistance</h5>
                <p>If you are experiencing a medical emergency, please call us immediately at:</p>
                <p><strong>Phone: (123) 456-7890</strong></p>
                <p>You can also reach our emergency department directly:</p>
                <p><strong>Emergency Department: (123) 456-7891</strong></p>

                <h5 class="mt-4">Send an Urgent Message</h5>
                    <div class="mb-3">
                        <label for="txtName" class="form-label">Name</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="txtEmail" class="form-label">Email</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="txtMessage" class="form-label">Message</label>
                        <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" CssClass="form-control" required="required" />
                    </div>
                    <asp:Button ID="btnSendUrgentMessage" runat="server" CssClass="btn btn-danger" Text="Send Urgent Message" /> <%--OnClick="btnSendUrgentMessage_Click" />--%>
            </div>
        </div>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.bundle.min.js"></script>
</asp:Content>



