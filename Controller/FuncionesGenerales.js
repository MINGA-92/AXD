
//Función para consultar Lista Habitacion
function ObtenerListaHabitacion(){
    getData('/ConsultarTipoHabitacion').then((Respuesta) =>{
        ArrayResultado = Respuesta.map((El) => El.HAB_TIPO);
        //console.log(ArrayResultado);
        Options = "";
        Contador= 0;
        ArrayResultado.forEach(element =>{
            Options += `<option value="${element}">${ArrayResultado[Contador]}</option>`
            Contador= Contador + 1;
        });
        document.getElementById("SelectHabitacion").innerHTML = Options;
    })
}
ObtenerListaHabitacion();



function Reservar(IdAbonado){

    console.log("IdAbonado: ", IdAbonado);
    alert("Aqui se desplegaria un modal donde se realizaria la selecion de fechas, el calculo de la tarifa y finalmente la reservacion");

}

