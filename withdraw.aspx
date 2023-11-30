<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="withdraw.aspx.cs" Inherits="bank_app.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
    <div class="form" style="width:40vw">
      
  
  
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Accounts</label>
       <div class="d-flex">
           <asp:TextBox  runat="server" ID="AccNO" CssClass="form-control"></asp:TextBox>
           <asp:Button runat="server" ID="Search" CssClass="btn btn-primary" OnClick="Search_Click" Text="Search"/>
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
        <asp:TextBox runat="server" ID="Amount" CssClass="form-control" ReadOnly="true" ></asp:TextBox>
    </div>

    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Withdraw Amount</label>
        <asp:TextBox runat="server" ID="Withdraw" CssClass="form-control" ></asp:TextBox>
    </div>


       
    <asp:Button runat="server" ID="Withdraws" CssClass="btn btn-danger" Text="Withdraw Amount" OnClick="Withdra_Click"/>
   
       </div>
        <div class="img-hld">
            <asp:Image runat="server"  ID="Userimg" ImageUrl="~/img/user-placeholder.jpeg" CssClass="img"/>
        </div>
       
        </div>

</asp:Content>
