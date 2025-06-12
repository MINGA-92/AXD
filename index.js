
const express= require('express');
const Constructor= express();
const path= require('path');
const { json }= require('express');


Constructor.set('view engine', 'ejs');

//Constructor.use('/', express.static(__dirname + '/Img'));
Constructor.use(express.static(path.join(__dirname, 'Controller')));
Constructor.use(express.urlencoded({extended:false}));
Constructor.use(express(json));


//Constructor De Conexion
Constructor.listen(8080, function(Peticion, Respuesta){
    console.log("Aplicacion Corriendo En http://localhost:8080         ヾ(⌐■_■)ノ♪ ");
});




const Conexion= require('./Controller/Conexion');

//Redireccion a Ruta Principal
Constructor.get('/', (Peticion, Respuesta)=>{

    //Consulta si existen usuarios registrados
    Conexion.query('SELECT * FROM db_axd.tbl_habitaciones, db_axd.tbl_hoteles WHERE ID_HOTEL = HAB_FK_ID_HOTEL;', (error, Resultados, fields)=>{
        if(error){
            console.log("☠ eRrOr / En La Consulta");
            throw error;
        }else{
            //console.log("Resultados => ", Resultados);
            Respuesta.render('Principal', {Resultados:Resultados});
        };
    });
    
});



//* Listas Desplegables */
Constructor.get('/ConsultarTipoHabitacion', (Peticion, Respuesta)=>{
    Consulta= "SELECT DISTINCT HAB_TIPO FROM db_axd.tbl_habitaciones;"
    Conexion.query(Consulta, (error, ResultadosTipoHabitacion, fields)=>{
        if(error){
            console.log("☠ eRrOr / En La Consulta De Tipo Documento");
            throw error;
        }else{
            //console.log(ResultadosTipoHabitacion);
            Respuesta.json(ResultadosTipoHabitacion);
        };
    });
});

