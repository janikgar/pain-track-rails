<template>
  <div id="painTable">
    <table>
      <thead>
        <tr>
          <th>Date & Time</th>
          <th>Pain Level</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(pain_level, index) in pain_levels" :key="index">
          <td>{{ pain_level.created_at }}</td>
          <td>{{ pain_level.pain_level }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
export default {
  name: 'PainTable',
  data: () => {
    return {
      pain_levels : []
    }
  },
  mounted: () => {
    const that = this;
    $.ajax({
      url: './pain_levels.json'
    }).done((data) => {
      that.pain_levels = (data);
      console.log(that);
    })
  }
}
</script>

<style>
</style>