<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dashbord.aspx.cs" Inherits="bank_app.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashbord">

        <div class="contain-1 box">
            <span>
                <p>Total User</p>
                <asp:Label runat="server" ID="Ttluser" CssClass="highlight" Text="1500"> </asp:Label>
            </span>
            <i class="fa-regular fa-user"></i>
        </div>
        <div class="contain-2 box">
                <p>Total Deposite</p>
                <asp:Label runat="server" ID="TtlDeposite" CssClass="highlight" Text="1500"> </asp:Label>
            </span>
           <i class="fa-solid fa-money-bill-trend-up"></i>
        </div>
        <div class="contain-3 box">
            <span>
                <p>Total Withdraw</p>
                <asp:Label runat="server" ID="Ttlwithdraw" CssClass="highlight" Text="1500"> </asp:Label>
            </span>
            <i class="fa-solid fa-money-bill-transfer"></i>
        </div>
        <div class="contain-3 box">
            <span>
                <p>Total Amount</p>
                <asp:Label runat="server" ID="Ttlamount" CssClass="highlight" Text="1500"> </asp:Label>
            </span>
           <i class="fa-solid fa-wallet"></i>
        </div>
    </div>
</asp:Content>
