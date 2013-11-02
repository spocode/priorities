%rebase _base
<div class="page-header">
    <p class="lead">Drag the items into the order <em>you</em> think is important, from top to bottom.</p>
</div>
<form id="priorities_form" role="form" action="/vote/" method="post">
  <section id="priorities" class="col-xs-12 col-sm-6">
      <ol id="sortable" class="list-group">
          <li data-value="health" class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Health </li>
          <li data-value="environment" class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Environment </li>
          <li data-value="business" class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Business</li>
          <li data-value="community" class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Community</li>
          <li data-value="safety" class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Safety</li>
          <li data-value="education" class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Education</li>
          <li data-value="transportation" class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Transportation</li>
      </ol>
  </section>
  <section id="info" class="col-xs-12 col-sm-6">
        <div class="form-group">
          <input type="text" class="form-control" name="years" placeholder="Years in Spokane">
        </div>
        <div class="form-group">
          <input type="text" class="form-control" name="zip" placeholder="Zip Code">
        </div>
      <div class="form-group">
        <label class="radio-inline">
          <input type="radio" name="status" value="family" checked>
          Family
        </label>
        <label class="radio-inline">
          <input type="radio" name="status" value="single">
          Single
        </label>
      </div>
      <input type="hidden" name='priorities_list' id='priorities_list'>
      <button id="priorities_submit" type="submit" class="btn btn-lg btn-primary pull-right">Submit</button>

  </section>
</form>

<script>
$(document).ready(function() {
    sorted = $( "#sortable" ).sortable({
        opacity: 0.75,
        update: function (event, ui) {
            $('#priorities_list').val($( "#sortable" ).sortable("toArray", {attribute: 'data-value'}))
        }
    });
    $( "#sortable" ).disableSelection();

    $('#priorities_form button').submit(function(){
        // return this.append(sorted.sortable("serialize"))
        // $('#priorities_list').val(sorted.sortable("serialize"));
    });
});
</script>
