function openSign(){
	document.getElementById("sign").style.display = "block";
	document.getElementById("bodyAll").style.transition = "0.5s";
}

function closeSign(){
	document.getElementById("sign").style.display = "none";
}

function openColaborate(){
	document.getElementById("colaborate").style.display = "block";
	document.getElementById("edColaborate").value = "";
	document.getElementById("edlink").value = "";
	document.getElementById("bodyAll").style.transition = "0.5s";
}

function closeColaborate(){
	document.getElementById("colaborate").style.display = "none";	
}