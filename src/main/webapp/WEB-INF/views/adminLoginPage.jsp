<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="components/head.jsp"%>
<body class="bg-gradient-primary">
<!-- Outer Row -->
<div id="app">
  <div class="row justify-content-center">
    <div class="col-xl-10 col-lg-12 col-md-9">
      <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
          <!-- Nested Row within Card Body -->
          <div class="row">
            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
            <div class="col-lg-6">
              <div class="p-5">
                <div class="text-center">
                  <h1 class="h4 text-gray-900 mb-4">Please Login Administrator</h1>
                </div>

                  <div>
                  <div class="form-group">
                    <input type="text" v-model="username"
                    class="form-control form-control-user" id="username" placeholder="Enter Administrator ID"/>
                  </div>
                  <div class="form-group">
                    <input type="password" v-model="password"
                    class="form-control form-control-user" id="password" placeholder="Password">
                  </div>
                  <div class="form-group">
                  </div>
                  <input class="btn btn-primary btn-user btn-block" type="submit" v-on:click="login" value="Submit"/>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>

<script>
var app = new Vue({
        el: '#app',
        data:{
            username: '',
            password: '',
        },
        methods: {
            login(){
                //coronaadmin = Y29yb25hYWRtaW4=
                const EncodingUsername = btoa(this.username);
                //coronapassword = Y29yb25hcGFzc3dvcmQ=
                const EncodingPassword = btoa(this.password);
                
                axios.get('http://localhost:8080/api/login').then((response) => {
                  const idCheck = response["data"][0]["ADMIN_LOGIN_ID"] == EncodingUsername;
                  const pwCheck = response["data"][0]["ADMIN_LOGIN_PW"] == EncodingPassword;

                  if (idCheck && pwCheck){
                    window.location.replace("/admin")
                    return true;
                  }
                  else {
                    alert("Check Your Id or PassWord")
                    return false;
                  }
                })
              }
            }
        })
    // SIGNIN_GET_API_LOGIN : function() {
    //   console.log("Button Click")
    //   axios.get('http://localhost:8080/api/login').then((result) => {
    //     console.log(result)
    //     alert("message")
    //   })
    // },
</script>
