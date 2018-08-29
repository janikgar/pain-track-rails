<template>
  <div id="app">
    <p>{{ message }}</p>
    <PainTable />
  </div>
</template>

<script>
import PainTable from './components/painTable.vue'

export default {
  data: function () {
    return {
      message: "foo"
    }
  },
  components: { PainTable }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
