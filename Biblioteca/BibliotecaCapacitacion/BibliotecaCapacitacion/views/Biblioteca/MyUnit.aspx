<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyUnit.aspx.cs" Inherits="BibliotecaCapacitacion.views.Biblioteca.MyUnit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4 py-1">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <h2 >Mis Archivos</h2>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xl-12">
                        <div class="card mb-4">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-md-6 col-lg-6">
                                       <i class="fa fa-history"></i>
                                        Archivos
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                  <%--se debe ingresar logica de reciente.--%>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
                <%-- <div class="row">
                    <div class="col-xl-8">
                        <div class="card mb-4">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-md-6 col-lg-6">
                                       <i class="fa fa-file"></i>
                                        Cantidad de Archivos
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                  <%--se debe ingresar logica de graficos.--%>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>--%>
            </div>
        </main>

        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid px-4">
                <div class="d-flex align-items-center justify-content-between small">

                    <div>
                    </div>
                </div>
            </div>
        </footer>
    </div>

    <script type="text/javascript" src="js/biblioteca.js"></script>
</asp:Content>
