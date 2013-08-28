<html>
<head>
	<title><g:message code="springSecurity.login.title"/> | U.O.y.E.P.</title>
	<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
	<link rel = "stylesheet" href = "${resource(dir: 'css', file: 'auth.css')}" type = "text/css">
	<script src="${resource(dir: 'js', file: 'jquery-1.10.1.min.js')}" type="text/javascript"></script>
	<script src="${resource(dir: 'js', file: 'modernizr.custom.79639.js')}" type="text/javascript"></script>
	
</head>

<body>

	<div id='login'>
		<div class='inner'>
			<g:if test='${flash.message}'>
				<div class='login_message'>${flash.message}</div>
			</g:if>
			
			<img id = "imgIsologo" src = "${resource(dir: 'images/login', file: 'logo_top.png')}" alt = "OSPIP" title = "OSPIP"  />
			<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
				<p>
					<label for='username' id ="labelUsuario"><g:message code="Usuario"/>:</label>
					<input type='text' class='text_' name='j_username' id='username'/>
				</p>
	
				<p>
					<label for='password' id ="labelContrasenia"><g:message code="Contraseña"/>:</label>
					<input type='password' class='text_' name='j_password' id='password'/>
				</p>
	
				<p id="remember_me_holder">
					<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
					<label for='remember_me' id ="labelRecordar"><g:message code="Recordarme"/></label>
				</p>
	
				<p id="button">
					<input type='submit' id="submit" value='${message(code: "Ingresar")}'/>
				</p>
			</form>
		</div>
	</div>

	<div class="container demo-2" id = "contenedorGeneral">
            <div id="slider" class="sl-slider-wrapper">
				<div class="sl-slider">
					<div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
						<div class="sl-slide-inner">
							<div class="bg-img bg-img-1"></div>
							
						</div>
					</div>
					
					<div class="sl-slide" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
						<div class="sl-slide-inner">
							<div class="bg-img bg-img-2"></div>
							<h2>Organizaci&oacute;n</h2>
							<blockquote><p>Somos un grupo social con una estructura sistem&aacute;tica de relaciones de interacci&oacute;n, dedicado a brindar el mejor servicio para satisfacer las necesidades de la comunidad y as&iacute; poder satisfacer nuestro prop&oacute;sito distintivo que es nuestra misi&oacute;n.</p></blockquote>
						</div>
					</div>
					
					<div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
						<div class="sl-slide-inner">
							<div class="bg-img bg-img-3"></div>
							<h2>Solidaridad</h2>
							<blockquote><p> Nos caracteriza el sentimiento de unidad basado en metas e intereses comunes, es decir, saber comportarse con la gente. As&iacute; mismo, nos esforzamos por fortalecer los lazos sociales que unen a los miembros de nuestra sociedad.</p></blockquote>
						</div>
					</div>
					
					<div class="sl-slide" data-orientation="vertical" data-slice1-rotation="-5" data-slice2-rotation="25" data-slice1-scale="2" data-slice2-scale="1">
						<div class="sl-slide-inner">
							<div class="bg-img bg-img-4"></div>
							<h2>Protecci&oacute;n</h2>
							<blockquote><p>Empleamos un conjunto de medidas integrales a fin de asegurar a cada uno de nuestros afiliados una cobertura completa con personal e instituciones de primera l&iacute;nea.</p></blockquote>
						
						</div>
					</div>
					
					<div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-5" data-slice2-rotation="10" data-slice1-scale="2" data-slice2-scale="1">
						<div class="sl-slide-inner">
							<div class="bg-img bg-img-5"></div>
							<h2>Identidad</h2>
							<blockquote><p>Nos identificamos por contar con un conjunto de valores, orgullos, tradiciones y creencias que act&uacute;an para que nuestros afiliados puedan fundamentar su sentimiento de pertenencia.</p></blockquote>
						</div>
					</div>
				</div>
			</div>
        </div>
	
	<script src="${resource(dir: 'js', file: 'jquery-1.10.1.min.js')}" type="text/javascript"></script>
	<script src="${resource(dir: 'js', file: 'jquery.ba-cond.min.js')}" type="text/javascript"></script>
	<script src="${resource(dir: 'js', file: 'jquery.slitslider.js')}" type="text/javascript"></script>
	
	<script type='text/javascript'>
		$(function() {

			document.forms['loginForm'].elements['j_username'].focus();
			
			var Page = (function() {

				var $nav = $( '#nav-dots > span' ),
					slitslider = $( '#slider' ).slitslider( {
						onBeforeChange : function( slide, pos ) {

							$nav.removeClass( 'nav-dot-current' );
							$nav.eq( pos ).addClass( 'nav-dot-current' );

						}
					} ),

					init = function() {

						initEvents();
						
					},
					initEvents = function() {

						$nav.each( function( i ) {
						
							$( this ).on( 'click', function( event ) {
								
								var $dot = $( this );
								
								if( !slitslider.isActive() ) {

									$nav.removeClass( 'nav-dot-current' );
									$dot.addClass( 'nav-dot-current' );
								
								}
								
								slitslider.jump( i + 1 );
								return false;
							
							} );
							
						} );

					};

					return { init : init };

			})();

			Page.init();
		
		});
	</script>
</body>
</html>
