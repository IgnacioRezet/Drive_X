


function RegistarUsuario() {

    var txtRut = $("#txtRut").val();
    var rutSinGuion = txtRut.split('-');
    var txtNombre = $("#txtNombre").val();
    var txtApellidoP = $("#txtApellidoP").val();
    var txtApellidoM = $("#txtApellidoM").val();
    var txtFecha = $("#txtFecha").val();
    var txtDireccion = $("#txtDireccion").val();
    var txtCorreo = $("#txtCorreo").val();
    var txtPassword = $("#txtPassword").val();
    var txtPasswordRepeat = $("#txtPasswordRepeat").val();
   
    
    if (txtRut == "") {
        init_notificacion('error', 'Error!', "Rut Vacio!");
        return;
    }
    //} else {
    //    if (ValidaRut(rutSinGuion[0] + rutSinGuion[1],1) == false) {
    //        init_notificacion('error', 'Error!', "Rut no valido!");
    //        return;
    //    }
    //}
    if (txtNombre == "") {
        init_notificacion('error', 'Error!', "Nombre Vacio!");
        return;
    }
    if (txtApellidoP=="") {
        init_notificacion('error', 'Error!', "Apellido Paterno Vacio!");
        return;
    }
    if (txtApellidoM=="") {
        init_notificacion('error', 'Error!', "Apellido Materno Vacio!");
        return;
    }
    if (txtDireccion == "") {
        init_notificacion('error', 'Error!', "Dirección Vacia!");
        return;
    }
    if (txtFecha == "" || txtFecha=="dd/mm/aaaa") {
        init_notificacion('error', 'Error!', "Fecha Vacia!");
        return;
    }
    if (txtCorreo="") {
        init_notificacion('error', 'Error!', "Correo Vacio!");
        return;
    }
    if (txtPassword == "") {
        init_notificacion('error', 'Error!', "Password Vacio!");
        return;
    } else {
        if (txtPasswordRepeat != txtPassword) {

            init_notificacion('error', 'Error!', "Password no coincide!");
            return;
        }
    }
    var datos = {
        acc: 'RegistrarUserNuevo',
        rut: txtRut,
        nombre: txtNombre,
        apellidoP: txtApellidoP,
        apellidoM: txtApellidoM,
        fechaN: txtFecha,
        direcc: txtDireccion,
        correo: txtCorreo,
        pass: txtPassword       
    };

    $.ajax({
        url: "../handler/handler_registrar.ashx",
        type: "post",
        data: datos,
        datatype: 'json',
        success: function (data) {
            
            if (data == "1") {                
                init_notificacion('success', 'Correcto!', "Usuario Registrado Correctamente");
                Limpiar();
            } else {
                init_notificacion('error', 'Error!', "Usuario ya existe!");
            }
        },
        error: function (err) {
            init_notificacion('error', 'Lipigas Informa!', "No se ha logrado eliminar este adjunto!");
        }
    });
}
function Limpiar() {
    $("#txtRut").val("");
    $("#txtNombre").val("");
    $("#txtApellidoP").val("");
    $("#txtApellidoM").val("");
    $("#txtFecha").val("");
    $("#txtDireccion").val("");
    $("#txtCorreo").val("");
    $("#txtPassword").val("");
    $("#txtPasswordRepeat").val("");
}

function ValidaRut(rut,estado) {
    // Si no cumple con el mínimo ej. (n.nnn.nnn)
    var valor = rut.value;
    if (estado==0) {
        valor = valor.replace('-', '');
    }
    

    // Aislar Cuerpo y Dígito Verificador
    cuerpo = valor.slice(0, -1);
    dv = valor.slice(-1).toUpperCase();
    if (cuerpo.length < 7) { init_notificacion('error', 'Error!', "rut incompleto!"); return false; }

    // Calcular Dígito Verificador
    suma = 0;
    multiplo = 2;

    // Para cada dígito del Cuerpo
    for (i = 1; i <= cuerpo.length; i++) {

        // Obtener su Producto con el Múltiplo Correspondiente
        index = multiplo * valor.charAt(cuerpo.length - i);

        // Sumar al Contador General
        suma = suma + index;

        // Consolidar Múltiplo dentro del rango [2,7]
        if (multiplo < 7) { multiplo = multiplo + 1; } else { multiplo = 2; }

    }

    // Calcular Dígito Verificador en base al Módulo 11
    dvEsperado = 11 - (suma % 11);

    // Casos Especiales (0 y K)
    dv = (dv == 'K') ? 10 : dv;
    dv = (dv == 0) ? 11 : dv;

    // Validar que el Cuerpo coincide con su Dígito Verificador
    if (dvEsperado != dv) { init_notificacion('error', 'Error!', "Rut no valido!"); return false; }

    // Si todo sale bien, eliminar errores (decretar que es válido)
    return true;
}

function checkRut(rut) {
    // Despejar Puntos
    var valor = rut.value.replace('.', '');
    // Despejar Guión
    valor = valor.replace('-', '');

    // Aislar Cuerpo y Dígito Verificador
    cuerpo = valor.slice(0, -1);
    dv = valor.slice(-1).toUpperCase();

    // Formatear RUN
    rut.value = cuerpo + '-' + dv

   
}

function init_notificacion(tipo, titulo, texto) {
    PNotify.removeAll();
    new PNotify({
        title: titulo,
        type: tipo,
        text: texto,
        nonblock: { nonblock: false },
        styling: 'bootstrap3',
        hide: true,
        before_close: function (PNotify) {
            PNotify.queueRemove();
            return true;
        }
    });
}

