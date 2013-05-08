<script type="text/x-handlebars" data-template-name="stories">
  <h1>Story List</h1>
  <div class="row-fluid">
    <div class="span3">
      {{#each model}}
        {{#linkTo story this}}
          <div class="well highlighteable">{{name}}</div>
        {{/linkTo}}
      {{/each}}
    </div>
    <div class="span9">
      {{outlet}}
    </div>
  </div>
</script>
  
<script type="text/x-handlebars" data-template-name="story">
  <h1>{{name}}</h1>
</script>