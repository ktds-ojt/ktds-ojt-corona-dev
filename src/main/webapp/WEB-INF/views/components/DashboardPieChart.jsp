
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div>
<pie-chart height="240"></pie-chart>
</div>

<script>
Vue.component('pie-chart', {
  extends: VueChartJs.Pie,
  data : {
  },
  methods :{
    async init() {
        const array = (window.location.pathname).split('/')
        const DASHBOARD_GET_API_DASHBOARD_CITYSTATE_ID = "http://localhost:8080/api/dashboard/citystate/" + array[array.length-1];

        await axios.get(DASHBOARD_GET_API_DASHBOARD_CITYSTATE_ID).then((response) => {

            console.log(response.data)

            this.label = response.data[0]["DISEASE_NAME"]
            var array = []
            array.push(response.data[0]["CITY_STATE_SW"])
            array.push(response.data[0]["CITY_STATE_BS"])
            array.push(response.data[0]["CITY_STATE_DG"])
            array.push(response.data[0]["CITY_STATE_IC"])
            array.push(response.data[0]["CITY_STATE_GJ"])
            array.push(response.data[0]["CITY_STATE_DJ"])
            array.push(response.data[0]["CITY_STATE_US"])
            array.push(response.data[0]["CITY_STATE_SJ"])
            array.push(response.data[0]["CITY_STATE_GY"])
            array.push(response.data[0]["CITY_STATE_GW"])
            array.push(response.data[0]["CITY_STATE_CB"])
            array.push(response.data[0]["CITY_STATE_CN"])
            array.push(response.data[0]["CITY_STATE_JB"])
            array.push(response.data[0]["CITY_STATE_JN"])
            array.push(response.data[0]["CITY_STATE_GB"])
            array.push(response.data[0]["CITY_STATE_GN"])
            array.push(response.data[0]["CITY_STATE_JJ"])

            this.renderChart({
                labels: [
                    "서울", "부산", "대구", "인천", "광주",
                    "대전", "울산", "세종", "경기", "강원",
                    "충북", "충남", "전북", "전남", "경북",
                    "경남", "제주"],
                datasets: [{
                    backgroundColor: [
                        '#7E5ECD', '#48EFCF', '#487CCF', '#92BED0', '#48EFBA',
                        '#92BEF1', '#7D7DE1', '#A880BE', '#2e59d9', '#17a673',
                        '#2c9faf', '#E085D5', '#D3ACC9', '#B993BC', '#9A4495',
                        '#C2F1B3', '#C2F160'],
                    hoverBackgroundColor: [
                        '#7E5ECD', '#48EFCF', '#487CCF', '#92BED0', '#48EFBA',
                        '#92BEF1', '#7D7DE1', '#A880BE', '#2e59d9', '#17a673',
                        '#2c9faf', '#E085D5', '#D3ACC9', '#B993BC', '#9A4495',
                        '#C2F1B3', '#C2F160'],
                    hoverBorderColor: "rgba(234, 236, 244, 1)",
                    data: array,
                }],
                options: {
                    maintainAspectRatio: false,
                    tooltips: {
                        backgroundColor: "rgb(255,255,255)",
                        bodyFontColor: "#858796",
                        borderColor: '#dddfeb',
                        borderWidth: 1,
                        xPadding: 15,
                        yPadding: 15,
                        displayColors: false,
                        caretPadding: 10,
                    },
                legend: {
                    display: false
                },
                title: {
                    dislplay: false,
                },
                cutoutPercentage: 80,
            },
        })
      }).catch(errors => {
        console.log(errors)
      })
    }
  },

  created () {  
    this.init()
  },

  mounted () {
  },
})
</script>