<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'menu.css')}" type="text/css">
		<script src="${resource(dir: 'js', file: 'jquery-1.10.1.min.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js', file: 'animaciones.js')}" type="text/javascript"></script>
		<g:layoutHead/>
		<r:layoutResources/>
	</head>
	<body>
		<g:layoutHead/>
		
		
		<div id="fijo">
			<div id="cabecera_layout">
			<img id = "logo_top" src = "${resource(dir: 'images/login', file: 'logo_top.png')}" alt = "OSPIP" title = "OSPIP"  />
			<div id="usuario">
					<img id = "img_usuario" src = "${resource(dir: 'images/iconos', file: 'user.png')}" alt = "OSPIP" title = "OSPIP"  />
					<sec:ifLoggedIn>
						<p><sec:loggedInUserInfo field="username" /></p>
					</sec:ifLoggedIn>
					<g:link controller="logout"><div id="cerrar_sesion" title = "Cerrar Sesión"></div></g:link>
					<div id="configuracion" title = "Mi Perfil"></div>
				</div>
			</div>
		</div>
		<div id="fijo_menu">
		<div id="centrar_lista">
			<div class="oe_wrapper">
			
			<ul id="oe_menu" class="oe_menu">
				<li><span>Empresas</span>
					<div class = "opcionesMenu" >
							<ul>
								<g:link controller="empresa" action="create">
									<li class="oe_heading"><img  src = "${resource(dir: 'images/iconos', file: 'alta.png')}" alt = "OSPIP" title = "OSPIP"  /></li>
									<li>Alta</li>
								</g:link>
							</ul>
							<ul>
								<g:link controller="empresa" action="list">
									<li class="oe_heading"><img class="icono_submenu" src = "${resource(dir: 'images/iconos', file: 'modifica.png')}" alt = "OSPIP" title = "OSPIP"  /></li>
									<li>Listado</li>
								</g:link>
							</ul>
						
					</div>
				</li>
				<li><span>Empleados</span>
					<div class = "opcionesMenu" >
						<ul>
							<g:link controller="empleado" action="create" >
								<li class="oe_heading"><img src = "${resource(dir: 'images/iconos', file: 'alta.png')}" alt = "OSPIP" title = "OSPIP"  /></li>
								<li>Alta</li>
							</g:link>
						</ul>
						<ul>
							<g:link controller="empleado" action="list">
								<li class="oe_heading"><img  src = "${resource(dir: 'images/iconos', file: 'modifica.png')}" alt = "OSPIP" title = "OSPIP"  /></li>
								<li>Listado</li>
							</g:link>
						</ul>
					</div>
				</li>
				<li><span>Inspecciones</span>
					<div class = "opcionesMenu" >
						<ul>
							<g:link controller="inspeccion" action="create">
								<li class="oe_heading"><img src = "${resource(dir: 'images/iconos', file: 'alta.png')}" alt = "OSPIP" title = "OSPIP"  /></li>
								<li>Alta</li>
							</g:link>
						</ul>
						<ul>
							<g:link controller="inspeccion" action="list">
								<li class="oe_heading"><img  src = "${resource(dir: 'images/iconos', file: 'modifica.png')}" alt = "OSPIP" title = "OSPIP"  /></li>
								<li>Listado</li>
							</g:link>
						</ul>
					</div>
				</li>
				<li><span>Alertas</span>
					<div class = "opcionesMenu" >
						<ul>
							<g:link controller="alerta" action="create">
								<li class="oe_heading"><img src = "${resource(dir: 'images/iconos', file: 'alta.png')}" alt = "OSPIP" title = "OSPIP"  /></li>
								<li>Alta</li>
							</g:link>
						</ul>
						<ul>
							<g:link controller="alerta" action="list">
								<li class="oe_heading"><img  src = "${resource(dir: 'images/iconos', file: 'modifica.png')}" alt = "OSPIP" title = "OSPIP"  /></li>
								<li>Listado</li>
							</g:link>
						</ul>
					</div>
				</li>
				<li><span>Gerencia</span>
					<div class = "opcionesMenu">
						<ul>
							<g:link controller="usuario" action="list">
								<li class="oe_heading"><img src = "${resource(dir: 'images/iconos', file: 'alta.png')}" alt = "OSPIP" title = "OSPIP"  /></li>
								<li>Listado Usuarios</li>
							</g:link>
						</ul>
					</div>
				</li>
			</ul>	

		</div>
		</div>
	</div>
	<div id="perfil_bk">
		<sec:ifLoggedIn>
			<g:set var="userObject" value="${com.ospip.Usuario.findByUsername(sec.loggedInUserInfo(field:'username'))}"/>
			<g:include controller="usuario" action="editarPerfil" id="${userObject.id}"/>
		</sec:ifLoggedIn>
	</div>
		<g:layoutBody/>
		
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
        <script type="text/javascript">
            $(function() {
				var $oe_menu		= $('#oe_menu');
				var $oe_menu_items	= $oe_menu.children('li');
				var $oe_overlay		= $('#oe_overlay');

                $oe_menu_items.bind('mouseenter',function(){
					var $this = $(this);
					$this.addClass('slided selected');
					$this.children('div').css('z-index','9999').stop(true,true).slideDown(200,function(){
						$oe_menu_items.not('.slided').children('div').hide();
						$this.removeClass('slided');
					});
				}).bind('mouseleave',function(){
					var $this = $(this);
					$this.removeClass('selected').children('div').css('z-index','1');
					$this.children('div').css('z-index','9999').stop(true,true).slideUp(200,function(){
						$oe_menu_items.not('.slided').children('div').hide();
						$this.removeClass('slided');
					});
				});

				$oe_menu.bind('mouseenter',function(){
					var $this = $(this);
					$oe_overlay.stop(true,true).fadeTo(200, 0.6);
					$this.addClass('hovered');
				}).bind('mouseleave',function(){
					var $this = $(this);
					$this.removeClass('hovered');
					$oe_overlay.stop(true,true).fadeTo(200, 0);
					$this.children('div').css('z-index','9999').stop(true,true).slideUp(200,function(){
						$oe_menu_items.not('.slided').children('div').hide();
						$oe_menu_items.removeClass('slided');
					});
				})
            });
        </script>
        <r:layoutResources />
	</body>
</html>