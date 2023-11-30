<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="Pay.aspx.cs"
    Inherits="bank_app.user.Pay" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
            /* .payment-body{
                height: 25vh;
            } */
        </style>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="payment-body">
        <div class="search-contain " >
            <asp:TextBox runat="server" ID="Search" Placeholder="Search Account No / Upi ID" CssCLass="form-control">
            </asp:TextBox>
            <asp:Button runat="server" Id="Submit" CssClass="btn btn-primary" Text="Submit" OnClick="Submit_Click"></asp:Button>
        </div>
            <p runat="server" id="Msg"></p>
        <div runat="server" id="Accounts" class="transaction" >
            <div class="head">
                <h1>Searched Account</h1>
                <!-- <a href="#">See All<i class="fa-solid fa-angle-right mx-1"></i></a> -->
            </div>

            <div class="list">
                <div class="list-contain">
                    <div class="profile">
                        <div class="box">
                            <img src="../img/emp2.jpeg" alt="">
                        </div>
                        <div class="text">
                            <span class="name">Sagar Mandal</span>
                            <p>9099086775@skybank</p>
                        </div>
                    </div>
                    <div class="money">
                        <p class="btn btn-success">Pay</p>
                    </div>

                </div>
            
            </div>
        </div>
        </div>
    </asp:Content>