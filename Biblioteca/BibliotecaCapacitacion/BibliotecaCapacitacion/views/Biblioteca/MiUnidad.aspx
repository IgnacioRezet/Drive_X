<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MiUnidad.aspx.cs" Inherits="BibliotecaCapacitacion.views.Unidad.MiUnidad" %>


<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

    <link href="css/MiUnidad.css" rel="stylesheet" />

    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <div id="layoutSidenav_content">
        <div class="container-fluid px-4 py-1">
            <div class="row">
                <div id="idtabImg" class="col-md-4 border-right">
                    <a href="#optimization" aria-controls="optimization" onclick="tab(0)" role="tab" data-toggle="tab">
                        <div class="cards">
                            <div class="first bg-white p-4 text-center">
                                <img src="img/img50.png" alt="img" />
                                <p class="idparrafo">Imagenes</p>

                            </div>
                        </div>
                    </a>
                </div>
                <div id="idtabVideo" class="col-md-4 border-right ">
                    <a href="#discover" aria-controls="discover" onclick="tab(1)" role="tab" data-toggle="tab">
                        <div class="cards">
                            <div class=" second bg-white p-4 text-center">
                                <img src="img/video50.png" alt="img" />
                                <p class="idparrafo">Videos</p>

                            </div>
                        </div>
                    </a>
                </div>
                <div id="idtabDocument" class="col-md-4">
                    <a href="#reporting" aria-controls="reporting" onclick="tab(2)" role="tab" data-toggle="tab">
                        <div class="cards">
                            <div class=" third bg-white p-4 text-center">
                                <img src="img/document50.png" alt="img" />
                                <p class="idparrafo">Documentos</p>

                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12">
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="optimization">
                            <div class="design-process-content">
                                <h5 class="semi-bold">Imagenes</h5>

                                <div class="row">
                                    <div class="image-upload-wrap">
                                        <input class="file-upload-input" type='file' onchange="readURL(this);" accept="image/*" />
                                        <div class="drag-text">
                                            <h3>Drag and drop a file or select add Image</h3>
                                        </div>
                                    </div>

                                    <div onclick="$('.file-upload-input').trigger( 'click' )">hola</div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane " id="discover">
                            <div class="design-process-content">
                                <h5 class="semi-bold">Videos</h5>

                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="reporting">
                            <div class="design-process-content">
                                <h5 class="semi-bold">Documentos</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function tab(num) {
            if (num == 0) {
                $("#idtabImg").removeAttr('class');
                $("#idtabImg").attr('class', 'col-md-4 border-right border-secondary ');

                $("#idtabVideo").removeAttr('class');
                $("#idtabVideo").attr('class', 'col-md-4 border-right border-bottom border-secondary ');

                $("#idtabDocument").removeAttr('class');
                $("#idtabDocument").attr('class', 'col-md-4  border-bottom border-secondary ');
            } else if (num == 1) {
                $("#idtabVideo").removeAttr('class');
                $("#idtabVideo").attr('class', 'col-md-4 border-right border-secondary ');

                $("#idtabImg").removeAttr('class');
                $("#idtabImg").attr('class', 'col-md-4 border-right border-bottom border-secondary ');

                $("#idtabDocument").removeAttr('class');
                $("#idtabDocument").attr('class', 'col-md-4  border-bottom border-secondary ');
            } else if (num == 2) {
                $("#idtabDocument").removeAttr('class');
                $("#idtabDocument").attr('class', 'col-md-4  border-secondary');

                $("#idtabVideo").removeAttr('class');
                $("#idtabVideo").attr('class', 'col-md-4 border-right border-bottom border-secondary ');

                $("#idtabImg").removeAttr('class');
                $("#idtabImg").attr('class', 'col-md-4 border-right border-bottom border-secondary ');
            }
        }
    </script>

</asp:Content>
