<?
session_start();
if (empty($_SESSION["usuario"])) {?>
<script type="text/javascript">
window.location = "http://restauranteaula.com/app/app/#/";
</script>
<?
}
?>
<!DOCTYPE html>
<html lang="en" ng-app="mtek">
  <head>
    <title>Restaurante El Aula</title>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
    <link rel="shortcut icon" href="images/icons/favicon.ico"/>
    <link rel="apple-touch-icon" href="images/icons/favicon.png"/>
    <link rel="apple-touch-icon" sizes="72x72" href="images/icons/favicon-72x72.png"/>
    <link rel="apple-touch-icon" sizes="114x114" href="images/icons/favicon-114x114.png"/>
    <!-- Loading css-->
    <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,700"/>
    <link type="text/css" rel="stylesheet" href="global/vendors/font-awesome/css/font-awesome.min.css"/>
    <link type="text/css" rel="stylesheet" href="global/vendors/simple-line-icons/simple-line-icons.css"/>
    <link type="text/css" rel="stylesheet" href="global/vendors/bootstrap/css/bootstrap.min.css"/>
    <link type="text/css" rel="stylesheet" href="global/vendors/animate.css/animate.css"/>
    <link type="text/css" rel="stylesheet" href="global/vendors/iCheck/skins/all.css"/>
    <link type="text/css" rel="stylesheet" href="assets/vendors/bootstrap-switch/css/bootstrap-switch.css"/>
    <link type="text/css" rel="stylesheet" href="assets/vendors/google-code-prettify/prettify.css"/>
    <link type="text/css" rel="stylesheet" href="" id="font-layout"/>
    <link type="text/css" rel="stylesheet" href="global/css/core.css"/>
    <link type="text/css" rel="stylesheet" href="assets/css/system.css"/>
    <link type="text/css" rel="stylesheet" href="assets/css/system-responsive.css"/>
    <link type="text/css" rel="stylesheet" href="assets/vendors/jquery-toastr/toastr.css"/>
    <!-- Loading Angular libs-->
    <script src="global/js/jquery-1.10.2.min.js"></script>
    <script src="js/libs/angular.js"></script>
    <script src="js/libs/angular-route.js"></script>
    <script src="js/libs/angular-ui-router.js"></script>
    <script src="js/libs/ocLazyLoad.js"></script>
    <script src="js/libs/ui-bootstrap.js"></script>
    <!-- Loading jQuery libs-->
    <script src="global/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="global/js/jquery-ui.js"></script>
    <script src="global/vendors/bootstrap/js/bootstrap.min.js"></script>
    <script src="global/vendors/bootstrap-hover-dropdown/bootstrap-hover-dropdown.js"></script>
    <script src="global/js/html5shiv.js"></script>
    <script src="global/js/respond.min.js"></script>
    <script src="global/vendors/metisMenu/jquery.metisMenu.js"></script>
    <script src="global/vendors/slimScroll/jquery.slimscroll.js"></script>
    <script src="global/vendors/iCheck/icheck.min.js"></script>
    <script src="global/vendors/iCheck/custom.min.js"></script>
    <script src="assets/vendors/bootstrap-switch/js/bootstrap-switch.min.js"></script>
    <script src="assets/vendors/jquery-cookie/jquery.cookie.js"></script>
    <script src="assets/vendors/bootstrap-datepaginator/moment.js"></script>
    <script src="assets/vendors/DataTables/media/js/jquery.dataTables.js"></script>
    <script src="assets/vendors/flot-chart/jquery.flot.js"></script>
    <script src="assets/vendors/jquery-jvectormap/jquery-jvectormap-2.0.1.min.js"></script>
    <script src="assets/vendors/jquery-jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="assets/vendors/jquery-toastr/toastr.js"></script>
    <script src="assets/vendors/pace.js"></script>
    <script src="assets/vendors/jquery.PrintArea.js"></script>
    <script type="text/javascript">
    //Reiniciar funciones y ajax de mesas
    function Reini(){
        var Cont ="<div class='row'>";
            Cont+= "<div class='col-sm-4'>";
            Cont+=    "<div class='Opcion' onclick='SepMesas();'><h1>SEPARAR MESAS</h1></div>";
            Cont+=  "</div>"
            Cont+=  "<div class='col-sm-4'>"
            Cont+=    "<div class='Opcion' onclick='MovOrden();'><h1>MOVER ORDEN</h1></div>";
            Cont+=  "</div>";
            Cont+=  "<div class='col-sm-4'>";
            Cont+=    "<div class='Opcion' onclick='SepOrden();'><h1>SEPARAR ORDEN</h1></div>";
            Cont+=  "</div>";
            Cont+="</div>";

            $("#OpcionesOrden .modal-body").hide();
            $("#OpcionesOrden .modal-body").html(Cont);
            $("#OpcionesOrden .modal-body").fadeIn();
    }

    var Ready  =  function(){

      $.get("http://restauranteaula.com/app/app/templates/states/php/cargar_mesas.php")
          .success(function (respuesta) {
    
          $("#AtrasMesas").fadeOut();
          $("#ContPrinci").removeClass("col-lg-9");
          $("#ContPrinci").addClass("col-lg-12");
          $("#ContOrden").fadeOut();
          $("#panel-orden").empty();
          $("#panel-footer").hide();
    
          $("#panel-body").html(respuesta);
    
          $("[rel='tooltip']").tooltip();    
           
          $('.thumbnail').hover(
              function(){
                  $(this).find('.caption').slideDown(250); //.fadeIn(250)
                  $(this).find('img').hide(250);
              },
              function(){
                  $(this).find('.caption').slideUp(250); //.fadeOut(205)
                  $(this).find('img').show(250);
              }   
          ); 
            
          });
    
          $("#Completo").html(0);
    
    };
    //Fin reiniciar funciones y ajax de mesas
    //Separar mesas
    function SepMesas(){
    $("#OpcionesOrden .modal-body").html("Cargando contenido...");

      var Id = $("#IdO").val();

      $.ajax({
        method: "GET",
        url: "templates/states/php/separar_mesas_1.php?Id="+Id
      })
      .done(function(msg) {

        $("#OpcionesOrden .modal-body").html(msg);
        $("#delC").draggable();
        $("#palC").draggable();
      });

      
    }

    function Der(Mesa){

      if($("#Iz"+Mesa).hasClass("Izq")){
          $("#Iz"+Mesa).hide();
          $("#Iz"+Mesa).fadeIn();
          $("#Iz"+Mesa).appendTo("#delC");
          $("#Iz"+Mesa).removeClass("Izq");
          $("#Iz"+Mesa+" i").removeClass("fa-check");
          $("#Iz"+Mesa+" i").css("color","red");
          $("#Iz"+Mesa+" i").addClass("fa-times");
      }else{
        if($("#delC tr").length>1){
          $("#Iz"+Mesa).hide();
          $("#Iz"+Mesa).fadeIn();
          $("#Iz"+Mesa).appendTo("#palC");
          $("#Iz"+Mesa).addClass("Izq");
          $("#Iz"+Mesa+" i").removeClass("fa-times");
          $("#Iz"+Mesa+" i").css("color","green");
          $("#Iz"+Mesa+" i").addClass("fa-check"); 
        }     
      }

    }
   
    function GuardarSepMesas(){
    var Orden           = $("#IdO").val();
    var Activas         = Array();
    var Eliminadas      = Array();
    var Todo            = Array();

    var TotalActivas    = $("#delC tr").length;
    var TotalEliminadas = $("#palC tr").length;

      for(var x=0;x<TotalActivas;x++){

        //alert($("#delC tr:eq("+x+")").attr("id").replace("Iz",""));
        Activas.push($("#delC tr:eq("+x+")").attr("id").replace("Iz",""));
      
      }

      for(var s=0;s<TotalEliminadas;s++){

        //alert($("#delC tr:eq("+x+")").attr("id").replace("Iz",""));
        Eliminadas.push($("#palC tr:eq("+s+")").attr("id").replace("Iz",""));
      
      }

    Todo.push({"Orden"     :Orden});
    Todo.push({"Activas"   :Activas});
    Todo.push({"Eliminadas":Eliminadas});


      $.ajax({
        method: "POST",
        url: "templates/states/php/separar_mesas_2.php",
        data: JSON.stringify(Todo)
      })
      .done(function(msg){
      
      toastr.options = {
      "positionClass": "toast-bottom-right"
      };
      toastr.success("Cambios guardados correctamente.").delay(1500).fadeOut(1000);

        setTimeout('Reini()',10);
        var URLactual = window.location;
        var sr        = URLactual.toString().split("/");
        if(sr[6]=="M"){
          $("#AtrasMesas").click();
          setTimeout(Ready,100);
        }
      });

    }
    //Fin de separar mesas





    //Mover orden
    function MovOrden(){
    $("#OpcionesOrden .modal-body").html("Cargando contenido...");

      var Id = $("#IdO").val();

      $.ajax({
        method: "GET",
        url: "templates/states/php/mover_orden_1.php?Id="+Id
      })
      .done(function(msg) {
      $("#OpcionesOrden .modal-body").html(msg);
      });

    };
    function selM(Mesa){

    $("#MIo").val(Mesa);
    $("#IdTTT").val(Mesa);

    $(".mes").removeClass("seli");

    $("#Ms"+Mesa+" .mes").addClass("seli");

    $("#BtnGuardaMov").prop("disabled",false);
    }

    function GuardaMovOrden(){

    var Id   = $("#IdO").val();
    var Mesa = $("#MIo").val();
      $.ajax({
        method: "GET",
        url: "templates/states/php/mover_orden_2.php?Id="+Id+"&Mesa="+Mesa
      })
      .done(function(msg) {
        toastr.options = {
        "positionClass": "toast-bottom-right"
        };
        toastr.success("Cambios guardados correctamente.").delay(1500).fadeOut(1000);

            setTimeout('Reini()',10);
            var URLactual = window.location;
            var sr        = URLactual.toString().split("/");
            if(sr[6]=="M"){
              $("#AtrasMesas").click();
              setTimeout(Ready,100);
            }
      });


    }
    //Fin mover orden

    //Separar orden
    function SepOrden(){

      $("#OpcionesOrden .modal-body").html("Cargando contenido...");

      var Id = $("#IdO").val();

      $.ajax({
        method: "GET",
        url: "templates/states/php/separar_orden_1.php?Id="+Id
      })
      .done(function(msg) {
      $("#OpcionesOrden .modal-body").html(msg);
      });

    }
    function GuardaSepOrden(){
      $("#OpcionesOrden .modal-body").html("Cargando contenido...");

      var Id   = $("#IdO").val();
      var Mesa = $("#IdTTT").val();
      console.log(Mesa);

      $.ajax({
        method: "GET",
        url: "templates/states/php/separar_orden_2.php?Mesa="+Mesa+"&Id="+Id
      })
      .done(function(msg){
      $("#OpcionesOrden .modal-body").html(msg);
      });
    }

    function selProd(Item){

    if($("#Prod"+Item+" .mes").hasClass("seli")){
    $("#Prod"+Item+" .mes").removeClass("seli"); 
    }else{
    $("#Prod"+Item+" .mes").addClass("seli"); 
    }
    

    $("#BtnGuardaMov").prop("disabled",false);
    }

    function GuardaSepOrden2(){


    var Id   = $("#IdO").val();
    var Mesa = $("#IdTTT").val();

    var Prods= Array();
    var Todo = Array();
    var Total= $("div.seli").length;

      for(var x=0;x<Total;x++){

        Prods.push($("div .seli:eq("+x+")").attr("id").replace("Pros",""));
        
      }

    Todo.push({"Id"     :Id});
    Todo.push({"Mesa"   :Mesa});
    Todo.push({"Prods"  :Prods});
    console.log(Todo);

      $.ajax({
        method: "POST",
        url: "templates/states/php/separar_orden_3.php",
        data: JSON.stringify(Todo)
      })
      .done(function(msg) {
        toastr.options = {
        "positionClass": "toast-bottom-right"
        };
        toastr.success("Orden separada con éxito.").delay(1500).fadeOut(1000);

        setTimeout('Reini()',10);
        var URLactual = window.location;
        var sr        = URLactual.toString().split("/");
        if(sr[6]=="M"){
          $("#AtrasMesas").click();
          setTimeout(Ready,100);
        }
      });


    }
    //Fin separar orden
    //Separar factura
    function SepararFactura(){
      $("#OrdenModal .botones").hide();
      $("#OrdenModal .modal-body").hide();
      $("#OrdenModal .campos").fadeIn();
    };

    function SepararFactura2(){
      var NumCampos = $("#NumCamFactura").val();

      $("#OrdenModal .modal-body").fadeIn();
      $("#OrdenModal .campos").hide();
      $("#BtnSepararFactura").fadeOut();
      $("#BtnImpBeb").fadeOut();
      $("#BtnImpProd").fadeOut();
      $("#BtnImpTodo").fadeOut();
      //$("#BtnImpVolver").fadeIn();

      for (var i=0; i<NumCampos;i++) {
        $("<table id='Listable"+i+"' class='table table-bordered' style='border:solid;min-height:100px;'><tbody class='Listable'><tr><td><button onclick='ImpFacturita("+i+");' class='btn btn-info'><i class='icon-printer'></i></button></td><td class='text-right'>Total:</td><td class='text-right pr'></td></tr></tbody></table>").appendTo("#OrdenModal .modal-body");
        $("tbody").sortable({
            appendTo: "parent",
            helper: "clone"
        }).disableSelection();
        $(".Listable").droppable({
            hoverClass: "drophover",
            tolerance: "pointer",
            drop: function(e, ui) {
                $(this).prepend("<tr>" + ui.draggable.html() + "</tr>");
                ui.draggable.remove();
                setTimeout("OrganizarPrecios()",10);
            }
        });

      };
      $("#OrdenModal .botones").fadeIn();
    };
    function OrganizarPrecios(){
      var TotalK = $("#TablaK td.prec").length;
      var PrecioK= 0;
      var PrecioTemp;

      var TotalB = $("#TablaB td.prec").length;
      var PrecioB= 0;
      var PrecioTempB;

      var Total;

      for(var i=0;i<TotalK;i++){
      PrecioTemp = $("#TablaK td.prec:eq("+i+")").html();
      PrecioTemp = PrecioTemp.replace(".","");
      PrecioTemp = parseFloat(PrecioTemp);
      PrecioK += PrecioTemp;
      }

      for(var i=0;i<TotalB;i++){
      PrecioTempB = $("#TablaB td.prec:eq("+i+")").html();
      PrecioTempB = PrecioTempB.replace(".","");
      PrecioTempB = parseFloat(PrecioTempB);
      PrecioB += PrecioTempB;
      }

      Total = PrecioK+PrecioB;

      $("#TotalCuenta").html(Total.toLocaleString());

      var Divs = $(".Listable").length;
      var TotF;
      var PrecioTempC;
      var PrecioC;

      for(var x=0;x<Divs;x++){
        TotF    = $(".Listable:eq("+x+") td.prec").length;
        PrecioC =0;
          
          for(var z=0;z<TotF;z++){
          PrecioTempC = $(".Listable:eq("+x+") td.prec:eq("+z+")").html();
          PrecioTempC = PrecioTempC.replace(".","");
          PrecioTempC = parseFloat(PrecioTempC);
          PrecioC += PrecioTempC;
          }

        $(".Listable:eq("+x+") td.pr").html(PrecioC.toLocaleString());
      }
    };
    function ImpFacturita(N){
      var ficha2  =document.getElementById("Listable"+N);
      var ventimp2=window.open(' ','popimpr'+N);

      var Contenido2 = "<table>";
          Contenido2 +=ficha2.innerHTML;
          Contenido2 +="</table>";
    
          ventimp2.document.write(Contenido2);
          ventimp2.print();
          ventimp2.document.close();

    }
    //Fin separar factura
    </script>
    <!-- Loading core javascript-->
    <script src="js/main.js"></script>
    <!-- Loading script for each page using LazyLoad-->
  </head>
  <body ng-controller="AppController" ng-class="[header.layout_menu]" class="ng-scope sidebar-color-white menu-toggle layout-header-fixed layout-sidebar-collapsed">
    <!--Modal Default-->
    <div ng-class="header.boxed" class="fluid">
      <!--BEGIN TEMPLATE SETTING-->
        <div ng-include="'templates/states/_includes/template-setting.html'" class="hidden-xs hidden-sm"></div>
      <!--END TEMPLATE SETTING-->
      <!--BEGIN TOPBAR-->
      <div ng-include="'templates/states/_includes/topbar.php'" class="page-header-topbar"></div>
      <!--END TOPBAR-->
      <!--BEGIN HORIZONTAL MENU-->
      <div ng-include="'templates/states/_includes/horizontal-menu.html'" class="page-horizontal-menu"></div>
      <!--END HORIZONTAL MENU-->
      <div id="wrapper">
        <!--BEGIN PAGE WRAPPER-->
        <div id="page-wrapper">
          <!--BEGIN SIDEBAR MAIN-->
          <div ng-include="'templates/states/_includes/sidebar-main.php'" class="sidebar-main sidebar"></div>
          <!--END SIDEBAR MAIN-->
          <!--BEGIN CHAT FORM-->
          <div ng-include="'templates/states/_includes/chat-form.php'" class="chat-form-wrapper"></div>
          <!--END CHAT FORM-->
          <!--BEGIN PAGE CONTENT-->
          <div ng-class="[header.animation]" ng-generaltab="" class="page-content animated">
            <!--BEGIN TITLE & BREADCRUMB PAGE-->
            <!--<div ng-include="'templates/states/_includes/title-breadcrumb.html'" class="page-title-breadcrumb"></div>-->
            <!--END TITLE & BREADCRUMB PAGE-->
            <div class="box-content">
              <!--BEGIN CONTENT-->
              <div ui-view="" class="content"></div>
              <!--END CONTENT-->
            </div>
          </div>
          <!--END PAGE CONTENT-->
        </div>
        <!--END PAGE WRAPPER-->
      </div>
      <!--BEGIN FOOTER-->
      <div id="footer">
        <div class="copyright"> Creado por: <a href="http://www.webevolution.com.co" target="_blank">WebEvolution</a>
          <div class="pull-left">©2015 Rapibox - Sistema de control</div>
        </div>
      </div>
      <!--END FOOTER-->
    </div>
  </body>
  <div id="color-picker-modal" tabindex="-1" role="dialog" aria-labelledby="modal-default-label" aria-hidden="true" class="modal fade">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
          <h4 id="modal-default-label" class="modal-title">Color Picker</h4>
        </div>
        <div class="modal-body">
          <form role="form" class="form-horizontal form-seperated">
            <div class="form-body">
              <div class="form-group">
                <label class="col-md-3 control-label">Default</label>
                <div class="col-md-9">
                  <input type="text" class="colorpicker-default form-control"/>
                </div>
              </div>
              <div class="form-group">
                <label class="col-md-3 control-label">RGBA format</label>
                <div class="col-md-9">
                  <input type="text" data-color-format="rgba" class="colorpicker-rgba form-control"/>
                </div>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
          <button type="button" class="btn btn-success">Save changes</button>
        </div>
      </div>
    </div>
  </div>
  <div id="date-range-picker-modal" tabindex="-1" role="dialog" aria-labelledby="modal-default-label" aria-hidden="true" class="modal fade">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
          <h4 id="modal-default-label" class="modal-title">Date Range Picker</h4>
        </div>
        <div class="modal-body">
          <form role="form" class="form-horizontal form-seperated">
            <div class="form-body">
              <div class="form-group">
                <label class="col-md-3 control-label">Date</label>
                <div class="col-md-7">
                  <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                    <input type="text" name="daterangepicker-default" class="form-control"/>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label class="col-md-3 control-label">Date & Time</label>
                <div class="col-md-7">
                  <div class="input-group">
                    <input type="text" name="daterangepicker-date-time" class="form-control"/>
                    <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label class="col-md-3 control-label">Advance Date Range Picker</label>
                <div class="col-md-6">
                  <div class="btn btn-success reportrange"><i class="fa fa-calendar"></i>&nbsp;<span></span>&nbsp;report&nbsp;<i class="fa fa-angle-down"></i>
                    <input type="hidden" name="datestart"/>
                    <input type="hidden" name="endstart"/>
                  </div>
                </div>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
          <button type="button" class="btn btn-success">Save changes</button>
        </div>
      </div>
    </div>
  </div>
  <div id="datetime-picker-modal" tabindex="-1" role="dialog" aria-labelledby="modal-default-label" aria-hidden="true" class="modal fade">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
          <h4 id="modal-default-label" class="modal-title">Datetime Picker</h4>
        </div>
        <div class="modal-body">
          <form role="form" name="datetime-picker" class="form-horizontal form-seperated">
            <div class="form-body">
              <div class="form-group">
                <label class="col-md-3 control-label">Default</label>
                <div class="col-md-6">
                  <div class="input-group datetimepicker-default date">
                    <input type="text" name="datetime" class="form-control"/><span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label class="col-md-3 control-label">Disable date</label>
                <div class="col-md-6">
                  <div class="input-group datetimepicker-disable-date date">
                    <input type="text" name="time" class="form-control"/><span class="input-group-addon"><i class="fa fa-clock-o"></i></span>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label class="col-md-3 control-label">Disable time</label>
                <div class="col-md-6">
                  <div class="input-group datetimepicker-disable-time date">
                    <input type="text" name="date" class="form-control"/><span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label class="col-md-3 control-label">Events and linked pickers</label>
                <div class="col-md-6">
                  <div class="input-group datetimepicker-start date mbl">
                    <input type="text" name="datetime_event_start" class="form-control"/><span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                  </div>
                </div>
                <div class="col-md-6 col-md-offset-3">
                  <div class="input-group datetimepicker-end date">
                    <input type="text" name="datetime_event_end" class="form-control"/><span class="input-group-addon"><i class="fa fa-clock-o"></i></span>
                  </div>
                </div>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
          <button type="button" class="btn btn-success">Save changes</button>
        </div>
      </div>
    </div>
  </div>
  <div id="time-picker-modal" tabindex="-1" role="dialog" aria-labelledby="modal-default-label" aria-hidden="true" class="modal fade">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
          <h4 id="modal-default-label" class="modal-title">Time Picker</h4>
        </div>
        <div class="modal-body">
          <form role="form" class="form-horizontal form-seperated">
            <div class="form-body">
              <div class="form-group">
                <label class="col-md-3 control-label">Default</label>
                <div class="col-md-4">
                  <div class="input-group bootstrap-timepicker">
                    <input type="text" class="timepicker-default form-control"/><span class="input-group-addon"><i class="fa fa-clock-o"></i></span>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label class="col-md-3 control-label">Timepicker 24hr</label>
                <div class="col-md-4">
                  <div class="input-group bootstrap-timepicker">
                    <input type="text" class="timepicker-24hr form-control"/><span class="input-group-addon"><i class="fa fa-clock-o"></i></span>
                  </div>
                </div>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
          <button type="button" class="btn btn-success">Save changes</button>
        </div>
      </div>
    </div>
  </div>
  <div id="date-picker-modal" tabindex="-1" role="dialog" aria-labelledby="modal-default-label" aria-hidden="true" class="modal fade">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
          <h4 id="modal-default-label" class="modal-title">Date Picker</h4>
        </div>
        <div class="modal-body">
          <form role="form" class="form-horizontal form-seperated">
            <div class="form-body">
              <div class="form-group">
                <label class="col-md-3 control-label">Default</label>
                <div class="col-md-5">
                  <input type="text" data-date-format="dd/mm/yyyy" placeholder="dd/mm/yyyy" class="datepicker-default form-control"/>
                </div>
              </div>
              <div class="form-group">
                <label class="col-md-3 control-label">Format</label>
                <div class="col-md-5">
                  <input type="text" data-date-format="mm-dd-yyyy" placeholder="mm-dd-yyyy" class="datepicker-default form-control"/>
                </div>
              </div>
              <div class="form-group">
                <label class="col-md-3 control-label">Start with years</label>
                <div class="col-md-5">
                  <div class="input-group">
                    <input type="text" class="datepicker-years form-control"/>
                    <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label class="col-md-3 control-label">Range</label>
                <div class="col-md-8">
                  <div class="input-group input-daterange">
                    <input type="text" name="startdate" class="form-control"/><span class="input-group-addon">to</span>
                    <input type="text" name="enddate" class="form-control"/>
                  </div>
                </div>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
          <button type="button" class="btn btn-success">Save changes</button>
        </div>
      </div>
    </div>
  </div>
  <div id="clockface-picker-modal" tabindex="-1" role="dialog" aria-labelledby="modal-default-label" aria-hidden="true" class="modal fade">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
          <h4 id="modal-default-label" class="modal-title">Clockface Picker</h4>
        </div>
        <div class="modal-body">
          <form role="form" class="form-horizontal form-seperated">
            <div class="form-body">
              <div class="form-group">
                <label class="col-md-3 control-label">Default</label>
                <div class="col-md-4">
                  <input type="text" value="2:30 PM" data-format="hh:mm A" class="clockface-default form-control"/>
                </div>
              </div>
              <div class="form-group">
                <label class="col-md-3 control-label">Clockface Inline</label>
                <div class="col-md-4">
                  <div style="padding: 0; float: left;" class="clockface-inline well"></div>
                </div>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
          <button type="button" class="btn btn-success">Save changes</button>
        </div>
      </div>
    </div>
  </div>
  <!--MODAL DE ORDEN-->
  <div id="OrdenModal" tabindex="-1" role="dialog" aria-labelledby="modal-default-label" aria-hidden="true" class="modal">
    <div class="modal-dialog" style="width:500px;">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
          <h4 id="modal-default-label" class="modal-title"></h4>
        </div>
        <div id="CuerpoOrdenModal" class="modal-body">

        </div>
        <div class="modal-footer">
          <div class="botones">
            <!--<button type="button" data-dismiss="modal" class="btn btn-default">Cerrar</button>-->
            <button type="button" id="BtnSepararFactura" class="btn btn-info" onclick="SepararFactura();">Separar</button>
            <button type="button" id="BtnImpProd" class="btn btn-success" onclick="Imprime();">Imp. prods</button>
            <button type="button" id="BtnImpBeb" class="btn btn-success" onclick="Imprime2();">Imp. bebidas</button>
            <button type="button" id="BtnImpTodo" class="btn btn-success" onclick="Imprime3();">Imp. todo</button>
            <button type="button" id="BtnImpVolver" class="btn btn-info" onclick="" style="display:none;">Cancelar</button>
          </div>
          <div class="campos" style="display:none;">
            <div class="col-sm-12 text-left"><h4>Separar factura</h4></div>
            <div class="col-sm-8">
              <input type="number" class="form-control" id="NumCamFactura" placeholder="Numero de campos">
            </div>
            <div class="col-sm-4">
              <button type="button" class="btn btn-info" onclick="SepararFactura2();">Continuar</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--FIN DE MODAL DE ORDEN-->
  <!--MODAL OPCIONES ORDEN-->
  <div id="OpcionesOrden" tabindex="-999" role="dialog" aria-labelledby="modal-default-label" aria-hidden="true" class="modal" style="background-color: rgba(0, 0, 0, 0.6);">
    <div class="modal-dialog row" style="width:60%;top:200px;">
      <input type="hidden" id="IdO">
      <input type="hidden" id="IdTTT">
      <div class="modal-content" style="background-color: rgba(0, 0, 0, 0.7);">
        <div class="modal-header" style="display:none;">
          <button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
          <h4 id="modal-default-label" class="modal-title">Opciones orden</h4>
        </div>
        <div class="modal-body">
        </div>
        <div class="modal-footer" style="display:none;">
          <button type="button" data-dismiss="modal" class="btn btn-default">Cerrar</button>
        </div>
      </div>
    </div>
  </div>
  <!--FIN MODAL Opciones ORDEN-->
  <!-- Modal finalizar orden -->
  <div class="modal fade" id="FinO" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">Finalizar orden</h4>
        </div>
        <div class="modal-body">
        ¿Realmente desea finalizar esta orden?
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
          <button type="button" class="btn btn-success" onclick="Finalizar();" data-dismiss="modal">Realizar operación</button>
        </div>
      </div>
    </div>
  </div>
  <!--Fin modal finalizar orden-->
    <!-- Modal anular orden -->
  <div class="modal fade" id="AnuO" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">Anular orden</h4>
        </div>
        <div class="modal-body">
        ¿Realmente desea anular esta orden?
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
          <button type="button" class="btn btn-success" onclick="Anular();" data-dismiss="modal">Realizar operación</button>
        </div>
      </div>
    </div>
  </div>
  <!--Fin modal finalizar orden-->
  <div id="lightbox-modal" tabindex="-1" role="dialog" aria-labelledby="modal-default-label" aria-hidden="true" class="modal fade">
    <div class="modal-dialog">
      <div class="modal-content"><img src="" class="img img-responsive"/></div>
    </div>
  </div>
</html>