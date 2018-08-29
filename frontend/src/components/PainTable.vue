<template>
  <div id="painTable">
    <table class="table table-striped">
      <thead>
        <tr>
          <th>Pain Level</th>
          <th>Created At</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(painlevel, index) in painLevels" v-bind:key="index">
          <td>{{ painlevel.pain_level }}</td>
          <td>{{ painlevel.created_at }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  data () {
    return {
      painLevels : [
        {
          'pain_level' : 5,
          'created_at' : '2018-08-19'
        }
      ],
      json : []
    }
  },
  mounted () {
    axios.get('http://localhost:3000/pain_levels.json')
      .then(res => {
        this.painLevels = res.data;
      }).catch( err => {
        console.log(err);
      })
  }
}
</script>

<style>
</style>