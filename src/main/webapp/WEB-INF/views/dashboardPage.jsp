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

    
            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Begin DashBoard -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800"> {{ mainContentTitle }} 상환판</h1>
                </div>

                <div class="row">

                    <div class="col-xl-6 col-md-12 mb-4">
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

                    <div class="col-xl-6 col-md-12 mb-4">
                        <div class="card bg-info text-white shadow py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <!-- <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Today</div> -->
                                        <div class="h5 mb-0 font-weight-bold text-gray-100">격리해제 : {{ CardContent[5] }} +( {{ CardContent[6] }} )</div>
                                        <div class="text-white-50 small">  </div>
                                    </div>
                                </div>
                            </div>
                          </div>
                    </div>

                    <div class="col-xl-6 col-md-12 mb-4">
                        <div class="card bg-primary text-white shadow py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <!-- <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Today</div> -->
                                        <div class="h5 mb-0 font-weight-bold text-gray-100">검사중 : {{ CardContent[7] }} +( {{ CardContent[8] }} )</div>
                                        <div class="text-white-50 small">  </div>
                                    </div>
                                </div>
                            </div>
                          </div>
                    </div>

                    <div class="col-xl-6 col-md-12 mb-4">
                        <div class="card bg-success text-white shadow py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <!-- <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Today</div> -->
                                        <div class="h5 mb-0 font-weight-bold text-gray-100">결과 음성 : {{ CardContent[9] }} +( {{ CardContent[10] }} )</div>
                                        <div class="text-white-50 small">  </div>
                                    </div>
                                </div>
                            </div>
                          </div>
                    </div>

                </div>
                <div class="row">

                    <!-- Area Chart -->
                    <div class="col-xl-6 col-lg-6">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                <h6 class="m-0 font-weight-bold text-primary">일별 확진자 현황</h6>
                            </div>
                            <div class="card-body">
                                <div id="chart-area">
                                    <%@ include file="components/DashboardAreaChart.jsp"%>
                                </div>
                            </div>
                            <hr>
                            </div>
                        </div>
                    

                    <div class="col-xl-6 col-lg-6">
                        <div class="card shadow mb-4">
                          <!-- Card Header - Dropdown -->
                            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                <h6 class="m-0 font-weight-bold text-primary">실시간 도시별 확진자 현황</h6>
                            </div>
                            <!-- Card Body -->
                            <div class="card-body">

                                <%@ include file="components/DashboardPieChart.jsp"%>
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
                <div class="row">
                    <div class="col-md-8"></div>
                    <div class="col-md-4"></div>
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
    
    el: '#app',
    data : {
        mainContentTitle : '',
        CardContent : [],
    },
    created() {

        this.FetchMultipleURL();
    },
    mounted() {

    },
    methods: {
        async FetchMultipleURL(){
            const array = (window.location.pathname).split('/')

            const DASHBOARD_GET_API_DASHBOARD_CURSTATE_ID = "http://localhost:8080/api/dashboard/curstate/" + array[array.length-1];
            const DASHBOARD_GET_API_DASHBOARD_DISEASE_ID = "http://localhost:8080/api/dashboard/disease/" + array[array.length-1];

            const reqCurState = axios.get(DASHBOARD_GET_API_DASHBOARD_CURSTATE_ID);
            const reqDisease = axios.get(DASHBOARD_GET_API_DASHBOARD_DISEASE_ID);

            await axios.all([reqCurState, reqDisease]).then(axios.spread((...responses) => {
                const responseCurState = responses[0].data
                const responseDisease = responses[1].data

                this.mainContentTitle = responseDisease["disease_NAME"]
                this.CardContent.push(responseCurState[0]["CUR_STATE_DATE"])
                this.CardContent.push(responseCurState[0]["CUR_STATE_CON_CNT"])
                this.CardContent.push(responseCurState[0]["CUR_STATE_CON_CNT"] - responseCurState[1]["CUR_STATE_CON_CNT"])
                this.CardContent.push(responseCurState[0]["CUR_STATE_UNCON_CNT"])
                this.CardContent.push(responseCurState[0]["CUR_STATE_UNCON_CNT"] - responseCurState[1]["CUR_STATE_UNCON_CNT"])
                this.CardContent.push(responseCurState[0]["CUR_STATE_DEAD_CNT"])
                this.CardContent.push(responseCurState[0]["CUR_STATE_DEAD_CNT"] - responseCurState[1]["CUR_STATE_DEAD_CNT"])
                this.CardContent.push(responseCurState[0]["CUR_STATE_INV_CNT"])
                this.CardContent.push(responseCurState[0]["CUR_STATE_INV_CNT"] - responseCurState[1]["CUR_STATE_INV_CNT"])
                this.CardContent.push(responseCurState[0]["CUR_STATE_UNINV_CNT"])
                this.CardContent.push(responseCurState[0]["CUR_STATE_UNINV_CNT"] - responseCurState[1]["CUR_STATE_UNINV_CNT"])

            })).catch(errors => {

            })
        },
    }
})

</script>
