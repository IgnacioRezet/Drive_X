////function AccederLogin() {
    
////    var txtcorreo = $("#txtCorreo").val();
////    var txtpass = $("#txtPass").val();
////    if (txtcorreo=="") {
////        init_notificacion('error', 'Error!', "correo vacio!");
////        return;
////    }
////    if (txtpass == "") {
////        init_notificacion('error', 'Error!', "password vacio!");
////        return;
////    }
////    var datos = {
////        acc: 'AccederLogin',
////        correo: txtcorreo,
////        pass: txtpass        
////    };

////    $.ajax({
////        url: "../handler/handler_login.ashx",
////        type: "post",
////        data: datos,
////        datatype: 'json',
////        success: function (data) {
           
////            if (data == "1") {

               
                
////            } else {
////                init_notificacion('error', 'Error!', "Contraseña o correo incorrecto!");
////            }
////        },
////        error: function (err) {
////            init_notificacion('error', 'Lipigas Informa!', "No se ha logrado eliminar este adjunto!");
////        }
////    });
////}



