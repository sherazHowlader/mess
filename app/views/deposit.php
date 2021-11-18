<center>
    
    <h2> 
        <i class="fas fa-money-check-alt"> </i> 
            টাকা জমা হিসাব
        <i class="fas fa-money-check-alt"> </i>
    </h2>

    <?php
    $user = $_SESSION['userData'];
    if ($user['role_id'] == '2') { ?>

        <form class="needs-validation" action="<?php echo BASE_URL; ?>/Deposit/deposit" method="POST" novalidate>
            <label class="form-label m-2" for="member_id"> সদস্যের নাম : </label>
            <select name="user_name" class="form-select">                
                <?php
                foreach ($memberList as $key => $value) {
                ?>
                    <option value="<?php echo $value['name']; ?>"> <?php echo $value['name']; ?> </option>
                <?php  } ?>
            </select>

            <label class="form-label m-2" for="taka"> টাকার পরিমান : </label>
            <input class="form-control form-control-sm" type="text" name="taka" autocomplete="off" placeholder="Taka" required>           
            <div class="invalid-feedback">
                জমা দেওয়ার আগে অবশ্যই পরিমাণটি লিখতে হবে
            </div>            

            <label class="form-label m-2" for="date"> জমার তারিখ : </label>
            <input class="form-control form-control-sm" type="date" name="deposite_date" required>
            <div class="invalid-feedback">
                দিনটি নির্বাচন করে দিন
            </div>

            <input class="btn btn-primary mt-4" type="submit" name="submit" value="Submit">
        </form>

    <?php  } ?>

    <br><br>

    <table class="table table-striped text-center">
        <tr>
            <th> ক্রমিক </th>
            <th> সদস্যের নাম </th>
            <th> টাকার পরিমান </th>
            <th> বিস্তারিত </th>
        </tr>
        <?php
        $serial = "1";
        foreach ($depositMoney as $key => $value) {           
        ?>
            <tr>
                <td> <?php echo $serial++ ?> </td>
                <td> <?php echo $value['user_name']; ?> </td>
                <td> <?php echo $value['deposit']; ?> </td>                
                <td> <a href="<?php echo BASE_URL; ?>/Deposit/depositDetails/<?php echo $value['user_name']; ?> "> Details </a> </td>
            </tr>
        <?php  } ?>
    </table>
    <br><br><br>
</center>