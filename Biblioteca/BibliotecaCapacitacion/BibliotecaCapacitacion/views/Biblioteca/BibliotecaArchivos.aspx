<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BibliotecaArchivos.aspx.cs" Inherits="BibliotecaCapacitacion.views.BibliotecaArchivos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <style>
        .modal-body:not(.two-col) {
            padding: 0px
        }

        .glyphicon {
            margin-right: 5px;
        }

        .glyphicon-new-window {
            margin-left: 5px;
        }

        .modal-body .radio, .modal-body .checkbox {
            margin-top: 0px;
            margin-bottom: 0px;
        }

        .modal-body .list-group {
            margin-bottom: 0;
        }

        .margin-bottom-none {
            margin-bottom: 0;
        }

        .modal-body .radio label, .modal-body .checkbox label {
            display: block;
        }

        .modal-footer {
            margin-top: 0px;
        }

        @media screen and (max-width: 325px) {
            .btn-close {
                margin-top: 5px;
                width: 100%;
            }

            .btn-results {
                margin-top: 5px;
                width: 100%;
            }

            .btn-vote {
                margin-top: 5px;
                width: 100%;
            }
        }

        .modal-footer .btn + .btn {
            margin-left: 0px;
        }

        .progress {
            margin-right: 10px;
        }
    </style>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4 py-1">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <h2 >Mi Contenido</h2>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xl-12">
                        <div class="card mb-4">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-md-6 col-lg-6">
                                       <i class="fa fa-history"></i>
                                        Reciente
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
                 <div class="row">
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

                </div>
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
