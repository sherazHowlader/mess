</div>


<div class="app-wrapper-footer text-center">
    <div class="app-footer">
        <div class="app-footer__inner">
            <div class="app-footer-left">
              <?php 
                $user = $_SESSION['userData'];
                if ($user['role_id'] == 3) {
                  echo "<strong>".$user['phn']."</strong>";
                }else{
                  echo "<strong>"."&copy; 2021 Coded Info All Rights Reserved"."</strong>";
                }
              ?>
            </div>
            <div class="app-footer-right">
                <strong> Developed by </strong> &nbsp;
                <a target="_blank" href="http://sheraz.codedinfo.com/"> <b> Coded Info </b> </a>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</div>
<script type="text/javascript" src="<?php echo MAIN_JS; ?>/main.js"></script>
<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()
</script>
</body>

</html>