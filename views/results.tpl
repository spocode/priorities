%rebase _base
<div class="page-header">
    <h1>Results</h1>
</div>

<section class="col-xs-12 col-sm-6">


<canvas id="myChart" width="540" height="400"></canvas>


</section>
<section class="col-xs-12 col-sm-6">


<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">Results are weighted. Higher numbers are better.</div>
  </div>
<ul class="list-group">
% for key, value in results.iteritems():
  <li class="list-group-item">{{key.title()}} <span class="badge">{{"{0:.2f}".format(value)}}</span></li>
% end
</ul>
% labels = ["health","environment","business","community","safety","education","transportation"]
</div>
</section>

<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/Chart.js/0.2.0/Chart.min.js"></script>
<script>
var ctx = document.getElementById("myChart").getContext("2d");
var data = {
  labels : ["Health","Environment","Business","Community","Safety","Education","Transportation"],
  datasets : [
    {
      fillColor : "rgba(151,187,205,0.5)",
      strokeColor : "rgba(151,187,205,1)",
      pointColor : "rgba(151,187,205,1)",
      pointStrokeColor : "#fff",
      data : {{repr([results[key] for key in labels])}}
    },
  ]
}
options = {
  scaleFontFamily : "'Proxima Nova'",
  pointLabelFontFamily : "'Proxima Nova'",
};
new Chart(ctx).Radar(data,options);
</script>




