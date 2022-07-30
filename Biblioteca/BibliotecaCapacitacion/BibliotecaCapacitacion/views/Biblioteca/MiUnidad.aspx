<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MiUnidad.aspx.cs" Inherits="BibliotecaCapacitacion.views.Unidad.MiUnidad" %>


<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

    <link href="css/MiUnidad.css" rel="stylesheet" />

    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>

    <div id="layoutSidenav_content">
        <div class="container-fluid px-4 py-1">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h2>Mi Contenido</h2>
                </div>
            </div>

            <div class="row">
                <div class="col-xl-12"></div>
                <div class="col-md-4" align="center">
                    <a href="#optimization" aria-controls="optimization" role="tab" data-toggle="tab">
                        <img src="img/img48.png" alt="img" />
                        <p>Optimization</p>
                    </a>
                </div>
                <div class="col-md-4" align="center">
                    <a href="#discover" aria-controls="discover" role="tab" data-toggle="tab"><i class="fa fa-search" aria-hidden="true"></i>
                        <p>Discover</p>
                    </a>
                </div>
                <div class="col-md-4" align="center">
                    <a href="#reporting" aria-controls="reporting" role="tab" data-toggle="tab"><i class="fa fa-clipboard" aria-hidden="true"></i>
                        <p>Reporting</p>
                    </a>
                </div>

            </div>
            <div class="row">
                <div class="col-xl-12">
                    <!-- design process steps-->
                    <!-- Nav tabs -->
                    <%--  <ul class="nav nav-tabs process-model more-icon-preocess" role="tablist">
                        <li role="presentation" class="active"><a href="#discover" aria-controls="discover" role="tab" data-toggle="tab"><i class="fa fa-search" aria-hidden="true"></i>
                            <p>Discover</p>
                        </a></li>
                        <li role="presentation"><a href="#optimization" aria-controls="optimization" role="tab" data-toggle="tab"><i class="fa fa-qrcode" aria-hidden="true"></i>
                            <p>Optimization</p>
                        </a></li>
                        <li role="presentation"><a href="#reporting" aria-controls="reporting" role="tab" data-toggle="tab"><i class="fa fa-clipboard" aria-hidden="true"></i>
                            <p>Reporting</p>
                        </a></li>
                    </ul>--%>
                    <!-- end design process steps-->
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="discover">
                            <div class="design-process-content">
                                <h3 class="semi-bold">Discovery</h3>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincid unt ut laoreet dolore magna aliquam erat volutpat</p>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="strategy">
                            <div class="design-process-content">
                                <h3 class="semi-bold">Strategy</h3>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincid unt ut laoreet dolore magna aliquam erat volutpat</p>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="optimization">
                            <div class="design-process-content">
                                <h3 class="semi-bold">Optimization</h3>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincid unt ut laoreet dolore magna aliquam erat volutpat</p>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="content">
                            <div class="design-process-content">
                                <h3 class="semi-bold">Content</h3>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincid unt ut laoreet dolore magna aliquam erat volutpat</p>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="reporting">
                            <div class="design-process-content">
                                <h3>Reporting</h3>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincid unt ut laoreet dolore magna aliquam erat volutpat. </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script>
        $(function () {
            $('a[title]').tooltip();
        });
</script>
</asp:Content>
