<%@ Page Title="" Language="C#" MasterPageFile="~/PetAPuppy.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PetaPuppy.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .IndexLine {
        height: 24px;
        margin-top: 0px;
        background-color: #474F53;
        margin-bottom: 0px;
        font-size: large;
        color: #FFFFFF;
    }
    .IndexLineBlank {
        height: 24px;
        margin-top: 0px;
        margin-bottom: 0px;
        font-size: large;
        color: #FFFFFF;
    }
    .textbox {
        height: 50px;
        margin-top: 0px;
        background-color: #474F53;
        margin-bottom: 0px;
        font-size: large;
        color: #FFFFFF;
        width: 300px;
        margin-left: 0px;
        position: absolute;
        left: 50%;
        top: 20%;
        right: -50%;
    }
    .auto-style9 {
        height: 710px;
        margin-top: 0px;
        margin-bottom: 0px;
        font-size: large;
        color: #FFFFFF;
    }
    .auto-style10 {
        height: 349px;
        margin-top: 0px;
        background-color: #474F53;
        margin-bottom: 0px;
        font-size: large;
        color: #FFFFFF;
        width: 419px;
        margin-left: 0px;
        position: absolute;
        left: 40%;
        top: 15%;
        right: 871px;
    }
    .auto-style11 {
        font-size: medium;
    }
    .Textbox {
        height: 349px;
        margin-top: 0px;
        background-color: #474F53;
        margin-bottom: 0px;
        font-size: large;
        color: #FFFFFF;
        width: 419px;
        margin-left: 0px;
        position: absolute;
        left: 40%;
        top: 15%;
        right: 871px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style9">
    &nbsp;</p>
<p class="auto-style10">
    <br />
    Please Login Below OR Create New Ticket<br />
    <asp:Label ID="Usernameerrorlbl" runat="server" ForeColor="Red" Text="Incorrect Username" Visible="False"></asp:Label>
    <br />
    <span class="auto-style11">Username<br />
    </span>
    <asp:TextBox ID="UsernameBox" runat="server" Width="173px"></asp:TextBox>
    <br />
    <asp:Label ID="PasswordErrorlbl" runat="server" ForeColor="Red" Text="Incorrect Password" Visible="False"></asp:Label>
    <br />
    Password<br />
    <asp:TextBox ID="PasswordBox" runat="server" Width="175px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Loginerrorlbl" runat="server" ForeColor="#CC3300" Text="Incorect Login" Visible="False"></asp:Label>
    <br />
    <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" Width="85px" />
    <br />
    <br />
    OR<br />
    <br />
    <asp:Button ID="Supportticketbtn" runat="server" Text="Create New Support Ticket" OnClick="Supportticketbtn_Click" />
</p>
</asp:Content>
