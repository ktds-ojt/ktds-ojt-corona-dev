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
                  <h1 class="h4 text-gray-900 mb-4">Please Login</h1>
                </div>

                  <div>
                  <div class="form-group">
                    <input type="text" v-model="username"
                    class="form-control form-control-user" id="username" placeholder="Enter ID"/>
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
 })
</script>
