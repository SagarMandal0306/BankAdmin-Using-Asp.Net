<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="bank_app.user.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="payment-body ">
    <div class="transaction">
        <div class="head">
        <h1>All Transactions</h1>
        <asp:TextBox runat="server" ID="Search" CssClass="form-control search" Placeholder="Search..."></asp:TextBox>
        </div>

        <div class="list">
            <div class="list-contain">
                <div class="profile">
                    <div class="box">
                        <img src="../img/emp2.jpeg" alt="">
                    </div>
                    <div class="text">
                        <span class="name">Sagar Mandal</span>
                        <p>7Oct 2023 9.23pm</p>
                    </div>
                </div>
                <div class="money">
                    <p>+500</p>
                </div>
                
            </div>
            <div class="list-contain">
                <div class="profile">
                    <div class="box">
                        <img src="../img/emp2.jpeg" alt="">
                    </div>
                    <div class="text">
                        <span class="name">Sagar Mandal</span>
                        <p>7Oct 2023 9.23pm</p>
                    </div>
                </div>
                <div class="money">
                    <p>+500</p>
                </div>
                
            </div>
            <div class="list-contain">
                <div class="profile">
                    <div class="box">
                        <img src="../img/emp2.jpeg" alt="">
                    </div>
                    <div class="text">
                        <span class="name">Sagar Mandal</span>
                        <p>7Oct 2023 9.23pm</p>
                    </div>
                </div>
                <div class="money">
                    <p>+500</p>
                </div>
                
            </div>
            <div class="list-contain">
                <div class="profile">
                    <div class="box">
                        <img src="../img/emp2.jpeg" alt="">
                    </div>
                    <div class="text">
                        <span class="name">Sagar Mandal</span>
                        <p>7Oct 2023 9.23pm</p>
                    </div>
                </div>
                <div class="money">
                    <p>+500</p>
                </div>
                
            </div>
           
        </div>
    </div>
    </div>
</asp:Content>
