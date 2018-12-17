<%@ Page Title="" Language="C#" MasterPageFile="~/PetAPuppy.Master" AutoEventWireup="true" CodeBehind="EditTech.aspx.cs" Inherits="PetaPuppy.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style9 {
            font-family: "Arial Narrow";
            font-size: medium;
            color: #FFFFFF;
            vertical-align: middle;
            text-align: center;
            background-color: #474F53;
            position: absolute;
            left: 40%;
            width: 286px;
            height: 264px;
            top: 18%;
        }
        .auto-style10 {
            border-left: 1px none #FFFFFF;
            border-right: 1px none #FFFFFF;
            border-top: 1px none #FFFFFF;
            border-bottom: 1px solid #FFFFFF;
            text-align: left;
            vertical-align: middle;
            font-family: "Kozuka Gothic Pr6N R";
            font-size: xx-large;
            color: #FFFFFF;
            height: 781px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style9">
        <br />
        <asp:Label ID="create" runat="server" Text="Create New User"></asp:Label>
        <br />
        <asp:Label ID="editlbl" runat="server" Text="Editing User"></asp:Label>
        <br />
        <br />
        Username<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Password<br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Submit To Database" Width="132px" />
        <br />
    </p>
    <p class="auto-style10">
        &nbsp;</p>
</asp:Content>
