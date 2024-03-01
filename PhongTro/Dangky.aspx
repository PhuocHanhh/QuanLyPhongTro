<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangky.aspx.cs" Inherits="PhongTro.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;

        }

        .container {
            width: 100%;
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.5);
        }

            .container h2 {
                margin-bottom: 20px;
            }

        .input-group {
            margin-bottom: 15px;
        }

            .input-group label {
                display: block;
                margin-bottom: 5px;
            }

            .input-group input {
                width: 100%;
                padding: 8px;
                border-radius: 4px;
                border: 1px solid #ccc;
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
            <form action="submit.php" method="POST">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="outLogin" PostBackUrl="Default.aspx"><i class="fa-solid fa-backward fa-xl" style="color: #000000"></i></asp:LinkButton>
                <h2 style="text-align:center">Đăng ký</h2>
                <div class="input-group">
                    <label for="username">Tên người dùng:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="input-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="input-group">
                    <label for="password">Mật khẩu:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                 <div class="input-group">
                    <label for="password">Nhập lại mật khẩu:</label>
                    <input type="password" id="password" name="password" required>
                </div>
               <input type="submit" class="btn" value="Đăng ký">
               <p style="text-align:center;margin-top:10px">Bạn đã có tài khoản? <a href="Dangnhap.aspx">Đăng nhập</a></p>
            </form>
        </div>
    </form>
</body>
</html>
