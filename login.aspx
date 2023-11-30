<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="bank_app.WebForm11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bank App</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link type="text/css" rel="stylesheet" href="<%= ResolveUrl("~/style.css") %>?v=1" />

    <style>
        body {
            background: linear-gradient(to left, purple,mediumpurple );
        }

        #form1 {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-control{
            width:100%;
        }

        .l-form {
            display: flex;
            /*flex-direction:column;*/
            justify-content: space-around;
            align-items: center;
            width: 60vw;
            height: 50vh;
            box-shadow: 0 0 10px 0;
            backdrop-filter: blur(50px);
            background-color: rgb(255, 255, 255,0.2);
            border-radius: 10px;
            color: white;
            /*text-align: center;*/
        }
    </style>
    <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="l-form">
            <div class=" login-img">
                <img src="img/logo1.png" />
            </div>


            <div class="form-contain">
                <asp:Label runat="server" ID="msg" Visible="false" ForeColor="Red" CssClass="mb-3" Font-Bold="True"></asp:Label>

               
                    <asp:DropDownList runat="server" ID="SelectLogin" CssClass="form-select mb-3" AutoPostBack="True">
                        <asp:ListItem>Select User for login</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>User</asp:ListItem>
                    </asp:DropDownList>
                
                <div class="mb-3">
                    <asp:TextBox runat="server" ID="User" CssClass="form-control" Placeholder="User Name"></asp:TextBox>
                </div>
                <div class="mb-1">
                    
                    <asp:TextBox runat="server" ID="Pass" CssClass="form-control" TextMode="Password" Placeholder="Password"></asp:TextBox>
                </div>
                
               <asp:HyperLink runat="server" Visible="false" ID="Fpass" Text="Forget Password?" ForeColor="white"  CssClass="msg-link"></asp:HyperLink>

                
                <asp:Button runat="server" ID="Login" CssClass="login-btn" Text="Login" OnClick="Login_Click" />
                <asp:HyperLink runat="server" Visible="false" ID="Register" Text="Have not Registered yet?" ForeColor="white"  CssClass="msg-link mt-2" NavigateUrl="~/user/signup.aspx"></asp:HyperLink>
              
            </div>
        </div>
    </form>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
