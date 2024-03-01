<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="PhongTro.Dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            margin: 0;
            padding: 0;
            background: #f0f0f0;
            font-family: Arial, sans-serif;
        }

        .container {
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-box {
            width: 400px;
            padding: 40px;
            position: relative;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.5);
        }

            .login-box h2 {
                margin: 0 0 20px;
                padding: 0;
                color: #333;
            }

        .textbox {
            position: relative;
            margin-bottom: 30px;
        }

            .textbox input {
                width: 100%;
                padding: 8px;
                /*background: #f0f0f0;*/
                border: 1px solid #ccc;
                outline: none;
                color: #333;
                font-size: 18px;
                border-radius: 5px;
            }

                .textbox input:focus {
                    border-bottom: 2px solid #007bff;
                }

        .btn {
            width: 100%;
            background: #007bff;
            border: none;
            padding: 10px;
            cursor: pointer;
            font-size: 18px;
            color: #fff;
            border-radius: 5px;
            transition: background 0.3s ease;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.5); 
        }

            .btn:hover {
                background: #0056b3;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="login-box">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="outLogin" PostBackUrl="Default.aspx"><i class="fa-solid fa-backward fa-xl" style="color: #000000"></i></asp:LinkButton>
                <h2 style="text-align: center">Đăng nhập</h2>
                <form action="login.php" method="POST">
                    <div class="textbox">
                        <label for="username">Tên người dùng hoặc Email:</label>
                        <input type="text" id="username" name="username" required>
                    </div>
                    <div class="textbox">
                        <label for="password">Mật khẩu:</label>
                        <input type="password" id="password" name="password" required>
                    </div>
                    <input type="submit" class="btn" value="Đăng nhập">
                    <p style="text-align: center; margin-top: 10px">Bạn chưa có tài khoản? <a href="Dangky.aspx">Đăng ký</a></p>
                </form>
            </div>
        </div>
    </form>
</body>
</html>
