%rebase _base
<div class="page-header">
    <p class="center-block">Drag the items into the order <em>you</em> think is important, from top to bottom.</p>
</div>
<form role="form" action="/vote/" method="post">
<section id="priorities" class="col-xs-12 col-sm-6">
    <ol id="sortable" class="list-group">
        <li id="priority_health"class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Health </li>
        <li id="priority_environment"class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Environment </li>
        <li id="priority_business"class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Business</li>
        <li id="priority_community"class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Community</li>
        <li id="priority_safety"class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Safety</li>
        <li id="priority_education"class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Education</li>
        <li id="priority_transportation"class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Transportation</li>
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
    <button type="submit" class="btn btn-lg btn-primary pull-right">Submit</button>

</section>
</form>

<script>
$(function () {
    var sorted = $( "#sortable" ).sortable({
        opacity: 0.75,
        containment: "parent",
        key: "priority"
    });
    $( "#sortable" ).disableSelection();
});
</script>
