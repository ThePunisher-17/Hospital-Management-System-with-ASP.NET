<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Hospital_Management_System.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <h2 class="text-center">Contact Us</h2>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Get in Touch</h5>
                <p>If you have any questions or concerns, please fill out the form below or reach out to us using the contact details provided.</p>

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
                    <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Send Message" OnClick="btnSubmit_Click" /> <%--OnClick="btnSubmit_Click" />--%>
            </div>
        </div>

        <h5 class="mt-4">Contact Information</h5>
        <p><strong>Hospital of the Ghost</strong></p>
        <p>Email: info@hospitaloftheghost.com</p>
        <p>Phone: (123) 456-7890</p>
        <p>Address: 123 Ghostly Lane, Spooky Town, ST 12345</p>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.bundle.min.js"></script>

</asp:Content>
