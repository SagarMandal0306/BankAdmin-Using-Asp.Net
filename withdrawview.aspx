<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="withdrawview.aspx.cs" Inherits="bank_app.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView runat="server" ID="Withdrawtbl" AutoGenerateColumns="false" CssClass ="table table-hover"
        AllowPaging="true" PageSize="10" OnPageIndexChanging="Withdrawtbl_PageIndexChanging"
        >
        <Columns>
            <asp:BoundField HeaderText="Sr no." DataField="Id"></asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="Account Holder"></asp:BoundField>
            <asp:BoundField DataField="accno" HeaderText="Account Number"></asp:BoundField>
            <asp:BoundField DataField="recptno" HeaderText="Receipt No"></asp:BoundField>
         
            <asp:TemplateField HeaderText="Withdraw Amount">
                <ItemTemplate>
                    <span class="rupee-icon">₹</span>
                    <%# Eval("withdraw") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="date" HeaderText="Withdraw At"></asp:BoundField>
        </Columns>
        <PagerSettings  FirstPageImageUrl="first" LastPageText="last" Mode="NumericFirstLast" />
        <PagerStyle ForeColor="White" CssClass="pagination-style" HorizontalAlign="Center"/>
    </asp:GridView>
</asp:Content>
