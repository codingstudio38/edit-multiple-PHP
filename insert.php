<?php
error_reporting(0);
include_once('dbdb.php');
if(isset($_POST['btn_data'])){
unset($_POST['btn_data']);  
$titles=$_POST['title'];
$links=$_POST['link'];
$emails=$_POST['email'];
$total_in=count($titles);
if($total_in == "0"){
$msg = "No Record Found..";
header("Location:insert.php?msg=".$msg);exit;
}else{
for($i=0; $i < $total_in; $i++){
$insert_que="INSERT INTO `posts` SET title='$titles[$i]',link='$links[$i]',email='$emails[$i]'";
$dbConnection->exec($insert_que);
}
$msg = "Update Successfully";
header("Location:insert.php?msg=".$msg);
}
}
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Create Form Input Using JavaScript</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style type="text/css">
  input {
  padding: 5px;
  margin: 5px;
}
#total{
text-align: center;
}
h3{
font-weight: bold;
background-color: #00c431;
color: white;
text-align: center;
padding: 5px;
}
h4{
font-weight: bold;
background-color: #f88f08;
color: white;
text-align: center;
line-height: inherit;
}
body{
  background-color: #dae7ff;
}
</style>


</head>




<body>

 <div class="container">
<div class="col-sm-12">  
<form action="insert.php" method="post" autocomplete="off" style="margin-top:5%;">
<table width="78%" align="center" border="0">
   <tr>
    <td align="center">
       <h3>Insert Multiple Values From Multiple Forms At Once Using PHP</h3>
       <h4><?php echo $_REQUEST['msg']; ?></h4>
    </td>
  </tr>
  <tr>
    <td align="center">
      <a href="index.php" class="btn btn-info"style="width: 120px; float:right;"  >View Page</a>
      <br/>     
   <br/> 
       <input type="text" placeholder="Number of inputs..." name="total" id="total" onchange="generateInputs(this.value)"  onkeypress="return isNumberKey(event)" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" maxlength="2" required="" class="form-control" style="margin: 0px;">
    </td>
  </tr>

  <tr>
    <td id="all_inputs" align="center"></td>
  </tr>

  <tr>
    <td align="center">
       <button type="submit" name="btn_data" id="btn_data" class="btn btn-primary btn-block" >Upload Data</button>
    </td>
  </tr>
</table>

</form>

</div>
</div>
<script type="text/javascript">
function generateInputs(val) {
  total_no = val;
  for (i = 0; total_no > i; i++) {
    var element1 = document.createElement('input');
    element1.type = "text";
    element1.placeholder = "Video Title";
    element1.name = "title[]";
    element1.required = "true";
    element1.className = "col-sm-3 col-form-label";

    var element2 = document.createElement('input');
    element2.type = "text";
    element2.placeholder = "Video Link";
    element2.name = "link[]";
    element2.required = "true";
    element2.className = "col-sm-3 col-form-label";

    var element3 = document.createElement('input');
    element3.type = "email";
    element3.placeholder = "Email Id";
    element3.name = "email[]";
    element3.required = "true";
    element3.className = "col-sm-3 col-form-label";

var board = document.createElement('div');
board.appendChild(element1)
board.appendChild(element2)
board.appendChild(element3)
  document.getElementById('all_inputs').appendChild(board);
  }
}




function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

         return true;
      }
</script>
</body>
</html>