$(document).ready(function(){
	$('#linkDelegados').click(function (){
        $("#contenedorDelegados").toggle();
	});
	
	$('#linkNoDelegados').click(function (){
        $("#contenedorNoDelegados").toggle();
	});
	
	$('#linkFamiliares').click(function (){
        $("#contenedorFamiliares").toggle();
	});
	
	$('#selectMotivoAlerta').click(function (){
        if ($(this).val() == "Otro") {
        	$("#contenedorDescripcionMotivoAlerta").css("display","block");
        	$("#contenedorEmpresaAlerta").css("display","none");
        }else {
        	$("#contenedorDescripcionMotivoAlerta").css("display","none");
        	$("#contenedorEmpresaAlerta").css("display","block");
        }
	});
	
});