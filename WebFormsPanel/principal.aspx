<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="principal.aspx.cs" Inherits="WebFormsPanel.principal" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Formulario</title>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/5.0.6/jquery.inputmask.min.js"></script>

    <style>
        body {
            background-color: #f0f8ff;
        }

        .form-container {
            display: flex;
            flex-direction: row;
            align-items: center;
            flex-wrap: wrap;
            justify-content: space-between;
            margin: 0 auto;
            width: 400px;
        }

            .form-container label {
                width: 8%;
                text-align: right;
                margin-right: 5px;
                margin-top: 5px;
            }

            .form-container input, select {
                width: 60%;
                margin-top: 5px;
            }

            .form-container select {
                width: 62%;
                margin-top: 5px;
            }

        .button-container {
            margin-top: 5px;
        }

            .button-container button {
                display: block;
                margin-bottom: 5px;
                width: 40px;
            }

            #lblAviso{
                color: #008000;
            }

            .margem-altura{
               margin-top: 10px;
            }
   
    </style>
</head>
<body>


    <div class="form-container">
        <h1>Formulário</h1>

        <form id="form1" runat="server">

            <asp:Panel ID="panel1" runat="server">


                <h2>Informações Pessoais</h2>

                <div class="form-container">
                    <label for="txtNome">Nome:</label>
                    <asp:TextBox ID="txtNome" runat="server" placeholder="Nome"></asp:TextBox><br />
                </div>

                <div class="form-container">
                    <label for="txtSobrenome">Sobrenome:</label>
                    <asp:TextBox ID="txtSobrenome" runat="server" placeholder="Sobrenome"></asp:TextBox><br />
                </div>

                <div class="form-container">
                    <label for="txtGenero">Gênero:</label>

                    <asp:DropDownList ID="txtGenero" runat="server">
                        <asp:ListItem Text="Selecione uma opção" Value="" />
                        <asp:ListItem Text="Masculino" Value="1" />
                        <asp:ListItem Text="Feminino" Value="2" />

                    </asp:DropDownList><br />


                </div>

                <div class="form-container">
                    <label for="txtCelular">Celular:</label>
                    <asp:TextBox ID="txtCelular" runat="server" placeholder="Celular" ClientIDMode="Static"></asp:TextBox><br />
                </div>

                <div class="button-container">
                    <asp:Button ID="btnproximo" runat="server" Text="Próximo" OnClick="btnProximo_Click" Style="width: 60px;" />
                </div>

            </asp:Panel>

            <asp:Panel ID="panel2" runat="server" Visible="false">

                <h2>Detalhes do Endereço</h2>

                <div class="form-container">
                    <label for="txtEndereco">Endereço:</label>
                    <asp:TextBox ID="txtEndereco" runat="server" placeholder="Endereço"></asp:TextBox><br />
                </div>

                <div class="form-container">
                    <label for="txtCidade">Cidade:</label>
                    <asp:TextBox ID="txtCidade" runat="server" placeholder="Cidade"></asp:TextBox><br />
                </div>

                <div class="form-container">
                    <label for="txtCep">CEP:</label>
                    <asp:TextBox ID="txtCep" runat="server" placeholder="CEP"></asp:TextBox><br />
                </div>

                <div class="button-container">
                    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" OnClick="btnVoltar_Click" Style="width: 60px;" />

                    <asp:Button ID="btnproximo1" runat="server" Text="Próximo" OnClick="btnProximo_Click" Style="width: 60px;" />
                </div>


            </asp:Panel>

            <asp:Panel ID="panel3" runat="server" Visible="false">

                <h2>Área de Login</h2>

                <div class="form-container">
                    <label for="txtUsuario">Usuario:</label>
                    <asp:TextBox ID="txtUsuario" runat="server" placeholder="Usuario"></asp:TextBox><br />
                </div>

                <div class="form-container">
                    <label for="txtSenha">Senha:</label>
                    <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" placeholder="Senha"></asp:TextBox><br />
                </div>

                <div class="button-container">
                    <asp:Button ID="btnvoltar1" runat="server" Text="Voltar" OnClick="btnVoltar_Click" Style="width: 60px;" />

                    <asp:Button ID="btnenviaar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" Style="width: 60px;" />
                </div>

                 <div class="margem-altura">
                <asp:Label ID="lblAviso" runat="server" ></asp:Label>
                 </div>

            </asp:Panel>

        </form>

    </div>
    <script>
        $(document).ready(function () {
            $("#<%= txtCelular.ClientID %>").inputmask("(99) 99999-9999");
            $("#<%= txtCep.ClientID %>").inputmask("99999-999");

        });



    </script>
</body>

</html>
