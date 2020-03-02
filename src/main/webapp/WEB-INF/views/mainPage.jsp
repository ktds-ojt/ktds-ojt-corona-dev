<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="components/head.jsp"%>
<body>
  <div id="app">
    <!-- 404 Error Text -->
    <div class="text-center">
      <div class="error mx-auto" data-text="KTDS">KTDS</div>
      <p class="lead text-gray-800 mb-5">2020 KT DS 신입사원 OJT</p>

      <div class="maincenter col-lg-6">
        <div class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">알아보고 싶은 정보를 클릭하세요.</h6>
          </div>

          <div class="card-body">
            <ul v-for="d in DISEASE">
              <a v-bind:href="'/dashboard/' + d.DISEASE_ID" class="btn btn-facebook btn-block">
                <span class="icon text-white-50">
                  <i class="fas fa-flag"></i>
                </span>
                <span class="text">{{ d.DISEASE_NAME }}</span>
              </a>
            </ul>

          </div>
        </div>
      </div>

    </div>

            
  </div> 
  <%@ include file="components/Footer.jsp"%>
</body>

<script>
var app = new Vue({
  el: '#app',
  data:{
    DISEASE : []
  },
  created: function () {
    console.log("Start MainPage.jsp")
    axios.get('http://localhost:8080/api/main').then((response) => {
      console.log(response)
      this.DISEASE = response.data.map(res => res)
      return 200;
    }).catch((error) => {
      console.log(error)
      return 500;
    })
  }

  
})
</script>
  

<style>
  .maincenter {
    margin: auto;
  }
</style>