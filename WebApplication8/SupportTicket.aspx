<%@ Page Title="" Language="C#" MasterPageFile="~/PetAPuppy.Master" AutoEventWireup="true" CodeBehind="SupportTicket.aspx.cs" Inherits="PetaPuppy.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style8 {
            border-left: 1px none #FFFFFF;
            border-right: 1px none #FFFFFF;
            border-top: 1px none #FFFFFF;
            border-bottom: 1px solid #FFFFFF;
            text-align: left;
            vertical-align: middle;
            font-family: "Kozuka Gothic Pr6N R";
            font-size: xx-large;
            color: #FFFFFF;
            height: 779px;
            border-style: none;
        }
        .auto-style9 {
            height: 663px;
            margin-top: 0px;
            background-color: #474F53;
            margin-bottom: 0px;
            font-size: large;
            color: #FFFFFF;
            width: 567px;
            margin-left: 0px;
            position: absolute;
            left: 40%;
            top: 15%;
        }
        .auto-style10 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style9">
        <br />
        Pet A Puppy Error Report<br />
        <br />
        Report Name:
        <asp:TextBox ID="ReportNamebox" runat="server" Width="252px"></asp:TextBox>
        <br />
&nbsp; Your Username:
        <asp:TextBox ID="UsernameBox" runat="server" Width="252px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp; Your Email:
        <asp:TextBox ID="EmailBox" runat="server" Width="252px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Give Us a Description About this Error:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="DescriptionBox" runat="server" Height="150px" OnTextChanged="TextBox4_TextChanged" Width="322px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please List The Steps To Recreate This Error:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="StepsBox" runat="server" Height="150px" Width="322px"></asp:TextBox>
        <br />
        <br />
        Select Type Of Error You Are Reporting<br />
        <asp:DropDownList ID="Crashlist" runat="server" CssClass="auto-style10" Height="16px" Width="163px">
            <asp:ListItem Value="Crash"></asp:ListItem>
            <asp:ListItem Value="False Information"></asp:ListItem>
            <asp:ListItem Value="Account Issue"></asp:ListItem>
            <asp:ListItem Value="Other"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Button ID="SubmitReportbtn" runat="server" OnClick="SubmitReportbtn_Click" Text="Submit Report" Width="134px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </p>
    <p class="auto-style8">
        &nbsp;</p>
</asp:Content>
