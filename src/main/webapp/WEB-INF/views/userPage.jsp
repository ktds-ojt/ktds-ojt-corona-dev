<%@ include file="components/head.jsp"%>
<body>
    <div id="app">
        {{ UserData }}
    </div>
</body>
<script>
var app = new Vue({
    el: '#app',
        data:{
            UserData : []
        },
    created() {
        // this.CreateUserURL();
        // this.UpdateUserURL();
        // this.DeleteUserURL();
        this.SelectUserURL();
    },
    methods : {
        CreateUserURL() {
            axios({
                method : 'post',
                url : 'http://localhost:8080/api/user/create',
                data : {
                    user_Name : 'Hong Da Kyeong',
                    user_age : 27,
                    user_gender : 'Female',
                }
            }).then((response) => {
                console.log(response)
            }).catch((err) => {
                console.log(err)
            })
        },

        UpdateUserURL(){
            axios({
                method : 'post',
                url : 'http://localhost:8080/api/user/update',
                data : {
                    user_Id : 1,
                    user_Name : 'Kim HaSeong',
                    user_age : 27,
                    user_gender : 'Male',
                }
            }).then((response) => {
                console.log(response)
            }).catch((err) => {
                console.log(err)
            })
        },
        
        DeleteUserURL() {
            axios({
                method : 'post',
                url : 'http://localhost:8080/api/user/delete',
                data : {
                    user_Id : 2
                }
            }).then((response) => {
                console.log(response)
            }).catch((err) => {
                console.log(err)
            })
        },

        SelectUserURL(){
            axios.get('http://localhost:8080/api/user/read').then((response) => {
                console.log(response)
                this.UserData = response.data.map(user => user)
                console.log(UserData)
            }).catch((err) => {
                console.log(err)
            })
        },
    }
})
</script>