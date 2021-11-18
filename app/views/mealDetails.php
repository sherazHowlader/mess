<center>
    <h1> মিলের বিস্তারিত হিসাব </h1>

    

    <br><br>

    <table class="table table-striped text-center">
        <tr>
            <th> ক্রমিক </th>
            <th> সদস্যের নাম </th>
            <th> সকাল </th>
            <th> দুপুর </th>
            <th> রাত </th>
            <th> তারিখ </th>
        </tr>
        <?php
        $serial = "1";
        foreach ($mealSingle as $key => $value) { ?>
            <tr>
                <td> <?php echo $serial++ ?> </td>
                <td> <?php echo $value['user_name']; ?> </td>
                <td> <?php echo $value['morning']; ?> </td>
                <td> <?php echo $value['noon']; ?> </td>
                <td> <?php echo $value['night']; ?> </td>
                <td> <?php echo $value['deposit_date']; ?> </td> 
            </tr>
        <?php  } ?>
    </table>
</center>