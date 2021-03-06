<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ReachSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="Oscar Perez Lugo" content="Developer"/>
        <meta name="description"  content="Tarrago Brands"/>
        <meta name="keywords"  content="QUIMICOS"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>        
        <title>AFFINITY</title>
        <link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
        <link href="Content/columnas.css" rel="stylesheet" />
        <link href="Content/Site.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
         <nav class="nave fila col10L">
            <div class="col2L">
                <img id="logo" src="https://1.bp.blogspot.com/-pWSO2elPkeI/X5woEanJ0GI/AAAAAAAAPkI/UMptMYuBh6oX0V61V2758z_VF52oc8i-ACLcBGAsYHQ/s16000/logo.png"/>
            </div>                       
        </nav>
        <div class="subnave"/>
        <div class="baseform">
            <br />
            <br />
            <br />
            <p><h2>LOGIN</h2></p>
            <div class="fila col10L">
                <input class="formulario" placeholder="Usuario" id="Correo" type="text" required runat="server"/>            
            </div>                       
            <div class="fila col10L">
                <input class="formulario" placeholder="Contraseña" id="Contrasena" type="password" required runat="server"/>            
            </div>            
            <%--<p><a class="enlaces" href="Registro.aspx">Don't you have an account? sign up here</a></p>--%>
            <%--<p><a class="enlaces" href="Contrasena.aspx">Actualizar Contraseña</a></p>--%>
            <div class="fila col10L">
                <asp:Button class="botonsubmit" value="REGISTRARME" type="submit" runat="server" CssClass="botonsubmit" Text="LOGIN" OnClick="Unnamed1_Click" />            
            </div>
        </div>        
    </form>
</body>
</html>
