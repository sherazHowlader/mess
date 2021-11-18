<center>
    <h1> চূড়ান্ত হিসাব </h1>
    <br>
    <table class="table table-striped text-center">
        <tr>
            <th> সদস্যের নাম </th>
            <th> মিল সংখ্যা </th>
            <th> মোট জমা </th>
            <th> মোট খরচ </th>
            <th> পাবে/দিবে </th>
        </tr>
        <?php 
            foreach ($allData as $key => $value) { ?>
        <tr>
            <td> <?php echo $value['user_name']; ?> </td>
            <td> <?php echo $value['meal']; ?> </td>
            <td> <?php echo $joma = $value['deposit']; ?> </td>
            <td> 
              <?php
                if (isset($_SESSION['extra'])) {
                  echo $khoroch = $value['meal'] * $_SESSION['mealRate'] + $_SESSION['extra'];          
                } else {
                  echo $khoroch = $_SESSION['mealRate'] * $value['meal'];
                }
              ?>
            </td>           
            
            <td> 
                <?php
                 if (isset($khoroch)) {
                    if ($joma < $khoroch) {
                      echo $joma - $khoroch . " টাকা দিবে ";
                    } elseif ($joma > $khoroch) {
                      echo $joma - $khoroch. " টাকা পাবে ";
                    }
                  }           
                ?> 
            </td>
        </tr>
        <?php } ?>
    </table>
    <br><br><br><br><br>
</center>