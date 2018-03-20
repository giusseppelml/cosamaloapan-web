/*=============================================
Área de arrastre de imágenes
=============================================*/

if($("#lightbox").html() == 0){

	$("#lightbox").css({"height":"100px"});

}

else{

	$("#lightbox").css({"height":"auto"});

}


/*=============================================
Subir múltiples Imagenes
=============================================*/
$("body").on("dragover", function(e){

	e.preventDefault();
	e.stopPropagation();

})


$("#lightbox").on("dragover", function(e){

	e.preventDefault();
	e.stopPropagation();

	$("#lightbox").css({"background":"url(views/images/pattern.jpg)"})

});

/*=============================================
Soltar las Imágenes
=============================================*/

$("body").on("drop", function(e){

	e.preventDefault();
	e.stopPropagation();

});

var imagenSize = [];
var imagenType = [];

$("#lightbox").on("drop", function(e){

	e.preventDefault();
	e.stopPropagation();

	$("#lightbox").css({"background":"white"})

	archivo = e.originalEvent.dataTransfer.files;
	
	for(var i = 0; i < archivo.length; i++){

		imagen = archivo[i];
		imagenSize.push(imagen.size);
		imagenType.push(imagen.type);

		if(Number(imagenSize[i]) > 2000000){

			$("#lightbox").before('<div class="alert alert-warning alerta text-center">El archivo excede el peso permitido, 2mb</div>')

		}

		else{

			$(".alerta").remove();
		
		}

		if(imagenType[i] == "image/jpeg" || imagenType[i] == "image/png"){

			$(".alerta").remove();		

		}
		else{

			$("#lightbox").before('<div class="alert alert-warning alerta text-center">El archivo debe ser formato JPG o PNG</div>')

		}

		if(Number(imagenSize[i]) < 2000000 && imagenType[i] == "image/jpeg" || imagenType[i] == "image/png"){

			var datos = new FormData();

			datos.append("imagen", imagen);

			$.ajax({
				url:"views/ajax/gestorGaleria.php",
				method: "POST",
				data: datos,
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function(){

					$("#lightbox").append('<li  id="status"><img src="views/images/status.gif"></li>');	
				},
				success: function(respuesta){

					$("#status").remove();

					if(respuesta == 0){

						$("#lightbox").before('<div class="alert alert-warning alerta text-center">La imagen es inferior a 1024px * 768px</div>')

					}



					else{

						$("#lightbox").css({"height":"auto"});

						$("#lightbox").append('<li><span class="fa fa-times"></span><a rel="grupo" href="'+respuesta.slice(6)+'"><img src="'+respuesta.slice(6)+'"></a></li>');

						$("#lightbox").append('<li><span class="fa fa-pencil" style="background:blue"></span><img src="'+respuesta["ruta"].slice(6)+'" style="float:left; margin-bottom:10px" width="80%"><h1>'+respuesta["url"]+'</h1></li>');


						swal({
						title: "¡OK!",
						text: "¡La imagen se subió correctamente!",
						type: "success",
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						},

						function(isConfirm){
							if (isConfirm){
								window.location = "galeria";
							}
						});

					}

				}

			})

		}
	
	}

})

/*=============================================
Eliminar Item Galería
=============================================*/

$(".eliminarFoto").click(function(){

	if($(".eliminarFoto").length == 1){
		
		$("#lightbox").css({"height":"100px"});
	
	}

	idGaleria = $(this).parent().attr("id");
	rutaGaleria = $(this).attr("ruta");

	$(this).parent().remove();

	var borrarItem = new FormData();
	borrarItem.append("idGaleria", idGaleria);
	borrarItem.append("rutaGaleria", rutaGaleria);

	$.ajax({

		url:"views/ajax/gestorGaleria.php",
		method: "POST",
		data: borrarItem,
		cache: false,
		contentType: false,
		processData: false,
		success: function(respuesta){
			console.log('respuesta', respuesta);	
		}

	})

});


/*=============================================
Editar Item Slide
=============================================*/

$(".editarGaleria").click(function(){

	idGaleria = $(this).parent().attr("id");
	rutaGaleria = $(this).parent().children("img").attr("src");
	rutaUrl = $(this).parent().children("h1").html();
	
	$(this).parent().html('<img src="'+rutaGaleria+'" class="img-thumbnail"><input type="text" class="form-control" id="enviarUrl" placeholder="Url" value="'+rutaUrl+'"><button class="btn btn-info pull-right" id="guardar'+idGaleria+'" style="margin:10px">Guardar</button>');

	$("#guardar"+idGaleria).click(function(){

		enviarId = idGaleria.slice(4);

		enviarUrl = $("#enviarUrl").val();

		var actualizarGaleria = new FormData();

		actualizarGaleria.append("enviarId",enviarId);
		actualizarGaleria.append("enviarUrl",enviarUrl);

		$.ajax({
			url:"views/ajax/gestorGaleria.php",
			method: "POST",
			data: actualizarGaleria,
			cache: false,
			contentType: false,
			processData: false,
			dataType:"json",
			success: function(respuesta){
				
				$("#guardar"+idGaleria).parent().html('<span class="fa fa-pencil editarGaleria" style="background:blue"></span><img src="'+rutaGaleria+'" style="float:left; margin-bottom:10px" width="80%"><h1>'+respuesta["url"]+'</h1>');

				swal({
						title: "¡OK!",
						text: "¡Se han guardado los cambios correctamente!",
						type: "success",
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						},
						function(isConfirm){
							if (isConfirm){
								window.location = "galeria";
							}
						});

			}

		});



	})

})

/*=====  Editar  Item Slide  ======*/


/*=============================================
Ordenar Item Galería
=============================================*/


var almacenarOrdenId = [];
var ordenItem = [];

$("#ordenarGaleria").click(function(){

	$("#ordenarGaleria").hide();
	$("#guardarGaleria").show();

	$("#lightbox").css({"cursor":"move"})
	$("#lightbox span").hide()

	$("#lightbox").sortable({
		revert: true,
		connectWith: ".bloqueGaleria",
		handle: ".handleImg",
		stop: function(event){

			for(var i= 0; i < $("#lightbox li").length; i++){

				almacenarOrdenId[i] = event.target.children[i].id;
				ordenItem[i]  =  i+1;  		

			}

		}

	})

})

$("#guardarGaleria").click(function(){

	$("#ordenarGaleria").show();
	$("#guardarGaleria").hide();

	for(var i= 0; i < $("#lightbox li").length; i++){

		var actualizarOrden = new FormData();
		actualizarOrden.append("actualizarOrdenGaleria", almacenarOrdenId[i]);
		actualizarOrden.append("actualizarOrdenItem", ordenItem[i]);

		$.ajax({

			url:"views/ajax/gestorGaleria.php",
			method: "POST",
			data: actualizarOrden,
			cache: false,
			contentType: false,
			processData: false,
			success: function(respuesta){

				$("#lightbox").html(respuesta);

				swal({
						title: "¡OK!",
						text: "¡El orden se ha actualizado correctamente!",
						type: "success",
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						},
						function(isConfirm){
							if (isConfirm){
								window.location = "galeria";
							}
						});

			}


		})

	}

})