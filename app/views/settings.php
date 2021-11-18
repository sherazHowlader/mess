<?php 
    $user = $_SESSION['userData'];
?>

<div class="card">
  <h5 class="card-header"> Reset Data </h5>
  <div class="card-body">
    <h5 class="card-title"> পুরো মাসের ডেটা মুছে দিন </h5>
    <p class="card-text"> আপনি যদি ডেটা মুছে ফেলেন তবে আপনি পরের মাসে সঠিক তথ্য দেখতে পাবেন। অন্যথায় এটি ঝামেলা সৃষ্টি করবে। </p>
    <a onclick="return confirm('আপনি কি নিশ্চিত যে আপনি সমস্ত ডাটা মুছতে চান...মুছে ফেলার পূর্বে আরেকবার ভাবুন.....');" href="<?php echo BASE_URL; ?>/Index/reset/<?php echo $user['mess_name']; ?>" class="btn btn-danger"> Reset </a>
  </div>
</div>


<br>
<br>
<br>