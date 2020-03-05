<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<my-highchart></my-highchart>

<script>
Vue.use(HighchartsVue.default)

Vue.component('my-highchart', {
    el : "#chart",
    template: '<highcharts :options="chartOptions"></highcharts>',
    data () {
        return {
            labels : [],
            conCntData : [],
            deadCntData : [],
        }
    },
    mounted () {
        this.Initialize()
    },
    methods : {
        Initialize () {
            const curURLArray = (window.location.pathname).split('/')
            this.url = curURLArray[curURLArray.length-1];   

            const array = (window.location.pathname).split('/')
            const WORLD_DASHBOARD_GET_API_CHART = "/api/worlddashboard/worldstate/chart/" + array[array.length-1];

            axios.get(WORLD_DASHBOARD_GET_API_CHART).then((response) => {
                this.labels = response.data.map(r => r["WORLD_CUR_STATE_NATION"])
                this.conCntData = response.data.map(r => r["WORLD_CUR_STATE_CON_CNT"])
                this.deadCntData = response.data.map(r => r["WORLD_CUR_STATE_DEAD_CNT"])
            })
        }
    },
    computed : {
        chartOptions() {
            return {
                chart: {
                    zoomType: 'xy',
                    inverted: true,
                    height: 1500,
                },
                title: {
                    text: 'Source : https://www.who.int/emergencies/diseases/novel-coronavirus-2019/situation-reports/'
                },
                // subtitle: {
                //     text: 
                // },
                xAxis: [{
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
                        text: '',
                        style: {
                            color: Highcharts.getOptions().colors[1]
                        }
                    }
                }, { // Secondary yAxis
                    title: {
                        text: '',
                        style: {
                            color: Highcharts.getOptions().colors[0]
                        }
                    },
                    labels: {
                        format: '',
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
                    verticalAlign: 'top',
                    backgroundColor:
                        Highcharts.defaultOptions.legend.backgroundColor || // theme
                        'rgba(255,255,255,0.25)'
                },
                series: [{
                    name: '확진자',
                    type: 'column',
                    yAxis: 1,
                    data: this.conCntData,
                    tooltip: {
                        valueSuffix: ' 명'
                    }

                }, {
                    name: '사망자',
                    type : 'spline',
                    data: this.deadCntData,
                    tooltip: {
                        valueSuffix: ' 명'
                    }
                }]
            }
        }
    }
})
</script>