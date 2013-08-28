function activarDiv(check, contenedor)
{
	var contenedorEncontrado = document.getElementById(contenedor);
	if (check.checked) {
		contenedorEncontrado.style.display='block';
	} else {
		contenedorEncontrado.style.display='none';
	}
}