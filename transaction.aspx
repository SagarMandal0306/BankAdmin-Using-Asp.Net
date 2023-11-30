<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="transaction.aspx.cs" Inherits="bank_app.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form ">
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Account Number</label>
            <div class="d-flex">
            <asp:TextBox runat="server" ID="AccNo" CssClass="form-control" ></asp:TextBox>
                <asp:Button  runat="server" ID="Searches" CssClass="btn btn-primary" Text="Search" OnClick="Search_Click"/>
            </div>
        </div>
    </div>
    <div class="d-flex mt-5" runat="server" >
        <div class=" form  d-flex" style="margin-right:40px;">
            <div class="form-left  mx-2">
                <div class="mb-2 ">
                    <label for="exampleInputEmail1" class="form-label">Account Name</label>
                        <asp:TextBox runat="server" ID="Name" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                        
                    </div> 
                <div class="mb-2 ">
                    <label for="exampleInputEmail1" class="form-label">DOB</label>
                        <asp:TextBox runat="server" ID="dob" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                        
                    </div> 

                <asp:Button runat="server"  ID="View" Text="Transactions" OnClick="View_Click" CssClass="btn btn-primary mt-5"/>
                
                
            </div>
            <div class="form-right">
                <div class="mb-2 ">
                    <label for="exampleInputEmail1" class="form-label">Created At</label>
                    <asp:TextBox runat="server" ID="Created" CssClass="form-control" ReadOnly="true"></asp:TextBox>

                </div>
                <div class="mb-2 ">
                    <label for="exampleInputEmail1" class="form-label">Amount</label>
                    <asp:TextBox runat="server" ID="Amount" CssClass="form-control" ReadOnly="true"></asp:TextBox>

                </div>
            </div>
            
        </div>
        <div class="img-hld">
            <asp:Image runat="server" ID="Userimg" ImageUrl="~/img/user-placeholder.jpeg" CssClass="img" />
        </div>
    </div>
</asp:Content>
