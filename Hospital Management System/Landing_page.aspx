<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Landing_page.aspx.cs" Inherits="Hospital_Management_System.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Image ID="Image0" runat="server" ImageUrl="~/main_background.jpg" Width=100%> </asp:Image>

    <h1>Our Services</h1>
    <asp:MultiView ID="services" runat="server" ActiveViewIndex="9" >
        <asp:View ID="service_1" runat="server"> General Medicine
            <asp:Image ID="Image1" runat="server" ImageUrl="~/General_Medicine.jpg" />
        </asp:View>
        <asp:View ID="service_2" runat="server">Pediatrics
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Pediatrics_image.jpg"/>
        </asp:View>
        <asp:View ID="service_3" runat="server">Cardiology
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Cardiology_image.jpg" />
        </asp:View>
        <asp:View ID="service_4" runat="server">Orthopedics
            <asp:Image ID="Image4" runat="server" ImageUrl="~/Orthopedics_image.jpg"/>
        </asp:View>
        <asp:View ID="service_5" runat="server">Neurology
            <asp:Image ID="Image5" runat="server" ImageUrl="~/Neurology_image.jpg"/>
        </asp:View>
        <asp:View ID="service_6" runat="server">Emergency Services
            <asp:Image ID="Image6" runat="server" ImageUrl="~/Emergency Services_image.jpg"/>
        </asp:View>
        <asp:View ID="service_7" runat="server">Outpatient Services
            <asp:Image ID="Image7" runat="server" ImageUrl="~/Outpatient Services_image.jpg"/>
        </asp:View>
        <asp:View ID="service_8" runat="server">Inpatient Services
            <asp:Image ID="Image8" runat="server" ImageUrl="~/Inpatient Services_image.jpg" />
        </asp:View>
        <asp:View ID="service_9" runat="server">Radiology
            <asp:Image ID="Image9" runat="server" ImageUrl="~/Radiology_image.jpg"/>
        </asp:View>
        <asp:View ID="service_10" runat="server">Laboratory Services
            <asp:Image ID="Image10" runat="server" ImageUrl="~/Laboratory Services_image.jpg"/>
        </asp:View>
    </asp:MultiView>

    
</asp:Content>
