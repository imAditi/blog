/**
 * 
 */
var blog = document.querySelectorAll('p');
for (var i = 0; i < blog.length; i++){
 if (blog[i].textContent.length>100) {
	 blog[i].textContent = blog[i].textContent.substring(0,100);
var aTag = document.createElement('a');
aTag.setAttribute('href',"#");
aTag.innerHTML = "...";
blog[i].appendChild(aTag);
}
}

var a = document.querySelector('a');
aTag.setAttribute('href',"#");
aTag.innerHTML = "...";