<template>
    <div>
        <h1>Summary</h1>
        <div class="row">
        <div class="column">
            <div class="card excellent">
            <h3>Excellent</h3>
            <p>{{fivestar}} / {{total}}</p>
            <p id="percentage">{{fivestarper}} %</p>
            </div>
        </div>

        <div class="column">
            <div class="card good">
            <h3>Good</h3>
            <p>{{fourstar}} / {{total}}</p>
            <p id="percentage">{{fourstarper}} %</p>
            </div>
        </div>

        <div class="column">
            <div class="card average">
            <h3>Average</h3>
            <p>{{threestar}} / {{total}}</p>
            <p id="percentage">{{threestarper}} %</p>
            </div>
        </div>

        <div class="column">
            <div class="card bad">
            <h3>Bad</h3>
            <p>{{twostar}} / {{total}}</p>
            <p id="percentage">{{twostarper}} %</p>
            </div>
        </div>

        <div class="column">
            <div class="card poor">
            <h3>Poor</h3>
            <p>{{onestar}} / {{total}}</p>
            <p id="percentage">{{onestarper}} %</p>
            </div>
        </div>
        </div>
    </div>
</template>

<script>

import Bootstrap from '../../bootstrap';
export default {
    data(){
        return{
            fivestar:'',
            fourstar:'',
            threestar:'',
            twostar:'',
            onestar:'',
            total:'',
            }
    },

    mounted: function(){
        console.log('Loaded Data');
        this.fetchFivestar();
        this.fetchFourstar();
        this.fetchThreestar();
        this.fetchTwostar();
        this.fetchOnestar();
        this.fetchTotal();

    },


    methods:{
         fetchFivestar: function(){
            axios.get('api/admin/fivestar')
                .then((response) => {
                    console.log(response.data)
                    this.fivestar = response.data;
                }).catch((error) => {
                    console.log(error)
            });
         },

         fetchFourstar: function(){
            axios.get('api/admin/fourstar')
                .then((response) => {
                    console.log(response.data)
                    this.fourstar = response.data;
                }).catch((error) => {
                    console.log(error)
            });
         },

         fetchThreestar: function(){
            axios.get('api/admin/threestar')
                .then((response) => {
                    console.log(response.data)
                    this.threestar = response.data;
                }).catch((error) => {
                    console.log(error)
            });
         },
         fetchTwostar: function(){
            axios.get('api/admin/twostar')
                .then((response) => {
                    console.log(response.data)
                    this.twostar = response.data;
                }).catch((error) => {
                    console.log(error)
            });
         },
         fetchOnestar: function(){
            axios.get('api/admin/onestar')
                .then((response) => {
                    console.log(response.data)
                    this.onestar = response.data;
                }).catch((error) => {
                    console.log(error)
            });
         },
         fetchTotal: function(){
            axios.get('api/admin/total')
                .then((response) => {
                    console.log(response.data)
                    this.total = response.data;
                }).catch((error) => {
                    console.log(error)
            });
         },


    },
     computed:{
        fivestarper: function(){
            return ((this.fivestar / this.total) * 100).toFixed(2);
        },
        fourstarper: function(){
            return ((this.fourstar / this.total) * 100).toFixed(2);
        },
        threestarper: function(){
            return ((this.threestar / this.total) * 100).toFixed(2);
        },
        twostarper: function(){
            return ((this.twostar / this.total) * 100).toFixed(2);
        },
        onestarper: function(){
            return ((this.onestar / this.total) * 100).toFixed(2);
        }

    },
}
</script>

<style scope>
    * {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 20%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
}
div.excellent{
    background-color: green;
}

div.good{
    background-color: yellowgreen;
}

div.average{
    background-color: yellow;
}

div.bad{
    background-color: orange;
}

div.poor{
    background-color: red;
}
h3{
    color: #fff;
}
p#percentage{
    font-weight: 700;
    font-size: 24px;
}

</style>
