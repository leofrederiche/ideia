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
	if( document.getElementById("user_menu").style.display == "block")
	{
		document.getElementById("user_menu").style.display = "none";	
		document.getElementById("arrow_down_menu").style.webkitTransform = 'rotate('+0+'deg)'; 
		document.getElementById("arrow_down_menu").style.mozTransform = 'rotate('+0+'deg)'; 
		document.getElementById("arrow_down_menu").style.msTransform = 'rotate('+0+'deg)'; 
	}
	else{
		document.getElementById("user_menu").style.display = "block";
		document.getElementById("arrow_down_menu").style.webkitTransform = 'rotate('+180+'deg)'; 
		document.getElementById("arrow_down_menu").style.mozTransform = 'rotate('+180+'deg)'; 
		document.getElementById("arrow_down_menu").style.msTransform = 'rotate('+180+'deg)'; 
	}
}

function block_like(){
	document.getElementById('like').disabled = true;
}


//links

function logout(){
	window.location.href = "/users/sign_out";
}

function perfil(){
	window.location.href = "/perfil";
}

function user_ideas(){
	window.location.href = "/ideias";
}

function newIdea(){
	window.location.href = "/nova-ideia";
}

function collaborate(){
	window.location.href = "/off-collaborate";
}