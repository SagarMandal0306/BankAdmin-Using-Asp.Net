<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changePass.aspx.cs" Inherits="bank_app.changePass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bank App</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"/>
<link type="text/css" rel="stylesheet" href="<%= ResolveUrl("~/style.css") %>?v=1"/>
        <style>
        body{
            background:linear-gradient(to left, purple ,deeppink );
        }
        #form1{
            display:flex;
            justify-content:center;
            align-items:center;
            height:100vh;
        }
        .form{
            display:flex;
            flex-direction:column;
        }
    </style>
<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form ">
            <div class=" login-img">
                <img src="img/logo.png" />
            </div>
            <asp:Label runat="server" ID="msg" Visible="false" ForeColor="Red"></asp:Label>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Old Password</label>
                <asp:TextBox runat="server" ID="OldPAss" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">New Password</label>
                <asp:TextBox runat="server" ID="NewPass" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Re-Enter Password</label>
                <asp:TextBox runat="server" ID="RePass" CssClass="form-control" ></asp:TextBox>
            </div>


            <asp:Button runat="server" ID="Change" CssClass="btn btn-primary" Text="Change" OnClick="Change_Click" />

        </div>
    </form>
</body>
</html>
