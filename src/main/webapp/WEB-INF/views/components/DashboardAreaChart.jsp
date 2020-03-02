
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<line-chart height=240></line-chart>

<script>
Vue.component('line-chart', {
  extends: VueChartJs.Line,
  data : {
      label : '',
      lables : [],
      data : []
  },
  methods :{
    async init() {
      const array = (window.location.pathname).split('/')
      const DASHBOARD_GET_API_DASHBOARD_CITYSTATE_ID = "http://localhost:8080/api/dashboard/curstate/" + array[array.length-1];

      await axios.get(DASHBOARD_GET_API_DASHBOARD_CITYSTATE_ID).then((response) => {

         this.label = response.data[0]["DISEASE_NAME"]
        this.labels = response.data.map(r => r["CUR_STATE_DATE"])
        this.data = response.data.map(r => r["CUR_STATE_CON_CNT"])

    this.renderChart({
      labels: this.labels.reverse(),
      datasets: [{
      label: this.label,
      lineTension: 0.3,
      backgroundColor: "rgba(78, 115, 223, 0.05)",
      borderColor: "rgba(78, 115, 223, 1)",
      pointRadius: 3,
      pointBackgroundColor: "rgba(78, 115, 223, 1)",
      pointBorderColor: "rgba(78, 115, 223, 1)",
      pointHoverRadius: 3,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 10,
      pointBorderWidth: 2,
      data: this.data.reverse(),
    }],

    options: {
      maintainAspectRatio: false,
      layout: {
        padding: {
          left: 10,
          right: 25,
          top: 25,
          bottom: 0
        }
      },
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false,
          drawBorder: false
        },
        ticks: {
          maxTicksLimit: 7
        }
      }],
      yAxes: [{
        ticks: {
          maxTicksLimit: 5,
          padding: 10,
          // Include a dollar sign in the ticks
          callback: function(value, index, values) {
            return '$' + number_format(value);
          }
        },
        gridLines: {
          color: "rgb(234, 236, 244)",
          zeroLineColor: "rgb(234, 236, 244)",
          drawBorder: false,
          borderDash: [2],
          zeroLineBorderDash: [2]
        }
      }],
    },
    legend: {
      display: false
    },
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 14,
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 1,
      displayColors: false,
      intersect: false,
      mode: 'index',
      caretPadding: 10,
      callbacks: {
        label: function(tooltipItem, chart) {
          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
          return datasetLabel + ': $' + number_format(tooltipItem.yLabel);
        }
      }
    }
  }})
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