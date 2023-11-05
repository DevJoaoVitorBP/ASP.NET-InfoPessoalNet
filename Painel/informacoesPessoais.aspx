<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="informacoesPessoais.aspx.cs" Inherits="Painel.informacoesPessoais" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Informações pessoais</title>
</head>
<body>
    <form id="form_container" runat="server">

<!-- PANEL1 PARA COLETAR INFORMAÇÕES PESSOAIS -->
        <asp:Panel ID="Panel1" runat="server">
            <div class="container_itens">
                <div class ="container_informacoes">
                   <h2>Informaçoes pessoais</h2>
                    
                    <!-- CAMPO: NOME -->
                    <asp:Label ID="lblNome" runat="server" text="Nome: "></asp:Label><br />
                    <asp:TextBox ID="txtNome" runat="server" />
                    <!-- VERIFICA SE O CAMPO FOI PREENCHIDO -->
                    <asp:RequiredFieldValidator 
                        ID="rfvNome" ForeColor="Red" runat="server" ControlToValidate="txtNome" 
                        ErrorMessage="Nome é obrigatório." 
                    />

                    <!-- PERMITE APENAS O USO DE CARACTERES -->
                    <asp:RegularExpressionValidator 
                        ID="revNome" ForeColor="Red" runat="server" 
                        ControlToValidate="txtNome" ValidationExpression="^[a-zA-Zã\s]*$" 
                        ErrorMessage="O campo Nome deve conter apenas letras e espaços." 
                     />
                    <!-- CAMPO: SOBRENOME -->
                    <br/>
                    <asp:Label ID="lblSobrenome" runat="server" text="Sobrenome: "></asp:Label><br />
                    <asp:TextBox ID="txtSobrenome" runat="server" />
                    <!-- PERMITE APENAS O USO DE CARACTERES -->
                    <asp:RequiredFieldValidator 
                        ID="rfvSobrenome" ForeColor="Red" runat="server" 
                        ControlToValidate="txtSobrenome" ErrorMessage="Sobrenome é obrigatório." 
                        />
                    <!-- PERMITE APENAS O USO DE CARACTERES -->
                    <asp:RegularExpressionValidator 
                        ID="revSobrenome" ForeColor="Red" runat="server" 
                        ControlToValidate="txtSobrenome" ValidationExpression="^[a-zA-Z\s]*$" 
                        ErrorMessage="O campo Sobrenome deve conter apenas letras e espaços." 
                     />
                    <!-- CAMPO: GENERO -->
                    <br/>
                    <asp:Label ID="lblGenero" runat="server" Text="Gênero: "></asp:Label><br />
                    <asp:DropDownList ID="ddlGenero" runat="server">
                        <asp:ListItem Value ="" />
                        <asp:ListItem Value="Masculino"/>
                        <asp:ListItem Value="Feminino" />
                        <asp:ListItem Value="Nao-binario" />
                        <asp:ListItem Value="Prefiro-nao-dizer" />
                        <asp:ListItem Value="Outros" />
                    </asp:DropDownList>
                    <!-- VERIFICA SE ALGUM ITEM DA DRODOWNLIST FOI SELECIONADO -->
                    <asp:RequiredFieldValidator 
                        ID="rfvGenero" runat="server" ForeColor="Red" 
                        ControlToValidate="ddlGenero" InitialValue="" ErrorMessage="Gênero é obrigatório." 
                    />

                    <br/>
                    <!-- CAMPO: CELULAR -->
                    <asp:Label ID="lblCelular" runat="server" Text="Celular: "></asp:Label><br />
                    <asp:TextBox ID="txtCelular" runat="server"/>
                    <!-- VERIFICA SE O CAMPO FOI PREENCHIDO -->
                    <asp:RequiredFieldValidator 
                        ID="rfvCelular" runat="server" ForeColor="Red" 
                        ControlToValidate="txtCelular" ErrorMessage="Celular é obrigatório." 
                    />
                    <!-- VALIDAÇÃO DO NÚMERO, CASO O NÚMERO SEJA INVALIDO, RETORNA O ERRO -->
                    <asp:RegularExpressionValidator 
                        ID="revCelular" runat="server" ForeColor="Red" 
                        ControlToValidate="txtCelular" ValidationExpression="^[0-9]{11}$"
                        ErrorMessage="Número de celuar invalido."
                     />
                    <br/>
                    <!-- BOTÃO QUE DIRECIONA PARA O PANEL2 DE ENDEREÇO-->
                    <asp:Button class ="btnProximo" ID="btnProximo1" runat="server" Text="Próximo" OnClick="btnProximo1_Click" />
               </div>
            </div>
        </asp:Panel>
        
        <!-- PANEL2 PARA COLETAR OS DETALHES DE ENDEREÇO-->
        <asp:Panel ID="Panel2" runat="server">
            <div class ="container_endereco">
                <h2>Detalhes do endereço</h2>
                    <!-- CAMPO: ENDEREÇO -->
                    <asp:Label ID="lblEndereco" runat="server" text="Endereço: "></asp:Label>
                    <asp:TextBox ID="txtEndereco" runat="server" />
                    <!-- VERIFICA SE O CAMPO FOI PREENCHIDO -->
                    <asp:RequiredFieldValidator 
                        ID="rfvEndereco" runat="server" ForeColor="Red" 
                        ControlToValidate="txtEndereco" ErrorMessage="Endereço é obrigatório." 
                    />
                    <!-- VERIFICA SE O CAMPO ESTÁ PREENCHIDO APENAS COM CARACTERES -->
                    <asp:RegularExpressionValidator 
                        ID="revEndereco" runat="server" ForeColor="Red" 
                        ControlToValidate="txtEndereco" ValidationExpression="^[a-zA-Z\s]*$" 
                        ErrorMessage="O campo Endereço deve conter apenas letras e espaços." Cssclas ="validator"
                     />

                
                    <br/>
                    <!-- CAMPO: CIDADE -->
                    <asp:Label ID="lblCidade" runat="server" text="Cidade: "></asp:Label>
                    <asp:TextBox ID="txtCidade" runat="server" />
                    <!-- VERIFICA SE O CAMPO FOI PREENCHIDO -->
                    <asp:RequiredFieldValidator 
                        ID="rfvCidade" runat="server" ForeColor="Red" 
                        ControlToValidate="txtCidade" ErrorMessage="Cidade é obrigatório." 
                        />
                    <!-- VERIFICA SE O CAMPO ESTÁ PREENCHIDO APENAS COM CARACTERES -->
                    <asp:RegularExpressionValidator 
                        ID="revCidade" runat="server" ForeColor="Red" 
                        ControlToValidate="txtCidade" ValidationExpression="^[a-zA-Z\s]*$" 
                        ErrorMessage="O campo Cidade deve conter apenas letras e espaços." Cssclas ="validator"
                     />

                    <br/>
                    <!-- CAMPO: CEP -->
                    <asp:Label ID="lblCep" runat="server" text="CEP: "></asp:Label>
                    <asp:TextBox ID="txtCep" runat="server" />
                    <!-- VERIFICA SE O CAMPO FOI PREENCHIDO -->
                    <asp:RequiredFieldValidator 
                        ID="rfvCep" runat="server" ForeColor="Red" 
                        ControlToValidate="txtCep" ErrorMessage="CEP é obrigatório." 
                    />
                    <!-- VERIFICA A VALIDAÇÃO DO CEP -->
                    <asp:RegularExpressionValidator 
                        ID="revCep" runat="server" ForeColor="Red" 
                        ControlToValidate="txtCep" ValidationExpression="^[0-9]{8}$" 
                        ErrorMessage="CEP invalido." 
                     />
                    <!-- BOTÃO QUE DIRECIONA PARA O PANEL1 - INFORMAÇOES PESSOAIS -->
                    <br/>
                    <asp:Button 
                        class ="btnVoltar" ID="btnVoltar" runat="server" 
                        Text="Voltar" CausesValidation="false" OnClick="btnVoltar_Click" 
                     />
                    <!-- BOTÃO QUE DIRECIONA PARA O PAINEL3 - ARÉA DE LOGIN -->
                    <asp:Button 
                        class ="btnProximo" ID="btnProximo2" runat="server" 
                        Text="Próximo" OnClick="btnProximo2_Click" 
                     />
                </div>
            </asp:Panel>

        <!-- PANEL3: ARÉA DE LOGIN -->
        <asp:Panel ID ="Panel3" runat ="server">
            <div class = "container_login">
                <h2>Aréa de login</h2>
                    <!-- CAMPO: USUARIO -->
                    <asp:Label ID = "lblUsuario" runat = "server" Text = "Usuário: "></asp:Label>
                    <asp:TextBox ID = "txtUsuario" runat ="server" />
                    <!-- VERIFICA SE O CAMPO USUARIO FOI PREENCHIDO -->
                    <asp:RequiredFieldValidator 
                        ID="rfvUsuario" runat="server" ForeColor="Red" 
                        ControlToValidate="txtUsuario" ErrorMessage="Por favor, insira o nome de usuário." 
                        />
                    <br/>
                    <!-- CAMPO: SENHA -->
                    <asp:Label ID = "lblSenha" runat ="server" Text ="Senha: "></asp:Label>
                    <asp:TextBox ID = "txtSenha" runat ="server" TextMode="Password" />
                    <!-- VERIFICA SE O CAMPO SENHA FOI PREENCHIDO -->
                    <asp:RequiredFieldValidator 
                        ID="rfvSenha" runat="server"  ControlToValidate="txtSenha" 
                        ErrorMessage="Por favor, insira a senha." ForeColor="Red" />
                    <br/>
                    <!-- BOTÃO QUE DIRECIONA PARA O PANEL2: DETALHES DO ENDEREÇO -->
                    <asp:Button 
                        class ="btnVoltar" ID="btnVoltar2" runat="server" 
                        Text="Voltar" CausesValidation="false" OnClick="btnVoltar2_Click" />
                    <!-- BOTÃO QUE DIRECIONA PARA O PANEL4 ONDE O USARIO VAI RELIZAR A VERIFIÇÃO DAS INFORMAÇÕES -->
                    <asp:Button 
                        class ="btnVerificar" ID="btnVerificar" runat="server" 
                        Text="Verificar" OnClick="btnVerificar_Click" />
                </div>
          </asp:Panel>

        <!-- PANEL4 ONDE O ÚSUARIO PODERA FAZER A REVIEW DAS INFORMAÇÕES E PODER CONFIRMAR O ENVIO -->
    <asp:Panel ID="Panel4" runat="server">
        <div class="container_review">
            <h2>Revisão das Informações</h2>
                <!-- NOME -->
                <asp:Label ID="lblReviewNome" runat="server" />
                <br/>
                <!-- SOBRONOME -->
                <asp:Label ID="lblReviewSobrenome" runat="server" />
                <br/>
                <!-- GENERO -->
                <asp:Label ID="lblReviewGenero" runat="server" />
                <br/>
                <!-- CELULAR -->
                <asp:Label ID="lblReviewCelular" runat="server" />
                <br/>
                <!-- ENDERECO -->
                <asp:Label ID="lblReviewEndereco" runat="server" />
                <br/>
                <!-- CIDADE -->
                <asp:Label ID="lblReviewCidade" runat="server" />
                <br/>
                <!-- CEP -->
                <asp:Label ID="lblReviewCep" runat="server" />
                <br/>
                <!-- USUARIO -->
                <asp:Label ID="lblReviewUsuario" runat="server" />
                <br/>
                <!-- SENHA -->
                <asp:Label ID = "lblReviewSenha" runat ="server"/>
                <!-- BOTÕES -->
                <br />
                <asp:Button class="btnVoltar" ID="Button2" runat="server" Text="Voltar" CausesValidation="false" OnClick="btnVoltar3_Click" />
                <asp:Button class="btnEnviar" ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
                <!-- SE O APÓS FAZER A VERIFICAÇÃO VER QUE ESTÁ TUDO CERTO, PODERA CLICAR EM ENVIAR ONDE A MENSAGEM DE ENVIO VAI APARECER -->
                <asp:Label ID="lblSuccess" runat="server" Visible="false" ForeColor="Green" />

    </div>
