<template>
<div>
  
  <div style="height: 100px; width: 100px; border: 1px solid black; position: relative;">
    <span class="closeqq"></span>
</div>
</div>
</template>

<script>

  export default {
    methods: {
      hello() {
        alert('Hello World!');
      }
    }
  }
</script>
<style >
 .closeqq {
    background: orange;
    color: red;
    border-radius: 12px;
    line-height: 20px;
    text-align: center;
    height: 20px;
    width: 20px;
    font-size: 18px;
    padding: 10px;
    top: -10px;
    right: -10px;
    position: absolute;
}
.closeqq::before {
    content: "\2716";
}
</style>