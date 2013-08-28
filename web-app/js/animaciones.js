 $(document).ready(function(){
		//animaciones menu
		$('#configuracion').click(function (){
            $("#perfil_bk").animate({
            height: '400px' ,
			opacity: '1' ,
			display : 'none'
            });5000
		});
		
		$('#configuracion').click(function(){
            $("#configuracion").css("display","none");
			});

		
		$('#volver').click(function (){
            $("#perfil_bk").animate({
            height: '0px' ,
			opacity: '0.1' ,
			display : 'none'
            });5000
		});
		
		$('#volver').click(function(){
            $("#configuracion").css("display","block");
			});
		
		/*Submenu*/
		
		/* $('#link_empresas').mouseover(function(){
            $("#submenu_bk").stop(true).animate({
            height: '120px' 
            },200, function() {
		// Animation complete.
			});
		}); */
		
			
			/*Modificar mi perfil*/
		$('#modificar_pass').click(function(){
            $("#nuevo_pass").css("display","block");
			});
		$('#nuevo_pass .cancelar').click(function(){
            $("#nuevo_pass").css("display","none");
			});
		
		/* $('#lista_empresa').mouseover(function(){
            $("#submenu_empresas").animate({
            display : 'block'
			 },1000, function() {
			});
		}); */
});