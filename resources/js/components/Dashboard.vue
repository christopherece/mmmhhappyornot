<template>
    <div class="container">
        <h1>Welcome to MMMH and MC</h1>
        <h1>How would you rate our Services?</h1>
        <hr>
        <div id="appear">
            <transition name="appear">
                <div v-if="resappear">
                    <div>
                        <img :src="smiley5" />
                        <span style="font-size:30px">
                            Thank you for your Feedback!
                        </span>
                    </div>

                </div>
            </transition>
        </div>
        <div id="box">

            <div v-if="icons">
                <input
                    v-model="survey.fivestar"
                    value:5
                    name="fivestar"
                    type="hidden"
                >
                <img :src="great"
                    class="img-rounded"
                    @click="fivestar"
                />
                <h2>Excellent</h2>
            </div>


             <div v-if="icons">
                <input

                    v-model="survey.fourstar"
                    value:4
                    name="fourstar"
                    type="hidden"
                >
                <img :src="good"
                    class="img-rounded"
                    @click="fourstar"
                />
                <h2>Good</h2>
            </div>

            <div v-if="icons">
                <input

                    v-model="survey.threestar"
                    value:3
                    name="threestar"
                    type="hidden"
                >
                <img :src="okay"
                    class="img-rounded"
                    @click="threestar"
                />
                <h2>Average</h2>
            </div>

            <div v-if="icons">
                <input

                    v-model="survey.twostar"
                    value:2
                    name="twostar"
                    type="hidden"
                >
                <img :src="bad"
                    class="img-rounded"
                    @click="twostar"
                />
                <h2>Bad</h2>
            </div>

            <div v-if="icons">
                <input

                    v-model="survey.onestar"
                    value:1
                    name="onestar"
                    type="hidden"
                >
                <img :src="poor"
                    class="img-rounded"
                    @click="onestar"
                />
                <h2>Poor</h2>
            </div>

        </div>
    </div>
</template>

<script>
import { setTimeout } from 'timers';

export default {
    data(){
        return {

            survey:{
                id:'',
                fivestar:'',
                fourstar:'',
                threestar:'',
                twostar:'',
                onestar:''
            },

            great: 'img/great.png',
            good: 'img/good.png',
            okay: 'img/okay.png',
            bad: 'img/bad.png',
            poor: 'img/poor.png',

            resappear:false,
            icons: true,
            smiley5: 'img/thumbsup.gif'

        }


    },
    watch:{
        resappear(value){
            setTimeout(()=>{
                this.resappear = false
            }, 5000);
                this.icons = false
                setTimeout(()=>{
                    window.location = "home"
                },3000)
        }
    },

    methods:{
        fivestar(){
            let currentObj = this;
            axios.post('api/survey/store/fivestar', {
                fivestar: this.fivestar,
                fourstar: this.fourstar,
                threestar: this.threestar,
                twostar: this.twostar,
                onestar: this.onestar

            })
                .then((response)=>{
                    console.log(response)
                }).catch((error)=>{
                    console.log(error)
                })
            this.fivestar++
            this.resappear = true,
            this.icons = false
        },

        fourstar(){
            let currentObj = this;
            axios.post('api/survey/store/fourstar', {
                fivestar: this.fivestar,
                fourstar: this.fourstar,
                threestar: this.threestar,
                twostar: this.twostar,
                onestar: this.onestar

            })
                .then((response)=>{
                    console.log(response)
                }).catch((error)=>{
                    console.log(error)
                })
            this.fourstar++
            this.resappear = true,
            this.icons = false
        },

        threestar(){
            let currentObj = this;
            axios.post('api/survey/store/threestar', {
                fivestar: this.fivestar,
                fourstar: this.fourstar,
                threestar: this.threestar,
                twostar: this.twostar,
                onestar: this.onestar

            })
                .then((response)=>{
                    console.log(response)
                }).catch((error)=>{
                    console.log(error)
                })
            this.threestar++
            this.resappear = true,
            this.icons = false
        },

        twostar(){
            let currentObj = this;
            axios.post('api/survey/store/twostar', {
                fivestar: this.fivestar,
                fourstar: this.fourstar,
                threestar: this.threestar,
                twostar: this.twostar,
                onestar: this.onestar

            })
                .then((response)=>{
                    console.log(response)
                }).catch((error)=>{
                    console.log(error)
                })
            this.twostar++
            this.resappear = true,
            this.icons = false
        },

        onestar(){
            let currentObj = this;
            axios.post('api/survey/store/onestar', {
                fivestar: this.fivestar,
                fourstar: this.fourstar,
                threestar: this.threestar,
                twostar: this.twostar,
                onestar: this.onestar

            })
                .then((response)=>{
                    console.log(response)
                }).catch((error)=>{
                    console.log(error)
                })
            this.onestar++
            this.resappear = true,
            this.icons = false
        }

    }
}
</script>
<style scoped>
    #box {
    /* background-color: lightgrey; */
    width: auto;
    /* border: 5px solid #ccc; */
    /* padding: 50px;
    margin: 20px; */
    display: flex;
    align-items: center;
    justify-content: center;
    }

    img{
        width: 150px;
        height: 150px;
        margin: 5px 10px;
    }
    h1, h2, h3{
        /* color: #fff; */
        display: flex;
        align-items: center;
        justify-content: center;
    }
    #appear{
        display: flex;
    align-items: center;
    justify-content: center;
    }

</style>
