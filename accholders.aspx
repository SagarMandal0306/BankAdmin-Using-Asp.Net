<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="accholders.aspx.cs" Inherits="bank_app.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="false" ID="Account" CssClass="table table-hover table-striped" AllowPaging="true" PageSize="5" OnPageIndexChanging="Account_PageIndexChanging" >
        <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>
        <Columns>
            <asp:BoundField HeaderText="Sr no." DataField="id"></asp:BoundField>
            <asp:BoundField HeaderText="Account Holder" DataField="name"></asp:BoundField>
            <asp:BoundField HeaderText="DOB" DataField="dob"></asp:BoundField>
            <asp:BoundField HeaderText="Account Number" DataField="accno"></asp:BoundField>
            <asp:BoundField HeaderText="Address" DataField="address"></asp:BoundField>
            <asp:ImageField HeaderText="Profile" DataImageUrlField="image" ControlStyle-Height="50px" ControlStyle-CssClass="tbl-img"></asp:ImageField>
            <asp:TemplateField HeaderText="Amount">
                <ItemTemplate>
                    <span class="rupee-icon">₹</span>
                    <%# Eval("amount") %>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField HeaderText="Opening Date" DataField="CreatedAt"></asp:BoundField>
            <asp:BoundField HeaderText="Status" DataField="status"></asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC"></FooterStyle>

        <HeaderStyle BackColor="Purple" Font-Bold="True" ForeColor="White" ></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>

        <PagerSettings  FirstPageImageUrl="first" LastPageText="last" Mode="NumericFirstLast"/>
        <PagerStyle  ForeColor="White" CssClass="pagination-style"/>
    </asp:GridView>
</asp:Content>
