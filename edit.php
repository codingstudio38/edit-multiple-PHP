<?php
error_reporting(0);
include_once('dbdb.php');

if(isset($_POST['btn_delete'])){
unset($_POST['btn_delete']);
$delete_ids=$_POST['deleteid'];
$totaldeleteid=count($_POST['deleteid']);
if($totaldeleteid==""){
echo "<script>alert('Sorry No Record Found');window.location.href = 'index.php';</script>";exit;
}
foreach($delete_ids as $key => $val)
  {
  $delete_que="DELETE from `posts` WHERE `id`='$val'";
  $dbConnection->exec($delete_que);
  }
 header("Location:index.php?msg=Record Delete Successfully");   
}


if(isset($_POST['btn_edit'])){
unset($_POST['btn_edit']);
$edit_ids=$_POST['editid'];
$totaledit_ids=count($_POST['editid']);
}


if(isset($_POST['btn_dataupdate'])){
unset($_POST['btn_dataupdate']);
$titles=$_POST['titlee'];
$links=$_POST['links'];
$iddds=$_POST['iddd'];
$count=count($_POST['iddd']);

for ($i=0; $i<$count; $i++) {
  $update_que="UPDATE `posts` SET title='$titles[$i]',link='$links[$i]' WHERE `id`='$iddds[$i]'"; 
    $dbConnection->exec($update_que);
}
header("Location:index.php?msg=Update Successfully");  
}


?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
   <title>Edit & Delete multiple rows using PHP</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style type="text/css">
    h3{
      text-align:center; background-color: #ff8f00; line-height: inherit; color: white; font-weight: bold;
    }
    b{
      background-color: #06b606; padding: 6px; border-radius: 5px; color: white;
    }
    body{
      background-color: #d4efff;
    }
    #v_tbl{
      border: 3px solid #ff8f00; background-color: white;
    }
    #slno{
      width: 50px; text-align: center; background: #d1d1d1;
    }
    #titlee{
        margin-top: 5px; margin-bottom: 5px;
    }
  </style>
</head>
<body>
 <div class="container">
   <br /> 
<table width="50%" border="0" align="center" id="v_tbl">
<tr>
    <td>
<h3>TOTAL EDIT IDS "<?php echo $totaledit_ids; if($totaledit_ids==""){echo "<script>alert('Sorry No Record Found');window.location.href = 'index.php';</script>";}?>"</h3>

    </td>
</tr>
  <tr>
    <td>
      


<form action="edit.php" method="post" autocomplete="off">
<?php
$j = 0;
foreach($edit_ids as $key => $val)
  {
  $view_que="SELECT * FROM `posts` WHERE `id`='$val'";
  foreach($dbConnection->query($view_que, PDO::FETCH_ASSOC) as $row) { 
    ?>
<table width="100%">
  <tr>
    <td align="left">
<input type="text" name="" value="<?php echo ++$j;?>" class="form-control" readonly="true" id="slno">     
    </td>
    <td align="center">
<input type="text" name="titlee[]" value="<?=$row['title'];?>" class="form-control" id="titlee">
<input type="text" name="links[]" value="<?=$row['link'];?>" class="form-control" id="links">
      </td>
    <td align="right">
<input type="hidden" name="iddd[]" value="<?=$row['id'];?>" >
<b>
ID-<?=$row['id'];?>
</b>
    </td>
  </tr>
</table>
  <?php  } } ?>
<button type="submit" name="btn_dataupdate" id="btn_dataupdate" class="btn btn-primary btn-block" >Update Data</button>
</form>



    </td>
  </tr>
</table>
</div>


</body>
</html> 