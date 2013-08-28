<!DOCTYPE html>
<html>
	<head>
		<title>Bienvenido a Free Bidding</title>
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel = "stylesheet" href = "${resource(dir: 'css', file: 'index.css')}" type = "text/css">
	</head>
	<body>
		<div id = "contenedorIndex">
			<g:link controller="Login" action="index">
				<img id = "imgLogo" src = "${resource(dir: 'images/iconos', file: 'logo.png')}" />
			</g:link>
		</div>
	</body>
</html>