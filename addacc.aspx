<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addacc.aspx.cs" Inherits="bank_app.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrapper">
    <div class="form">
        
            <div class="mb-2">
                <label for="exampleInputEmail1" class="form-label">Account Holder Name</label>
                <asp:TextBox runat="server" ID="Name" CssClass="form-control" Placeholder="Account Holder Name" ></asp:TextBox>
            </div>
        <div class="mb-2">
            <label for="exampleInputEmail1" class="form-label">DOB</label>
            <asp:TextBox runat="server" ID="DOB" CssClass="form-control" TextMode="Date" ></asp:TextBox>
        </div>
        <div class="mb-2">
            <label for="exampleInputEmail1" class="form-label">Contact</label>
            <asp:TextBox runat="server" ID="Contact" CssClass="form-control"  Placeholder="Contact"></asp:TextBox>
        </div>
        <div class="mb-2">
            <label for="exampleInputEmail1" class="form-label">Address</label>
            <asp:TextBox runat="server" ID="Add" CssClass="form-control" Placeholder="Address"></asp:TextBox>
        </div>
        <div class="mb-2">
            <label for="exampleInputEmail1" class="form-label">Profile</label>
            <asp:FileUpload  runat="server" ID="Img" CssClass="form-control" ClientIDMode="Static" onchange="displaySelectedImage('Img','Userimg')"/>
        </div>
        <div class="mb-2">
            <label for="exampleInputEmail1" class="form-label">Amount</label>
            <asp:TextBox runat="server" ID="Amount" CssClass="form-control" Placeholder="Add amount"></asp:TextBox>
        </div>
       
        <asp:Button runat="server" ID="AddAccount" CssClass="btn btn-primary" Text="Add Account" OnClick="AddAccount_Click" OnClientClick="return validationAcc();" />
       
    </div>
        <div class="img-hld">
            <asp:Image runat="server" ID="Userimg"  CssClass="img" ImageUrl="~/img/user-placeholder.jpeg" ClientIDMode="Static"/>
        </div>
        </div>
</asp:Content>


