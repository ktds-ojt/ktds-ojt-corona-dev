<%@ include file="components/head.jsp"%>
<body id="page-top">
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
    el: '#app',
    data : {
    },
    created() {

        const array = (window.location.pathname).split('/')
        const WORLD_DASHBOARD_GET_API = "/api/worlddashboard/worldstate/" + array[array.length-1];
        const WORLD_DASHBOARD_GET_API_CHART = "/api/worlddashboard/worldstate/chart/" + array[array.length-1];
        const WORLD_DASHBOARD_GET_API_TODAY = "/api/worlddashboard/worldstate/today/" + array[array.length-1];
        const WORLD_DASHBOARD_GET_API_YESTERDAY = "/api/worlddashboard/worldstate/yesterday/" + array[array.length-1];

        const worldState = axios.get(WORLD_DASHBOARD_GET_API);
        const worldStateChart = axios.get(WORLD_DASHBOARD_GET_API_CHART);
        const worldStateToday = axios.get(WORLD_DASHBOARD_GET_API_TODAY);
        const worldStateYesterday = axios.get(WORLD_DASHBOARD_GET_API_YESTERDAY);

        axios.all([worldState, worldStateChart, worldStateToday, worldStateYesterday]).then(axios.spread((...responses) => {
            console.log(responses[0].data)
            console.log(responses[1].data)
            console.log(responses[2].data)
            console.log(responses[3].data)

        })).catch(errors => {

        })
    },
})

</script>