<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="depositeview.aspx.cs" Inherits="bank_app.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView runat="server" ID="dpstbl" AutoGenerateColumns="false" CssClass="table table-hover" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"
        AllowPaging="true" PageSize="10" OnPageIndexChanging="dpstbl_PageIndexChanging">
        <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Sr no."></asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="Account Holder"></asp:BoundField>
            <asp:BoundField DataField="accno" HeaderText="Account no."></asp:BoundField>
            <asp:BoundField DataField="recptno" HeaderText="Receipt no."></asp:BoundField>
           
            <asp:TemplateField HeaderText="Deposite Amount">
                <ItemTemplate>
                    <span class="rupee-icon">₹</span>
                    <%# Eval("deposit") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="date" HeaderText="Deposite time"></asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC"></FooterStyle>

        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
         <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NumericFirstLast"/>
        <PagerStyle   CssClass="pagination-style" ForeColor="White"/>
    </asp:GridView>
    
</asp:Content>
