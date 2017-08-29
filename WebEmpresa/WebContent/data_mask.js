function data_mask(campo){
	var n_char = document.getElementById(campo).value.length;
	if(n_char == 2){
		document.getElementById(campo).value += "/";
	}
	if(n_char == 5){
		document.getElementById(campo).value += "/";
	}
	if(n_char == 10){
		document.getElementById(campo).disabled = true;
	}
}