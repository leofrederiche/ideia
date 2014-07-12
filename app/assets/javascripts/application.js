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

function openMenu(){
	if( document.getElementById("user_menu").style.display == "none")
	{
		document.getElementById("user_menu").style.display = "block";
		document.getElementById("arrow_down_menu").style.webkitTransform = 'rotate('+180+'deg)'; 
	}
	else{
		document.getElementById("user_menu").style.display = "none";	
		document.getElementById("arrow_down_menu").style.webkitTransform = 'rotate('+0+'deg)'; 
	}
}


//links

function logout(){
	window.location.href = "/users/sign_out";
}

function perfil(){
	window.location.href = "/perfil";
}

function user_ideas(){
	window.location.href = "/ideas"
}