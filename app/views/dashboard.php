<div class="row">
  <div class="col-md-6 col-xl-6">
    <div class="card mb-3 widget-content bg-deposits-bloom">
      <div class="widget-content-wrapper text-white">
        <div class="widget-content-left">
          <div class="widget-heading"> মোট জমা </div>
          <div class="widget-subheading"> Total Deposits </div>
        </div>
        <div class="widget-content-right">
          <div class="widget-numbers text-white">
            <span> 
                <?php
                  foreach ($total as $key => $value) {
                    echo $value['deposit'];
                  } 
                ?>
            </span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-md-6 col-xl-6">
    <div class="card mb-3 widget-content bg-midnight-bloom">
      <div class="widget-content-wrapper text-white">
        <div class="widget-content-left">
          <div class="widget-heading"> বাজার খরচ </div>
          <div class="widget-subheading"> Whole Month Cost </div>
        </div>
        <div class="widget-content-right">
          <div class="widget-numbers text-white">
            <span> 
                <?php
                  foreach ($total as $key => $value) {
                    echo $value['market'];
                  } 
                ?>
            </span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class=" col-md-6 col-xl-6">
    <div class="card mb-3 widget-content bg-premium-dark">
      <div class="widget-content-wrapper text-white">
        <div class="widget-content-left">
          <div class="widget-heading"> অন্যান্য খরচ </div>
          <div class="widget-subheading"> 
            Extra Cost / Total Member
          </div>
        </div>
        <div class="widget-content-right">
          <div class="widget-numbers text-warning">
            <span>
                <?php
                  if ($total[0]['extra']) {
                    $extra = $total[0]['extra'] / $rcvData['totalMember'];
                    $extra = substr($extra,0,5);
                    $_SESSION['extra'] = $extra;
                    echo $extra;
                  }                  
                ?>
            </span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class=" col-md-6 col-xl-6">
    <div class="card mb-3 widget-content bg-member-dark">
      <div class="widget-content-wrapper text-white">
        <div class="widget-content-left">
          <div class="widget-heading"> সদস্য সংখ্যা </div>
          <div class="widget-subheading"> 
            Total Member
          </div>
        </div>
        <div class="widget-content-right">
          <div class="widget-numbers text-white">
            <span>
                <?php                  
                    echo $rcvData['totalMember'];                
                ?>
            </span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-md-6 col-xl-6">
    <div class="card mb-3 widget-content bg-arielle-smile">
      <div class="widget-content-wrapper text-white">
        <div class="widget-content-left">
          <div class="widget-heading"> মোট মিল </div>
          <div class="widget-subheading"> All Member Total Meal </div>
        </div>
        <div class="widget-content-right">
          <div class="widget-numbers text-white">
            <span>
                <?php
                  foreach ($total as $key => $value) {
                    echo $value['meal'];
                  } 
                ?>
            </span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-md-6 col-xl-6">
    <div class="card mb-3 widget-content bg-grow-early">
      <div class="widget-content-wrapper text-white">
        <div class="widget-content-left">
          <div class="widget-heading"> মিল রেট </div>
          <div class="widget-subheading"> 
            Market Cost / Total Meal
          </div>
        </div>
        <div class="widget-content-right">
          <div class="widget-numbers text-white">
            <span>
                <?php
                  if ($total[0]['meal'] > 0) {
                    $mealRate = $total[0]['market'] / $total[0]['meal'];
                    $mealRate = substr($mealRate,0,5);
                    $_SESSION['mealRate'] = $mealRate;
                    echo $mealRate;
                  }                    
                ?>
            </span>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<br>
<br>
<br>
<br>
