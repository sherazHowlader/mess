<center>
    <h1> বিস্তারিত হিসাব </h1>

    

    <br><br>

    <table class="table table-striped text-center">
        <tr>
            <th> ক্রমিক </th>
            <th> সদস্যের নাম </th>
            <th> টাকার পরিমান </th>
            <th> তারিখ </th>
        </tr>
        <?php
        $serial = "1";
        foreach ($SingleData as $key => $value) { ?>
            <tr>
                <td> <?php echo $serial++ ?> </td>
                <td> <?php echo $value['user_name']; ?> </td>
                <td> <?php echo $value['deposit_tk']; ?> </td> 
                <td> <?php echo $value['deposit_date']; ?> </td> 
            </tr>
        <?php  } ?>
    </table>
</center>