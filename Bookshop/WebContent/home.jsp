<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Admin CPanel - Bookshop</title>
</head>
<body>
	<div style="text-align: center">
		<h1>Welcome to Bookshop Website Admin Panel</h1>
		<b>${user.fullname} (${user.email})</b>
		<br><br>
		<a href="logout">Logout</a>
	</div>
</body>
</html>
 --%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SignUp Page</title>
    <link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <section class="h-100 bg-dark">
	  <div class="container py-5 h-100">
	    <div class="row d-flex justify-content-center align-items-center h-100">
	      <div class="col">
	        <div class="card card-registration my-4">
	          <div class="row g-0">
	            <div class="col-xl-6 d-xl-block">
	              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
	                alt="Sample photo" class="img-fluid"
	                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
	            </div>
	            <div class="col-xl-6">
	              <div class="card-body p-md-5 text-black">
	              
	              	<form action="signup" method="post" id="signupForm" class="needs-validation" novalidate>
	                <h3 class="mb-5 text-uppercase">Sign Up Page</h3>
	
	                <div class="row">
	                  <div class="col-md-6 mb-4">
	                    <div class="form-outline">
	                    <label class="form-label" for="firstName">First name</label>
	                      <input type="text" required id="firstName" name="firstName1" class="form-control form-control-lg" />
	                      
	                      <div class="invalid-feedback">
        This field is required!
      </div>
	                    </div>
	                  </div>
	                  <div class="col-md-6 mb-4">
	                    <div class="form-outline">
	                    <label class="form-label" for="lastName">Last name</label>
	                      <input type="text" id="lastName" required name="lastName1" class="form-control form-control-lg" />
	                      
	                      <div class="invalid-feedback">
                           This field is required!
                           </div>
	                    </div>
	                  </div>
	                </div>
	
	                <div class="row">
	                  <div class="col-md-6 mb-4">
	                    <div class="form-outline">
	                    <label class="form-label" for="motherName">Mother's name</label>
	                      <input type="text" id="motherName" required name="motherName1" class="form-control form-control-lg" />
	                      
	                      <div class="invalid-feedback">
                           This field is required!
                           </div>
	                    </div>
	                  </div>
	                  <div class="col-md-6 mb-4">
	                    <div class="form-outline">
	                    <label class="form-label" for="fatherName">Father's name</label>
	                      <input type="text" id="fatherName" required name="fatherName1" class="form-control form-control-lg" />
	                      
	                      <div class="invalid-feedback">
                           This field is required!
                           </div>
	                    </div>
	                  </div>
	                </div>

	
	                <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">
	
	                  <p class="mb-0 me-4">Gender: </p>
	
	                  <div class="form-check form-check-inline mb-0 me-4">
	                  <label class="form-check-label" for="femaleGender">Female</label>
	                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="femaleGender"
	                      value="Female" />
	                    
	                  </div>
	
	                  <div class="form-check form-check-inline mb-0 me-4">
	                  <label class="form-check-label" for="maleGender">Male</label>
	                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="maleGender"
	                      value="Male" checked />
	                    
	                  </div>
	
	                  <div class="form-check form-check-inline mb-0">
	                  <label class="form-check-label" for="otherGender">Other</label>
	                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="otherGender"
	                      value="Other" />
	                    
	                  </div>
	                  
	
	                </div> 
	
	                <div class="form-outline mb-4">
	                <label class="form-label" for="dob">DOB</label>
	                  <input type="date" id="dob" required name="dob1" class="form-control form-control-lg" />
	                  
	                  <div class="invalid-feedback">
                           This field is required!
                           </div>
	                </div>
	
	                <div class="form-outline mb-4">
	                <label class="form-label" for="password">Password</label>
	                  <input type="password" required onChange=onChange() id="password" name="password1" class="form-control form-control-lg" />
	                  <div class="invalid-feedback">
                           This field is required!
                           </div>
	                </div>

					<div class="form-outline mb-4">
					  <label class="form-label" for="verifyPassword">Verify Password</label>
	                  <input type="password" required onChange=onChange() id="verifyPassword" name="verifyPassword1" class="form-control form-control-lg" />
	                  
	                  <div class="invalid-feedback">
                           Password not matching!
                           </div>
	                </div>

	                <div class="form-outline mb-4">
	                <label class="form-label" for="email">Email ID</label>
	                  <input type="email" id="email" required name="email1" class="form-control form-control-lg" />
	                  
	                  <div class="invalid-feedback">
                           Enter valid email!
                           </div>
	                </div>
	
	                <div class="d-flex justify-content-end pt-3">
	                  <a  class="btn btn-light btn-lg" href="login.jsp">Login</a>
	                  <button type="submit" class="btn btn-warning btn-lg ms-2">Submit form</button>
	                </div>
				  </form>
	              </div>

	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
  </head>
  <body>
	<script src="form.js"></script>
	<style>
.form-control.is-invalid, .was-validated .form-control.invalid {
	background-image:
		url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 12 12' width='12' height='12' fill='none' stroke='%23dc3545'%3e%3ccircle cx='6' cy='6' r='4.5'/%3e%3cpath stroke-linejoin='round' d='M5.8 3.6h.4L6 6.5z'/%3e%3ccircle cx='6' cy='8.2' r='.6' fill='%23dc3545' stroke='none'/%3e%3c/svg%3e")
		!important;
	border-color: #dc3545 !important;
	padding-right: calc(1.5em + 0.75rem) !important;
	background-repeat: no-repeat !important;
	background-position: right calc(0.375em + 0.1875rem) center !important;
	background-size: calc(0.75em + 0.375rem) calc(0.75em + 0.375rem)
		!important;
}

.form-control.is-valid, .was-validated .form-control.valid {
	border-color: #198754 !important;
	padding-right: calc(1.5em + 0.75rem) !important;
	background-repeat: no-repeat !important;
	background-position: right calc(0.375em + 0.1875rem) center !important;
	background-size: calc(0.75em + 0.375rem) calc(0.75em + 0.375rem)
		!important;
}
</style>
</body>
</html>