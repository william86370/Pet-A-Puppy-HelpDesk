﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Loggedin.aspx.cs" Inherits="PetaPuppy.WebForm1" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
        <asp:SiteMapPath ID="SiteMapPath2" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
            <CurrentNodeStyle ForeColor="#333333" />
            <NodeStyle Font-Bold="True" ForeColor="#284E98" />
            <PathSeparatorStyle Font-Bold="True" ForeColor="#507CD1" />
            <RootNodeStyle Font-Bold="True" ForeColor="#507CD1" />
        </asp:SiteMapPath>
&nbsp;Current Logged In User:<asp:Label ID="Usernamelbl" runat="server" Text="Yuh"></asp:Label>
&nbsp;
</asp:Content>


