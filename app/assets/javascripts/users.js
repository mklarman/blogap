window.onload = function(){
var input = document.getElementById('input')
var submit = document.getElementById('submit')
var pic = document.getElementById('pic')

submit.addEventListener('click', function(){
	if(input.value == 'East Coast'){
	   pic.style.backgroundImage= "url('../assets/eagles.jpg')"
	   pic.style.backgroundSize = "100% 100%"
     }

    if(input.value == 'West Coast'){
	   pic.style.backgroundImage = "url('../assets/rams.jpg')"
	   pic.style.backgroundSize = "100% 100%"
     }

    if(input.value == 'Mid-West'){
	   pic.style.backgroundImage = "url('../assets/Chicago_Bears_Logo1.jpg')"
	   pic.style.backgroundSize = "100% 100%"
     }
    if(input.value == 'South-West'){
	   pic.style.backgroundImage = "url('../assets/Dallas_Cowboys_Logo2.jpg')"
	   pic.style.backgroundSize = "100% 100%"
     }

})



}