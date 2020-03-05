
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<mychart></mychart>


<script>
  
Vue.component("mychart", {
    template : '<div ref="chartdiv" style="width: 100%; height: 700px;"></div>',
    mounted () {
        am4core.useTheme(am4themes_frozen);
        var chart = am4core.create(this.$refs.chartdiv, am4maps.MapChart);
        // chart.height= 1000
        // chart.minHeight= 1000

        chart.geodata = am4geodata_worldLow;

        // Set projection
        chart.projection = new am4maps.projections.NaturalEarth1();

        chart.panBehavior = "rotateLong";

        // Create map polygon series
        var polygonSeries = chart.series.push(new am4maps.MapPolygonSeries());

        const curURLArray = (window.location.pathname).split('/')
        this.url = curURLArray[curURLArray.length-1];   

        const array = (window.location.pathname).split('/')
        const WORLD_DASHBOARD_GET_API_CHART = "/api/worlddashboard/worldstate/chart/" + array[array.length-1];
        axios.get(WORLD_DASHBOARD_GET_API_CHART).then((response) => {
            polygonSeries.data = this.mappingNation(response.data)
        }).catch((error) => {
            console.log(error)
        })

        // Make map load polygon (like country names) data from GeoJSON
        polygonSeries.useGeodata = true;

        polygonSeries.mapPolygons.template.fillOpacity = 0.6;
        polygonSeries.mapPolygons.template.nonScalingStroke = true;
        polygonSeries.mapPolygons.template.strokeWidth = 0.5;

        polygonSeries.heatRules.push({
  property: "fill",
  target: polygonSeries.mapPolygons.template,
  min: am4core.color("#F8E2E2"),
  max: am4core.color("#681009")
});

        var polygonTemplate = polygonSeries.mapPolygons.template;
        polygonTemplate.tooltipText = "{name}\n 확진자 : {value}\n 사망자 : {deadCnt}";

        // Create hover state and set alternative fill color
        var hs = polygonTemplate.states.create("hover");
        hs.properties.fill = "#923250"



        // Center on Pacic
        chart.deltaLongitude = -154.8;

        var graticuleSeries = chart.series.push(new am4maps.GraticuleSeries());
        graticuleSeries.fitExtent = false;
    },

    methods : {
        mappingNation (response) {
            mapdata = [
                {"id" : "TV", "name" : "Tuvalu", "value" : 0, "deadCnt" : 0},
                {"id" : "BV", "name" : "Bouvet Island", "value" : 0, "deadCnt" : 0},
                {"id" : "GI", "name" : "Gibraltar", "value" : 0, "deadCnt" : 0},
                {"id" : "GO", "name" : "Glorioso Islands", "value" : 0, "deadCnt" : 0},
                {"id" : "JU", "name" : "Juan De Nova Island", "value" : 0, "deadCnt" : 0},
                {"id" : "UM-DQ", "name" : "Jarvis Island", "value" : 0, "deadCnt" : 0},
                {"id" : "UM-FQ", "name" : "Baker Island", "value" : 0, "deadCnt" : 0},
                {"id" : "UM-HQ", "name" : "Howland Island", "value" : 0, "deadCnt" : 0},
                {"id" : "UM-JQ", "name" : "Johnston Atoll", "value" : 0, "deadCnt" : 0},
                {"id" : "UM-MQ", "name" : "Midway Islands", "value" : 0, "deadCnt" : 0},
                {"id" : "UM-WQ", "name" : "Wake Island", "value" : 0, "deadCnt" : 0},
                {"id" : "BQ", "name" : "Bonair, Saint Eustachius and Saba", "value" : 0, "deadCnt" : 0},
                {"id" : "NL", "name" : "Netherlands", "value" : 0, "deadCnt" : 0},
                {"id" : "ZW", "name" : "Zimbabwe", "value" : 0, "deadCnt" : 0},
                {"id" : "ZM", "name" : "Zambia", "value" : 0, "deadCnt" : 0},
                {"id" : "ZA", "name" : "South Africa", "value" : 0, "deadCnt" : 0},
                {"id" : "YE", "name" : "Yemen", "value" : 0, "deadCnt" : 0},
                {"id" : "WS", "name" : "Samoa", "value" : 0, "deadCnt" : 0},
                {"id" : "WF", "name" : "Wallis and Futuna", "value" : 0, "deadCnt" : 0},
                {"id" : "PS", "name" : "Palestinian Territories", "value" : 0, "deadCnt" : 0},
                {"id" : "VU", "name" : "Vanuatu", "value" : 0, "deadCnt" : 0},
                {"id" : "VN", "name" : "Vietnam", "value" : 0, "deadCnt" : 0},
                {"id" : "VI", "name" : "US Virgin Islands", "value" : 0, "deadCnt" : 0},
                {"id" : "VG", "name" : "British Virgin Islands", "value" : 0, "deadCnt" : 0},
                {"id" : "VE", "name" : "Venezuela", "value" : 0, "deadCnt" : 0},
                {"id" : "VC", "name" : "Saint Vincent and the Grenadines", "value" : 0, "deadCnt" : 0},
                {"id" : "VA", "name" : "Vatican City", "value" : 0, "deadCnt" : 0},
                {"id" : "UZ", "name" : "Uzbekistan", "value" : 0, "deadCnt" : 0},
                {"id" : "US", "name" : "United States", "value" : 0, "deadCnt" : 0},
                {"id" : "UY", "name" : "Uruguay", "value" : 0, "deadCnt" : 0},
                {"id" : "UA", "name" : "Ukraine", "value" : 0, "deadCnt" : 0},
                {"id" : "UG", "name" : "Uganda", "value" : 0, "deadCnt" : 0},
                {"id" : "TZ", "name" : "Tanzania", "value" : 0, "deadCnt" : 0},
                {"id" : "TW", "name" : "Taiwan", "value" : 0, "deadCnt" : 0},
                {"id" : "TR", "name" : "Turkey", "value" : 0, "deadCnt" : 0},
                {"id" : "TN", "name" : "Tunisia", "value" : 0, "deadCnt" : 0},
                {"id" : "TT", "name" : "Trinidad and Tobago", "value" : 0, "deadCnt" : 0},
                {"id" : "TO", "name" : "Tonga", "value" : 0, "deadCnt" : 0},
                {"id" : "TL", "name" : "Timor-Leste", "value" : 0, "deadCnt" : 0},
                {"id" : "TM", "name" : "Turkmenistan", "value" : 0, "deadCnt" : 0},
                {"id" : "TK", "name" : "Tokelau", "value" : 0, "deadCnt" : 0},
                {"id" : "TJ", "name" : "Tajikistan", "value" : 0, "deadCnt" : 0},
                {"id" : "TH", "name" : "Thailand", "value" : 0, "deadCnt" : 0},
                {"id" : "TG", "name" : "Togo", "value" : 0, "deadCnt" : 0},
                {"id" : "TD", "name" : "Chad", "value" : 0, "deadCnt" : 0},
                {"id" : "TC", "name" : "Turks and Caicos Islands", "value" : 0, "deadCnt" : 0},
                {"id" : "SY", "name" : "Syria", "value" : 0, "deadCnt" : 0},
                {"id" : "SC", "name" : "Seychelles", "value" : 0, "deadCnt" : 0},
                {"id" : "SX", "name" : "Sint Maarten", "value" : 0, "deadCnt" : 0},
                {"id" : "SZ", "name" : "eSwatini", "value" : 0, "deadCnt" : 0},
                {"id" : "SE", "name" : "Sweden", "value" : 0, "deadCnt" : 0},
                {"id" : "SI", "name" : "Slovenia", "value" : 0, "deadCnt" : 0},
                {"id" : "SK", "name" : "Slovakia", "value" : 0, "deadCnt" : 0},
                {"id" : "SR", "name" : "Suriname", "value" : 0, "deadCnt" : 0},
                {"id" : "ST", "name" : "Sao Tome and Principe", "value" : 0, "deadCnt" : 0},
                {"id" : "RS", "name" : "Serbia", "value" : 0, "deadCnt" : 0},
                {"id" : "PM", "name" : "Saint Pierre and Miquelon", "value" : 0, "deadCnt" : 0},
                {"id" : "SO", "name" : "Somalia", "value" : 0, "deadCnt" : 0},
                {"id" : "SM", "name" : "San Marino", "value" : 0, "deadCnt" : 0},
                {"id" : "SV", "name" : "El Salvador", "value" : 0, "deadCnt" : 0},
                {"id" : "SL", "name" : "Sierra Leone", "value" : 0, "deadCnt" : 0},
                {"id" : "SB", "name" : "Solomon Islands", "value" : 0, "deadCnt" : 0},
                {"id" : "SH", "name" : "Saint Helena", "value" : 0, "deadCnt" : 0},
                {"id" : "GS", "name" : "South Georgia and South Sandwich Islands", "value" : 0, "deadCnt" : 0},
                {"id" : "SG", "name" : "Singapore", "value" : 0, "deadCnt" : 0},
                {"id" : "SN", "name" : "Senegal", "value" : 0, "deadCnt" : 0},
                {"id" : "SS", "name" : "South Sudan", "value" : 0, "deadCnt" : 0},
                {"id" : "SD", "name" : "Sudan", "value" : 0, "deadCnt" : 0},
                {"id" : "SA", "name" : "Saudi Arabia", "value" : 0, "deadCnt" : 0},
                {"id" : "EH", "name" : "Western Sahara", "value" : 0, "deadCnt" : 0},
                {"id" : "RW", "name" : "Rwanda", "value" : 0, "deadCnt" : 0},
                {"id" : "RU", "name" : "Russia", "value" : 0, "deadCnt" : 0},
                {"id" : "RO", "name" : "Romania", "value" : 0, "deadCnt" : 0},
                {"id" : "RE", "name" : "Reunion", "value" : 0, "deadCnt" : 0},
                {"id" : "QA", "name" : "Qatar", "value" : 0, "deadCnt" : 0},
                {"id" : "PF", "name" : "French Polynesia", "value" : 0, "deadCnt" : 0},
                {"id" : "PY", "name" : "Paraguay", "value" : 0, "deadCnt" : 0},
                {"id" : "PT", "name" : "Portugal", "value" : 0, "deadCnt" : 0},
                {"id" : "KP", "name" : "North Korea", "value" : 0, "deadCnt" : 0},
                {"id" : "PR", "name" : "Puerto Rico", "value" : 0, "deadCnt" : 0},
                {"id" : "PL", "name" : "Poland", "value" : 0, "deadCnt" : 0},
                {"id" : "PG", "name" : "Papua New Guinea", "value" : 0, "deadCnt" : 0},
                {"id" : "PW", "name" : "Palau", "value" : 0, "deadCnt" : 0},
                {"id" : "PH", "name" : "Philippines", "value" : 0, "deadCnt" : 0},
                {"id" : "PE", "name" : "Peru", "value" : 0, "deadCnt" : 0},
                {"id" : "PN", "name" : "Pitcairn Islands", "value" : 0, "deadCnt" : 0},
                {"id" : "PA", "name" : "Panama", "value" : 0, "deadCnt" : 0},
                {"id" : "PK", "name" : "Pakistan", "value" : 0, "deadCnt" : 0},
                {"id" : "OM", "name" : "Oman", "value" : 0, "deadCnt" : 0},
                {"id" : "NZ", "name" : "New Zealand", "value" : 0, "deadCnt" : 0},
                {"id" : "SJ", "name" : "Svalbard and Jan Mayen", "value" : 0, "deadCnt" : 0},
                {"id" : "NR", "name" : "Nauru", "value" : 0, "deadCnt" : 0},
                {"id" : "NP", "name" : "Nepal", "value" : 0, "deadCnt" : 0},
                {"id" : "NO", "name" : "Norway", "value" : 0, "deadCnt" : 0},
                {"id" : "NU", "name" : "Niue", "value" : 0, "deadCnt" : 0},
                {"id" : "NI", "name" : "Nicaragua", "value" : 0, "deadCnt" : 0},
                {"id" : "NG", "name" : "Nigeria", "value" : 0, "deadCnt" : 0},
                {"id" : "NF", "name" : "Norfolk Island", "value" : 0, "deadCnt" : 0},
                {"id" : "NE", "name" : "Niger", "value" : 0, "deadCnt" : 0},
                {"id" : "NC", "name" : "New Caledonia", "value" : 0, "deadCnt" : 0},
                {"id" : "NA", "name" : "Namibia", "value" : 0, "deadCnt" : 0},
                {"id" : "YT", "name" : "Mayotte", "value" : 0, "deadCnt" : 0},
                {"id" : "MY", "name" : "Malaysia", "value" : 0, "deadCnt" : 0},
                {"id" : "MW", "name" : "Malawi", "value" : 0, "deadCnt" : 0},
                {"id" : "MU", "name" : "Mauritius", "value" : 0, "deadCnt" : 0},
                {"id" : "MQ", "name" : "Martinique", "value" : 0, "deadCnt" : 0},
                {"id" : "MS", "name" : "Montserrat", "value" : 0, "deadCnt" : 0},
                {"id" : "MR", "name" : "Mauritania", "value" : 0, "deadCnt" : 0},
                {"id" : "MZ", "name" : "Mozambique", "value" : 0, "deadCnt" : 0},
                {"id" : "MP", "name" : "Northern Mariana Islands", "value" : 0, "deadCnt" : 0},
                {"id" : "MN", "name" : "Mongolia", "value" : 0, "deadCnt" : 0},
                {"id" : "ME", "name" : "Montenegro", "value" : 0, "deadCnt" : 0},
                {"id" : "MM", "name" : "Myanmar", "value" : 0, "deadCnt" : 0},
                {"id" : "MT", "name" : "Malta", "value" : 0, "deadCnt" : 0},
                {"id" : "ML", "name" : "Mali", "value" : 0, "deadCnt" : 0},
                {"id" : "MK", "name" : "North Macedonia", "value" : 0, "deadCnt" : 0},
                {"id" : "MH", "name" : "Marshall Islands", "value" : 0, "deadCnt" : 0},
                {"id" : "MX", "name" : "Mexico", "value" : 0, "deadCnt" : 0},
                {"id" : "MV", "name" : "Maldives", "value" : 0, "deadCnt" : 0},
                {"id" : "MG", "name" : "Madagascar", "value" : 0, "deadCnt" : 0},
                {"id" : "MD", "name" : "Moldova", "value" : 0, "deadCnt" : 0},
                {"id" : "MC", "name" : "Monaco", "value" : 0, "deadCnt" : 0},
                {"id" : "MA", "name" : "Morocco", "value" : 0, "deadCnt" : 0},
                {"id" : "MF", "name" : "Saint Martin", "value" : 0, "deadCnt" : 0},
                {"id" : "MO", "name" : "Macau", "value" : 0, "deadCnt" : 0},
                {"id" : "LV", "name" : "Latvia", "value" : 0, "deadCnt" : 0},
                {"id" : "LU", "name" : "Luxembourg", "value" : 0, "deadCnt" : 0},
                {"id" : "LT", "name" : "Lithuania", "value" : 0, "deadCnt" : 0},
                {"id" : "LS", "name" : "Lesotho", "value" : 0, "deadCnt" : 0},
                {"id" : "LK", "name" : "Sri Lanka", "value" : 0, "deadCnt" : 0},
                {"id" : "LI", "name" : "Liechtenstein", "value" : 0, "deadCnt" : 0},
                {"id" : "LC", "name" : "Saint Lucia", "value" : 0, "deadCnt" : 0},
                {"id" : "LY", "name" : "Libya", "value" : 0, "deadCnt" : 0},
                {"id" : "LR", "name" : "Liberia", "value" : 0, "deadCnt" : 0},
                {"id" : "LB", "name" : "Lebanon", "value" : 0, "deadCnt" : 0},
                {"id" : "LA", "name" : "Lao People's Democratic Republic", "value" : 0, "deadCnt" : 0},
                {"id" : "KW", "name" : "Kuwait", "value" : 0, "deadCnt" : 0},
                {"id" : "XK", "name" : "Kosovo", "value" : 0, "deadCnt" : 0},
                {"id" : "KR", "name" : "South Korea", "value" : 0, "deadCnt" : 0},
                {"id" : "KN", "name" : "Saint Kitts and Nevis", "value" : 0, "deadCnt" : 0},
                {"id" : "KI", "name" : "Kiribati", "value" : 0, "deadCnt" : 0},
                {"id" : "KH", "name" : "Cambodia", "value" : 0, "deadCnt" : 0},
                {"id" : "KG", "name" : "Kyrgyzstan", "value" : 0, "deadCnt" : 0},
                {"id" : "KE", "name" : "Kenya", "value" : 0, "deadCnt" : 0},
                {"id" : "KZ", "name" : "Kazakhstan", "value" : 0, "deadCnt" : 0},
                {"id" : "JP", "name" : "Japan", "value" : 0, "deadCnt" : 0},
                {"id" : "JO", "name" : "Jordan", "value" : 0, "deadCnt" : 0},
                {"id" : "JE", "name" : "Jersey", "value" : 0, "deadCnt" : 0},
                {"id" : "JM", "name" : "Jamaica", "value" : 0, "deadCnt" : 0},
                {"id" : "IT", "name" : "Italy", "value" : 0, "deadCnt" : 0},
                {"id" : "IL", "name" : "Israel", "value" : 0, "deadCnt" : 0},
                {"id" : "IS", "name" : "Iceland", "value" : 0, "deadCnt" : 0},
                {"id" : "IQ", "name" : "Iraq", "value" : 0, "deadCnt" : 0},
                {"id" : "IR", "name" : "Iran", "value" : 0, "deadCnt" : 0},
                {"id" : "IE", "name" : "Ireland", "value" : 0, "deadCnt" : 0},
                {"id" : "IO", "name" : "British Indian Ocean Territory", "value" : 0, "deadCnt" : 0},
                {"id" : "IN", "name" : "India", "value" : 0, "deadCnt" : 0},
                {"id" : "IM", "name" : "Isle of Man", "value" : 0, "deadCnt" : 0},
                {"id" : "ID", "name" : "Indonesia", "value" : 0, "deadCnt" : 0},
                {"id" : "HU", "name" : "Hungary", "value" : 0, "deadCnt" : 0},
                {"id" : "HT", "name" : "Haiti", "value" : 0, "deadCnt" : 0},
                {"id" : "HR", "name" : "Croatia", "value" : 0, "deadCnt" : 0},
                {"id" : "HN", "name" : "Honduras", "value" : 0, "deadCnt" : 0},
                {"id" : "HM", "name" : "Heard Island and McDonald Islands", "value" : 0, "deadCnt" : 0},
                {"id" : "HK", "name" : "Hong Kong", "value" : 0, "deadCnt" : 0},
                {"id" : "GY", "name" : "Guyana", "value" : 0, "deadCnt" : 0},
                {"id" : "GU", "name" : "Guam", "value" : 0, "deadCnt" : 0},
                {"id" : "GF", "name" : "French Guiana", "value" : 0, "deadCnt" : 0},
                {"id" : "GT", "name" : "Guatemala", "value" : 0, "deadCnt" : 0},
                {"id" : "GL", "name" : "Greenland", "value" : 0, "deadCnt" : 0},
                {"id" : "GD", "name" : "Grenada", "value" : 0, "deadCnt" : 0},
                {"id" : "GR", "name" : "Greece", "value" : 0, "deadCnt" : 0},
                {"id" : "GQ", "name" : "Equatorial Guinea", "value" : 0, "deadCnt" : 0},
                {"id" : "GW", "name" : "Guinea-Bissau", "value" : 0, "deadCnt" : 0},
                {"id" : "GM", "name" : "Gambia", "value" : 0, "deadCnt" : 0},
                {"id" : "GP", "name" : "Guadeloupe", "value" : 0, "deadCnt" : 0},
                {"id" : "GN", "name" : "Guinea", "value" : 0, "deadCnt" : 0},
                {"id" : "GH", "name" : "Ghana", "value" : 0, "deadCnt" : 0},
                {"id" : "GG", "name" : "Guernsey", "value" : 0, "deadCnt" : 0},
                {"id" : "GE", "name" : "Georgia", "value" : 0, "deadCnt" : 0},
                {"id" : "GA", "name" : "Gabon", "value" : 0, "deadCnt" : 0},
                {"id" : "FR", "name" : "France", "value" : 0, "deadCnt" : 0},
                {"id" : "FM", "name" : "Federated States of Micronesia", "value" : 0, "deadCnt" : 0},
                {"id" : "FO", "name" : "Faroe Islands", "value" : 0, "deadCnt" : 0},
                {"id" : "FK", "name" : "Falkland Islands", "value" : 0, "deadCnt" : 0},
                {"id" : "FJ", "name" : "Fiji", "value" : 0, "deadCnt" : 0},
                {"id" : "FI", "name" : "Finland", "value" : 0, "deadCnt" : 0},
                {"id" : "ET", "name" : "Ethiopia", "value" : 0, "deadCnt" : 0},
                {"id" : "EE", "name" : "Estonia", "value" : 0, "deadCnt" : 0},
                {"id" : "ES", "name" : "Spain", "value" : 0, "deadCnt" : 0},
                {"id" : "ER", "name" : "Eritrea", "value" : 0, "deadCnt" : 0},
                {"id" : "GB", "name" : "United Kingdom", "value" : 0, "deadCnt" : 0},
                {"id" : "EG", "name" : "Egypt", "value" : 0, "deadCnt" : 0},
                {"id" : "EC", "name" : "Ecuador", "value" : 0, "deadCnt" : 0},
                {"id" : "DZ", "name" : "Algeria", "value" : 0, "deadCnt" : 0},
                {"id" : "DO", "name" : "Dominican Republic", "value" : 0, "deadCnt" : 0},
                {"id" : "DK", "name" : "Denmark", "value" : 0, "deadCnt" : 0},
                {"id" : "DM", "name" : "Dominica", "value" : 0, "deadCnt" : 0},
                {"id" : "DJ", "name" : "Djibouti", "value" : 0, "deadCnt" : 0},
                {"id" : "DE", "name" : "Germany", "value" : 0, "deadCnt" : 0},
                {"id" : "CZ", "name" : "Czechia", "value" : 0, "deadCnt" : 0},
                {"id" : "CY", "name" : "Cyprus", "value" : 0, "deadCnt" : 0},
                {"id" : "KY", "name" : "Cayman Islands", "value" : 0, "deadCnt" : 0},
                {"id" : "CX", "name" : "Christmas Island", "value" : 0, "deadCnt" : 0},
                {"id" : "CW", "name" : "Curaçao", "value" : 0, "deadCnt" : 0},
                {"id" : "CU", "name" : "Cuba", "value" : 0, "deadCnt" : 0},
                {"id" : "CR", "name" : "Costa Rica", "value" : 0, "deadCnt" : 0},
                {"id" : "CV", "name" : "Cape Verde", "value" : 0, "deadCnt" : 0},
                {"id" : "KM", "name" : "Comoros", "value" : 0, "deadCnt" : 0},
                {"id" : "CO", "name" : "Colombia", "value" : 0, "deadCnt" : 0},
                {"id" : "CK", "name" : "Cook Islands", "value" : 0, "deadCnt" : 0},
                {"id" : "CG", "name" : "Republic of Congo", "value" : 0, "deadCnt" : 0},
                {"id" : "CD", "name" : "Democratic Republic of Congo", "value" : 0, "deadCnt" : 0},
                {"id" : "CM", "name" : "Cameroon", "value" : 0, "deadCnt" : 0},
                {"id" : "CI", "name" : "Côte d'Ivoire", "value" : 0, "deadCnt" : 0},
                {"id" : "CN", "name" : "China", "value" : 0, "deadCnt" : 0},
                {"id" : "CL", "name" : "Chile", "value" : 0, "deadCnt" : 0},
                {"id" : "CH", "name" : "Switzerland", "value" : 0, "deadCnt" : 0},
                {"id" : "CC", "name" : "Cocos (Keeling) Islands", "value" : 0, "deadCnt" : 0},
                {"id" : "CA", "name" : "Canada", "value" : 0, "deadCnt" : 0},
                {"id" : "CF", "name" : "Central African Republic", "value" : 0, "deadCnt" : 0},
                {"id" : "BE", "name" : "Belgium", "value" : 0, "deadCnt" : 0},
                {"id" : "BW", "name" : "Botswana", "value" : 0, "deadCnt" : 0},
                {"id" : "BT", "name" : "Bhutan", "value" : 0, "deadCnt" : 0},
                {"id" : "BN", "name" : "Brunei", "value" : 0, "deadCnt" : 0},
                {"id" : "BB", "name" : "Barbados", "value" : 0, "deadCnt" : 0},
                {"id" : "BR", "name" : "Brazil", "value" : 0, "deadCnt" : 0},
                {"id" : "BO", "name" : "Bolivia", "value" : 0, "deadCnt" : 0},
                {"id" : "BM", "name" : "Bermuda", "value" : 0, "deadCnt" : 0},
                {"id" : "BZ", "name" : "Belize", "value" : 0, "deadCnt" : 0},
                {"id" : "BY", "name" : "Belarus", "value" : 0, "deadCnt" : 0},
                {"id" : "BL", "name" : "Saint Barthelemy", "value" : 0, "deadCnt" : 0},
                {"id" : "BS", "name" : "Bahamas", "value" : 0, "deadCnt" : 0},
                {"id" : "BH", "name" : "Bahrain", "value" : 0, "deadCnt" : 0},
                {"id" : "BA", "name" : "Bosnia and Herzegovina", "value" : 0, "deadCnt" : 0},
                {"id" : "BG", "name" : "Bulgaria", "value" : 0, "deadCnt" : 0},
                {"id" : "BD", "name" : "Bangladesh", "value" : 0, "deadCnt" : 0},
                {"id" : "BF", "name" : "Burkina Faso", "value" : 0, "deadCnt" : 0},
                {"id" : "BJ", "name" : "Benin", "value" : 0, "deadCnt" : 0},
                {"id" : "BI", "name" : "Burundi", "value" : 0, "deadCnt" : 0},
                {"id" : "AZ", "name" : "Azerbaijan", "value" : 0, "deadCnt" : 0},
                {"id" : "AT", "name" : "Austria", "value" : 0, "deadCnt" : 0},
                {"id" : "AU", "name" : "Australia", "value" : 0, "deadCnt" : 0},
                {"id" : "TF", "name" : "French Southern and Antarctic Lands", "value" : 0, "deadCnt" : 0},
                {"id" : "AQ", "name" : "Antarctica", "value" : 0, "deadCnt" : 0},
                {"id" : "AS", "name" : "American Samoa", "value" : 0, "deadCnt" : 0},
                {"id" : "AM", "name" : "Armenia", "value" : 0, "deadCnt" : 0},
                {"id" : "AR", "name" : "Argentina", "value" : 0, "deadCnt" : 0},
                {"id" : "AE", "name" : "United Arab Emirates", "value" : 0, "deadCnt" : 0},
                {"id" : "AD", "name" : "Andorra", "value" : 0, "deadCnt" : 0},
                {"id" : "AX", "name" : "Aland Islands", "value" : 0, "deadCnt" : 0},
                {"id" : "AL", "name" : "Albania", "value" : 0, "deadCnt" : 0},
                {"id" : "AI", "name" : "Anguilla", "value" : 0, "deadCnt" : 0},
                {"id" : "AO", "name" : "Angola", "value" : 0, "deadCnt" : 0},
                {"id" : "AF", "name" : "Afghanistan", "value" : 0, "deadCnt" : 0},
                {"id" : "AG", "name" : "Antigua and Barbuda", "value" : 0, "deadCnt" : 0},
                {"id" : "AW", "name" : "Aruba", "value" : 0, "deadCnt" : 0}
            ]

            for (var i = 0; i < response.length; i++){
                var idx = mapdata.findIndex((data, index) => { return data.name == response[i]["WORLD_CUR_STATE_NATION"] });
                
                if (idx >= 0){
                    mapdata[idx]["value"] = response[i]["WORLD_CUR_STATE_CON_CNT"]
                    mapdata[idx]["deadCnt"] = response[i]["WORLD_CUR_STATE_DEAD_CNT"]
                }
                else{
                    continue
                }
            }
            return mapdata
        }
    }
})
</script>
<style>
    #chartdiv {
  width: 100%;
  height: 500px;
}
</style>