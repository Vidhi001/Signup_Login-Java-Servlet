/**
 * 
 */
(function () {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
	Array.prototype.slice.call(forms)
		.forEach(function(form) {
			form.addEventListener('submit', function(event) {
				if (!form.checkValidity()) {
					event.preventDefault()
					event.stopPropagation()
				}
				
				try{
					if(form.password1.value==''){
					form.verifyPassword1.classList.add("invalid")
				}
				else if (form.password1.value != form.verifyPassword1.value) {
					form.verifyPassword1.classList.add("invalid")
					form.verifyPassword1.classList.remove("valid")

				}
				else {
					form.verifyPassword1.classList.add("valid")
					form.verifyPassword1.classList.remove("invalid")

					
				}
					
				}
				finally{
					form.classList.add('was-validated')
				}
				
				
			}, false)
		})
})()

const onChange = () => {
	var f = document.querySelectorAll('.needs-validation')
	var form = f[0];

	if (form.password1.value != form.verifyPassword1.value) {
		form.verifyPassword1.classList.add("invalid")
		form.verifyPassword1.classList.remove("valid")

	}
	else {
		form.verifyPassword1.classList.add("valid")
		form.verifyPassword1.classList.remove("invalid")


	}
}