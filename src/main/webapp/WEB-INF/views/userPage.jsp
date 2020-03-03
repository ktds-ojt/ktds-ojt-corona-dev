<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <script src="https://vuejs.org/js/vue.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.6.11/vue.min.js"></script>
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/vue-router/3.1.3/vue-router.js"></script>

        <script src="https://unpkg.com/vue@2.6.10/dist/vue.js"></script>
<script src="https://unpkg.com/vue-select@latest"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/highcharts-vue@1.3.5/dist/highcharts-vue.min.js"></script>
        
    </head>
    <body>
        <div id="app">
            <div>
                    <highcharts :options="chartOptions" ></highcharts>
            </div>
        </div>
    </body>
</html>
<script>
Vue.use(HighchartsVue.default)

Vue.component('v-select', VueSelect.VueSelect);
 
var app = new Vue({
    el: "#app",
    data() {
        return {
            labels : [],
            priceData : [],
            useData : [],
        }
    },
    mounted () {
        this.Initialize()
    },
    methods : {
        Initialize () {
            console.log("Start Chart")
            axios.get("http://localhost:8080/api/user/testdb1").then((response) => {
                console.log(response)

                this.labels = response.data.map(r => r["TEST_DB_TIME"])
                this.priceData = response.data.map(r => r["TEST_DB_PRICE"])
                this.useData = response.data.map(r => r["TEST_DB_USE"])
                this.costData = response.data.map(r => r["TEST_DB_COST"])

                console.log(this.labels)
                console.log(this.priceData)
                console.log(this.useData)
                console.log(this.costData)
            })
        }
    },
    computed : {
        chartOptions() {
            return {
                chart: {
                    zoomType: 'xy'
                },
                title: {
                    text: 'kt ds OJT 2020-03-03 과제'
                },
                subtitle: {
                    text: 'TEST_DB_1'
                },
                xAxis: [{
                    title: "시간(시)",
                    categories : this.labels,
                    crosshair: true
                }],
                yAxis: [{ // Primary yAxis
                    labels: {
                        format: '{value}',
                        style: {
                            color: Highcharts.getOptions().colors[1]
                        }
                    },
                    title: {
                        text: '전기소비량(kWh)',
                        style: {
                            color: Highcharts.getOptions().colors[1]
                        }
                    }
                }, { // Secondary yAxis
                    title: {
                        text: '전기요금',
                        style: {
                            color: Highcharts.getOptions().colors[0]
                        }
                    },
                    labels: {
                        format: '{value} K',
                        style: {
                            color: Highcharts.getOptions().colors[0]
                        }
                    },
                    opposite: true
                }],
                tooltip: {
                    shared: true
                },
                legend: {
                    backgroundColor:
                        Highcharts.defaultOptions.legend.backgroundColor || // theme
                        'rgba(255,255,255,0.25)'
                },
                series: [{
                    name: '전기요금',
                    type: 'column',
                    yAxis: 1,
                    data: this.priceData,
                    tooltip: {
                        valueSuffix: ' 원'
                    }

                }, {
                    name: '전기소비량',
                    data: this.useData,
                    tooltip: {
                        valueSuffix: ' kWh'
                    }
                }]
            }
        }
    }
})
</script>