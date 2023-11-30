<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="transactionview.aspx.cs" Inherits="bank_app.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" CssClass="table table-hover"></asp:GridView>
    <asp:Label runat="server" ID="msg" Visible="false" CssClass="msg"></asp:Label>
</asp:Content>
