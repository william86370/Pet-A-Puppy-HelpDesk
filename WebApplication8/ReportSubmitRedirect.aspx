<%@ Page Title="" Language="C#" MasterPageFile="~/PetAPuppy.Master" AutoEventWireup="true" CodeBehind="ReportSubmitRedirect.aspx.cs" Inherits="PetaPuppy.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style8 {
            text-align: left;
            vertical-align: middle;
            height: 673px;
        }
        .auto-style9 {
            height: 210px;
            margin-top: 0px;
            background-color: #474F53;
            margin-bottom: 0px;
            font-size: large;
            color: #FFFFFF;
            width: 358px;
            margin-left: 0px;
            position: absolute;
            left: 40%;
            top: 15%;
            right: 932px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style9">
        <br />
        Error Report Submitted Successfully<br />
        <br />
        <asp:Button ID="ReportAgainbtn" runat="server" OnClick="ReportAgainbtn_Click" Text="Report Another Error" Width="160px" />
        <br />
        <br />
        OR<br />
        <br />
        <asp:Button ID="Mainbtn" runat="server" OnClick="Mainbtn_Click" Text="Return To Main Menu" />
    </p>
    <p class="auto-style8">
        <br />
    </p>
</asp:Content>
