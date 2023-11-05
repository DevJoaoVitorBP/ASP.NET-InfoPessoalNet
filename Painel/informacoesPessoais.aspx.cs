using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Painel
{

    public partial class informacoesPessoais : System.Web.UI.Page
    {
        //Quando a pagína carregar, o painel 1 será mostrado ocultado todo o resto
        protected void Page_Load(object sender, EventArgs e)
        {
            // Se a página não for um postback, ou seja, se for a primeira vez que a página é carregada
            if (!IsPostBack)
            {
                // Mostra o primeiro painel e esconde os demais
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
            }
        }

        // Quando o botão "Próximo" do primeiro painel é clicado
        protected void btnProximo1_Click(object sender, EventArgs e)
        {
            // Se todas as validações na página foram bem-sucedidas
            if (Page.IsValid)
            {
                // Esconde o primeiro painel e mostra o segundo
                Panel1.Visible = false;
                Panel2.Visible = true;
            }
        }

        // Quando o botão "Voltar" do segundo painel é clicado
        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            // Esconde o segundo painel e mostra o primeiro
            Panel2.Visible = false;
            Panel1.Visible = true;
        }

        // Quando o botão "Próximo" do segundo painel é clicado
        protected void btnProximo2_Click(object sender, EventArgs e)
        {
            // Se todas as validações na página foram bem-sucedidas
            if (Page.IsValid)
            {
                // Esconde o segundo painel e mostra o terceiro
                Panel2.Visible = false;
                Panel3.Visible = true;
            }
        }

        // Quando o botão "Voltar" do terceiro painel é clicado
        protected void btnVoltar2_Click(object sender, EventArgs e)
        {
            // Esconde o terceiro painel e mostra o segundo
            Panel3.Visible = false;
            Panel2.Visible = true;
        }

        // Quando o botão "Verificar" do terceiro painel é clicado
        protected void btnVerificar_Click(object sender, EventArgs e)
        {
            // Se todas as validações na página foram bem-sucedidas
            if (Page.IsValid)
            {
                // Preenche os rótulos de revisão com as informações inseridas pelo usuário
                lblReviewNome.Text = "Nome: " + txtNome.Text;
                lblReviewSobrenome.Text = "Sobrenome: " + txtSobrenome.Text;
                lblReviewGenero.Text = "Gênero: " + ddlGenero.SelectedValue;
                lblReviewCelular.Text = "Celular: " + txtCelular.Text;
                lblReviewEndereco.Text = "Endereço: " + txtEndereco.Text;
                lblReviewCidade.Text = "Cidade: " + txtCidade.Text;
                lblReviewCep.Text = "CEP: " + txtCep.Text;
                lblReviewUsuario.Text = "Usuário: " + txtUsuario.Text;
                lblReviewSenha.Text = "Senha: " + txtSenha.Text;

                // Esconde o segundo e terceiro painéis e mostra o quarto
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = true;
            }
        }

        // Quando o botão "Voltar" do quarto painel é clicado
        protected void btnVoltar3_Click(object sender, EventArgs e)
        {
            // Esconde o quarto painel e mostra o terceiro
            Panel4.Visible = false;
            Panel3.Visible = true;
        }

        // Quando o botão "Enviar" é clicado, a mensagem de sucesso vai aparecer
        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            // Se todas as validações na página foram bem-sucedidas
            if (Page.IsValid)
            {
                // Mostra uma mensagem de sucesso
                lblSuccess.Visible = true;
                lblSuccess.Text = "Informações enviadas com sucesso!";
            }
        }
    }
}