</asp:Panel>

    </form>

<!-- Estilizando com o CSS-->
<style>

    /* Importando a fonte roboto */
    @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap');

    /* Variaveis com cor */
    :root {
        --bg-color: #f4f4f4;
        --text-color: #333;
        --button-color: #4caf50;
        --button-color-hover: #45a049;
    }

    /* Estilo geral */
    body {
        font-family: 'Roboto', sans-serif;
        color: var(--text-color);
        background-color: var(--bg-color);
        margin: 0;
        padding: 0;
    }

    /* Estilizando a area de login, review, endereco e informações */
    .container_login, .container_review, .container_endereco, .container_informacoes {
        width: 100%;
        max-width: 500px;
        margin: 50px auto;
        padding: 30px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        background-color: #fff;
    }

    /* Estilizando os botões voltar, proximo, verificar e enviar */
    .btnVoltar, .btnProximo, .btnVerificar, .btnEnviar {
        background-color: var(--button-color);
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    /* Estilizando os botões com o hover */
    .btnVoltar:hover, .btnProximo:hover, .btnVerificar:hover, .btnEnviar:hover {
        background-color: var(--button-color-hover);
    }

    /* Estilizando input */
    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ddd;
        border-radius: 5px;
        box-sizing: border-box;
    }



    /* Estilizando textbox e o dropdown */
    #ddlGenero, #txtNome, #txtSobrenome, #txtUsuario, #txtSenha, #txtCelular, #txtCidade, #txtCep, #txtEndereco {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ddd;
        border-radius: 5px;
        box-sizing: border-box;
        font-family: 'Roboto', sans-serif;
        color: var(--text-color);
        background-color: var(--bg-color);
    }

    /* REGULAR EXPRESSION VALIDATOR */
    #revNome, #revSobrenome, #revUsuario, #revCelular, #revCidade, #revCep, #revEndereco{
        display: flex;
        position: absolute;
        margin-top: -20px;
    }
    </style>
  </body>
</html>

