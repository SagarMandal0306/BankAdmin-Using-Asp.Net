<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="deposite.aspx.cs" Inherits="bank_app.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrapper">
    <div class="form">
           
       <div class="form-side">
      
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Accounts</label>
            <div class="d-flex">
            <asp:TextBox runat="server" ID="AccNo" CssClass="form-control" ></asp:TextBox>
            <asp:Button runat="server" ID="Button1" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Search"/>
            </div>
        </div>
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Account Holder Name</label>
            <asp:TextBox runat="server" ID="Name" CssClass="form-control" ReadOnly="true" ></asp:TextBox>
        </div>
       
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Account Number</label>
            <asp:TextBox runat="server" ID="Acc" CssClass="form-control" ReadOnly="true" ></asp:TextBox>
        </div>
       
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Amount</label>
            <asp:TextBox runat="server" ID="Amount" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>

        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Deposite Amount</label>
            <asp:TextBox runat="server" ID="Deposite" CssClass="form-control" ></asp:TextBox>
        </div>


           
        <asp:Button runat="server" ID="AddAccount" CssClass="btn btn-danger" Text="Deposite" OnClick="AddAccount_Click" onchange="validation()"/>
       
           </div>
           
    </div>
        <div class="img-hld">
            <asp:Image runat="server" ID="Userimg" ImageUrl="~/img/user-placeholder.jpeg" CssClass="img" />
        </div>
        </div>
</asp:Content>
