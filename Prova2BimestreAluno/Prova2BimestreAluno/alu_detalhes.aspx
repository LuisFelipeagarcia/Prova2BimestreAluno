<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="alu_detalhes.aspx.cs" Inherits="Prova2BimestreAluno.alu_detalhes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center text-primary">Aluno:</div>
    <div class="container">
            <div class="row" style="margin-top:15px">
                <div class="col-md-1">
                    <label>ID: </label>
                    <asp:TextBox ID="txtID" enabled="false"  runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label>Nome:</label>
                    <asp:RequiredFieldValidator ID="rfvNome" runat="server" ControlToValidate="txtNome" ErrorMessage="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtNome" enabled="false"  runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Sexo: </label>
                    <asp:DropDownList ID="ddlSexo" enabled="false" runat="server" CssClass="form-control">
                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                        <asp:ListItem Value="F">Feminino</asp:ListItem>
                        <asp:ListItem Value="N">Outro/Prefiro não informar</asp:ListItem>
                    </asp:DropDownList>
                </div>
                
                <div class="col-md-4">
                    <label>RA: </label>
                    <asp:RequiredFieldValidator ID="rfvRA" ControlToValidate="txtRA" ErrorMessage="*" ForeColor="Red" runat="server" ></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtRA" enabled="false"  CssClass="form-control" MaxLength="50" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="margin-top:15px">
                <div class="col-md-3">
                    <label>Data de Nascimento: </label>
                    <asp:TextBox ID="txtDataNasc" enabled="false"  CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Data Matricula:</label>
                    <asp:RequiredFieldValidator ID="rfvIngress" ControlToValidate="txtIngress" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtIngress"  enabled="false" CssClass="form-control"  MaxLength="15" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Curso:</label>
                    <asp:RequiredFieldValidator ID="rfvCurso" ControlToValidate="txtCurso" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtCurso" enabled="false"  CssClass="form-control" MaxLength="15" runat="server"></asp:TextBox>
                </div>
                
                <div class="col-md-3">
                    <label>Email: </label>
                    <asp:RequiredFieldValidator ID="rfvEmail" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtEmail" enabled="false" CssClass="form-control" MaxLength="200" runat="server"></asp:TextBox>
                </div>
                               
            </div>

            <div class="row" style="margin-top:15px">
                 <div class="col-md-5">
                    <label>Logradouro: </label>
                    <asp:RequiredFieldValidator ID="rfvLog" ControlToValidate="txtLog" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtLog" enabled="false" CssClass="form-control" MaxLength="200" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <label>Número: </label>
                    <asp:RequiredFieldValidator ID="rfvNum" ControlToValidate="txtNum" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtNum" enabled="false" CssClass="form-control" MaxLength="5" runat="server" ></asp:TextBox>
                </div>
                <div class="col-md-5">
                <label>Complemento: </label>
                <asp:TextBox ID="txtComp" enabled="false" CssClass="form-control" MaxLength="200" runat="server"></asp:TextBox>
            </div>
                
                
            </div>

        <div class="row" style="margin-top:15px">
            <div class="col-md-5">
                    <label>Bairro:</label>
                    <asp:RequiredFieldValidator ID="rfvBairro" ControlToValidate="txtBairro" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtBairro" enabled="false" CssClass="form-control" MaxLength="200" runat="server"></asp:TextBox>
                </div>
            <div class="col-md-5">
                    <label>Cidade: </label>
                    <asp:RequiredFieldValidator ID="rfvCidade" ControlToValidate="txtCidade" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtCidade" enabled="false" MaxLength="200" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <label>UF: </label>
                    <asp:RequiredFieldValidator ID="rfvUF" ControlToValidate="txtUF" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtUF" enabled="false" CssClass="form-control" MaxLength="2" runat="server"></asp:TextBox>
                </div>
            
        </div>

            <div class="row" style="margin-top:15px">
                <div class="col-md-6">
                    <asp:Button ID="btnVoltar" CssClass="btn btn-primary" runat="server"  Text="Voltar" OnClick="btnVoltar_Click" />
                </div> 
                
            </div>
        </div>
</asp:Content>
