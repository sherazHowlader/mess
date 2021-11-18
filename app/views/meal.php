  <center>
      <h1> মিল হিসাব </h1>

      <?php
        $user = $_SESSION['userData'];
        if ($user['role_id'] == '2') { ?>

      <form class="needs-validation" class="" action="<?php echo BASE_URL; ?>/Meal/deposit" method="post" novalidate>
          <label class="form-label m-2" for="member_id"> সদস্যের নাম : </label>
          <select name="user_name" class="form-select">            
            <?php
                foreach ($memberList as $key => $value) {
            ?>
              <option value="<?php echo $value['name']; ?>"> <?php echo $value['name']; ?> </option>
            <?php  } ?>
          </select>

          <label class="form-label m-2" for="morning"> সকালে : </label>
          <input class="form-control form-control-sm" type="text" name="morning" placeholder="পরিমান">

          <label class="form-label m-2" for="noon"> দুপুরে : </label>
          <input class="form-control form-control-sm" type="text" name="noon" placeholder="পরিমান">

          <label class="form-label m-2" for="night"> রাতে : </label>
          <input class="form-control form-control-sm" type="text" name="night" placeholder="পরিমান">

          <label class="form-label m-2" for="date"> তারিখ : </label>
          <input class="form-control form-control-sm" type="date" name="deposite_date" required>
          <div class="invalid-feedback">
                দিনটি নির্বাচন করে দিন
            </div>

          <input class="btn btn-primary mt-4" type="submit" name="meal" value="Submit">
      </form>

      <?php  } ?>
      
      <br><br>

      <table class="table table-striped text-center">
          <tr>
              <th> ক্রমিক </th>
              <th> সদস্যের নাম </th>
              <th> মিলের পরিমান </th>
              <th> বিস্তারিত </th>
          </tr>
            <?php
            $serial = "1";
            foreach ($showAllMeal as $key => $value) {            
            ?>
          <tr>
              <td> <?php echo $serial++ ?> </td>
              <td> <?php echo $value['user_name']; ?> </td>
              <td> <?php echo $value['meal']; ?> </td>
              <td> <a href="<?php echo BASE_URL; ?>/Meal/mealdetails/<?php echo $value['user_name']; ?> "> Details </a> </td>
          </tr>
            <?php  } ?>
      </table>
      <br><br><br>
  </center>