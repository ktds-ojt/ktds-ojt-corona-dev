<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="components/head.jsp"%>
<body id="page-top">
  <div id="app">
    <div id="wrapper">

      <!-- SideBar Start -->
      <!-- ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■  -->
      <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
          <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/main">
          <div class="sidebar-brand-icon rotate-n-15">
              <i class="fas fa-laugh-wink"></i>
          </div>
          <div class="sidebar-brand-text mx-3">KT DS</div>
          </a>
      
          <!-- Divider -->
          <hr class="sidebar-divider my-0">
      
          <!-- Nav Item - Dashboard -->
          <li class="nav-item active">
          <a class="nav-link" href="index.html">
              <i class="fas fa-fw fa-tachometer-alt"></i>
              <span>Dashboard</span></a>
          </li>
      
          <!-- Divider -->
          <hr class="sidebar-divider">
      </ul>
      <!-- ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■  -->
      <!-- SideBar END -->
      
      

      <!-- Main Content -->
      <!-- ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■  -->
      <div id="content-wrapper">
          <div id="content">

              <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
              </nav>

  
          <!-- Begin Page Content -->
          <div class="container-fluid">
              <!-- Begin DashBoard -->
              <div class="d-sm-flex align-items-center justify-content-between mb-4">
                      <h1 class="h3 mb-0 text-gray-800">관리자 페이지</h1>
              </div>
          </div>
          <%@ include file="components/Footer.jsp"%>
          </div>
      </div>
      <!-- ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■  -->
      <!-- Main Content END -->
  </div>
  </div>
</body>
<script>

var app = new Vue({
  el: "#app",
  data() {
      return {
          labels : [],
          priceData : [],
          useData : [],
      }
  },
  created () {
    const token = document.location.href.split("?")[1].split("=")[1]
    axios({
        method : 'post',
        url : 'http://localhost:8080/admin/check/token',
        // contentType: 'application/json',
        data : {
          "admin_TOKEN" : token,
        }
      }).then((response) => {
        
      }).catch((err) => {
        console.log(err)
        alert("당신은 관리자가 아닙니다.")
        location.replace('/')
      })
  }
})
</script>