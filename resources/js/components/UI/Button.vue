<template>
    <div>
        <img :src="great" class="user-image" @click="addSurvey" />
    </div>
</template>

<script>
export default {
    data(){
        return{
            great: 'img/great.png',
        }
    }
}
</script>

<style>

</style>
