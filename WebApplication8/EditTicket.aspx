<%@ Page Title="" Language="C#" MasterPageFile="~/PetAPuppy.Master" AutoEventWireup="true" CodeBehind="EditTicket.aspx.cs" Inherits="PetaPuppy.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style8 {
            text-align: center;
            font-family: "Microsoft JhengHei";
            font-size: small;
            color: #FFFFFF;
            border-style: none;
            background-color: transparent;
            line-height: normal;
            position: relative;
            vertical-align: middle;
            left: 0px;
            top: 0px;
            height: 733px;
        }
        .auto-style9 {
            height: 697px;
            margin-top: 0px;
            background-color: #474F53;
            margin-bottom: 0px;
            font-size: large;
            color: #FFFFFF;
            width: 525px;
            margin-left: 0px;
            position: absolute;
            left: 36%;
            top: 15%;
            right: 851px;
        }
    .auto-style10 {
        margin-left: 0px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style8">
        <br />
        <br />
    </p>
    <p class="auto-style9">
    <br />
        <asp:Label ID="Label1" runat="server" Text="Editing Report: "></asp:Label>
        <br />
    <br />
    Report Name:
    <asp:TextBox ID="ReportNamebox" runat="server" Width="252px"></asp:TextBox>
    <br />
        User&#39;s Username:
    <asp:TextBox ID="UsernameBox" runat="server" Width="252px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;User&#39;s Email:
    <asp:TextBox ID="EmailBox" runat="server" Width="252px"></asp:TextBox>
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Decription Of Error<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="DescriptionBox" runat="server" Height="150px" OnTextChanged="TextBox4_TextChanged" Width="322px"></asp:TextBox>
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Steps To Create Error<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="StepsBox" runat="server" Height="150px" Width="322px"></asp:TextBox>
    <br />
        Change Type Of Crash<br />
    <asp:DropDownList ID="Crashlist" runat="server" CssClass="auto-style10" Height="16px" Width="163px">
        <asp:ListItem Value="Crash"></asp:ListItem>
        <asp:ListItem Value="False Information"></asp:ListItem>
        <asp:ListItem Value="Account Issue"></asp:ListItem>
        <asp:ListItem Value="Other"></asp:ListItem>
    </asp:DropDownList>
    <br />
        Assign Priority<br />
    <asp:DropDownList ID="Priority" runat="server" CssClass="auto-style10" Height="16px" Width="163px">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>High</asp:ListItem>
        <asp:ListItem>Medium</asp:ListItem>
        <asp:ListItem>Low</asp:ListItem>
    </asp:DropDownList>
        <br />
        Assign Tech To Ticket<br />
        <asp:TextBox ID="AssignTechbox" runat="server" Width="156px"></asp:TextBox>
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
</asp:Content>
