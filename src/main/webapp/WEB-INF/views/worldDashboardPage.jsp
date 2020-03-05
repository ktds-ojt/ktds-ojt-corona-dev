<%@ include file="components/head.jsp"%>
<body id="page-top">
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div id="app">
    <div id="wrapper">

        <!-- SideBar Start -->
        <!-- ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■  -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
              <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
              </div>
              <div class="sidebar-brand-text mx-3">KT DS</div>
            </a>
        
            <!-- Divider -->
            <hr class="sidebar-divider my-0">
        
            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
              <a class="nav-link" v-bind:href="'/dashboard/' + url">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Dashboard</span></a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" v-bind:href="'/worlddashboard/' + url">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>World Dashboard</span></a>
            </li>
        
            <!-- Divider -->
            <hr class="sidebar-divider">
        
            
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">
            <div class="text-center d-none d-md-inline">
              <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
        </ul>
        <!-- ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■  -->
        <!-- SideBar END -->

        <!-- Main Content -->
        <!-- ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■  -->
        <div id="content-wrapper">
          <div id="content">

            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
            </nav>

            <div class="container-fluid">

              <!-- Begin DashBoard -->
              <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0 text-gray-800">세계 상황판</h1>
              </div>

              <div class="row">
                  <div class="col-xl-12 col-md-12 mb-4">
                      <div class="card border-left-primary shadow h-100 py-2">
                          <div class="card-body">
                              <div class="row no-gutters align-items-center">
                                  <div class="col mr-2">
                                      <!-- <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Today</div> -->
                                      <div class="h5 mb-0 font-weight-bold text-gray-800">Today : {{ CardContent[0] }}</div>
                                  </div>
                              </div>                                    
                          </div>
                      </div>
                  </div>

                  <div class="col-xl-6 col-md-12 mb-4">
                      <div class="card bg-warning text-white shadow py-2">
                          <div class="card-body">
                              <div class="row no-gutters align-items-center">
                                  <div class="col mr-2">
                                      <!-- <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Today</div> -->
                                      <div class="h5 mb-0 font-weight-bold text-gray-100">확진자 : {{ CardContent[1] }} +( {{ CardContent[2] }} )</div>
                                      <div class="text-white-50 small">  </div>
                                  </div>
                              </div>
                          </div>
                        </div>
                  </div>

                  <div class="col-xl-6 col-md-12 mb-4">
                      <div class="card bg-danger text-white shadow py-2">
                          <div class="card-body">
                              <div class="row no-gutters align-items-center">
                                  <div class="col mr-2">
                                      <!-- <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Today</div> -->
                                      <div class="h5 mb-0 font-weight-bold text-gray-100">사망자 : {{ CardContent[3] }} +( {{ CardContent[4] }} )</div>
                                      <div class="text-white-50 small">  </div>
                                  </div>
                              </div>
                          </div>
                        </div>
                  </div>
              </div>

              <div class="row">
                <div class="col-xl-12 col-lg-12">
                  <div class="card shadow mb-4">
                    <!-- Card Header - Dropdown -->
                      <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                          <h6 class="m-0 font-weight-bold text-primary">실시간 전세계 확진자 사망자 현황</h6>
                      </div>
                      <!-- Card Body -->
                      <div class="card-body">
                          <%@ include file="components/WorldDashboardBarChart.jsp"%>
                          <!-- <div class="mt-4 text-center small">
                              <span class="mr-2">
                                  <i class="fas fa-circle text-primary"></i> 
                              </span>
                          </div>                                         -->
                      <hr>
                      </div>
                  </div>
                </div>
              </div>

              <div class ="row"></div>


            </div>
          </div>
          <%@ include file="components/Footer.jsp"%>
        </div>
        <!-- ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■ ■  -->
        <!-- Main Content END -->
      </div>
    </div>
</div>
</body>

<script>
var app = new Vue({
    el: '#app',
    data : {
      url : '',
      CardContent : [],
    },
    created() {

      
      var date = new Date();
      
      const updateDate = date.getFullYear() + "-"  + (date.getMonth()+1) + "-" + (date.getDay())

      this.CardContent.push(updateDate)

      const curURLArray = (window.location.pathname).split('/')
      this.url = curURLArray[curURLArray.length-1];

      const array = (window.location.pathname).split('/')
      const WORLD_DASHBOARD_GET_API = "/api/worlddashboard/worldstate/" + array[array.length-1];
      const WORLD_DASHBOARD_GET_API_TODAY = "/api/worlddashboard/worldstate/today/" + array[array.length-1];
      const WORLD_DASHBOARD_GET_API_YESTERDAY = "/api/worlddashboard/worldstate/yesterday/" + array[array.length-1];

      const worldState = axios.get(WORLD_DASHBOARD_GET_API);
      const worldStateToday = axios.get(WORLD_DASHBOARD_GET_API_TODAY);
      const worldStateYesterday = axios.get(WORLD_DASHBOARD_GET_API_YESTERDAY);

      axios.all([worldState, worldStateToday, worldStateYesterday]).then(axios.spread((...responses) => {

        this.CardContent.push(responses[1].data[0]["CON_CNT"])
        this.CardContent.push(responses[1].data[0]["CON_CNT"] - responses[2].data[0]["CON_CNT"])
        this.CardContent.push(responses[1].data[0]["DEAD_CNT"])
        this.CardContent.push(responses[1].data[0]["DEAD_CNT"] - responses[2].data[0]["DEAD_CNT"])

      })).catch(errors => {

      })
    },
})

</script>