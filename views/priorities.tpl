<div class="page-header">
    <p class="center-block">Drag the items into the order <em>you</em> think is important, from top to bottom.</p>
</div>
<form role="form">
<section id="priorities" class="col-xs-12 col-sm-6">
    <ol id="sortable" class="list-group">
        <li class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Health </li>
        <li class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Environment </li>
        <li class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Business</li>
        <li class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Community</li>
        <li class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Safety</li>
        <li class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Education</li>
        <li class="list-group-item"><i class="icon-fixed-width icon-move text-primary"></i> Transportation</li>
    </ol>
</section>
<section id="info" class="col-xs-12 col-sm-6">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Years in Spokane">
      </div>
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Zip Code">
      </div>
    <div class="form-group">
      <label class="radio-inline">
        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
        Family
      </label>
      <label class="radio-inline">
        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
        Single
      </label>
    </div>
    <button type="submit" class="btn btn-lg btn-primary pull-right">Submit</button>

</section>
</form>

<script>
$(function () {
    $( "#sortable" ).sortable({
        opacity: 0.75,
        containment: "parent",
    });
    $( "#sortable" ).disableSelection();
});
</script>
