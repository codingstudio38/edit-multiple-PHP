<?php
error_reporting(0);
include_once('dbdb.php');
?>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
 <title>Edit & Delete Multiple Rows Using PHP</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
body{
background-color: #d9f2ff !important;
}
.tablevk{
background-color: white;
 }  
.tablevk thead, tfoot {
background:#f9f9f9;
display:table;
width:100%;
}
.tablevk thead tr{
background-color: #17b900;
border-color: #00bd41;
}
.tablevk tfoot tr{
background-color: #17b900;
border-color: #00bd41;
}
.tablevk tbody {
height:400px;
overflow:auto;
overflow-x:hidden;
display:block;
width:100%;
}

.tablevk tbody tr {
display:table;
width:100%;
table-layout:fixed;
}
#dalete_div{
    padding:1px; background-color: red; color: white; width: 50px !important; text-align: center; font-weight: initial;
   }
   #edit_div{
    padding:1px; background-color:#f6b800; color: white; width: 50px !important; text-align: center; font-weight: initial;
   }
#btn_edit{
 width: 105px !important; padding: 2px !important;  display: none;margin-left: 10px; 
}
#btn_delete{
 width: 105px !important; padding: 2px !important;  display: none; margin-left: -83px; 
}
#edit_span{
padding:1px; background-color:#f6b800; color: white; width: 50px !important; text-align: center; font-weight: initial; display: none;margin-left: 35px;    
}
#dalete_span{
    padding:1px; background-color: red; color: white; width: 50px !important; text-align: center; font-weight: initial; display: none; margin-left: 23px;
   }
</style>
</head>

<body>
   <div class="container">


   <br />
<div class="col-sm-12">

   <h3 align="center">Edit & Delete Multiple Rows Using PHP</h3>
   <h3 align="center" ><?php echo $_REQUEST['msg']; ?></h3>
   <br />   
   <a href="insert.php" class="btn btn-info" style="width: 120px; float:right;" >Add New</a>
  <br/>   
<form action="edit.php" method="post">
  
<table width="100%" class="table table-striped tablevk" >
  <thead>
   <tr>
      <th width="20%" align="center">Sl No</th>  
      <th width="20%" align="center">Titles</th>
       <th width="20%" align="center">Links</th>
        <th width="20%" align="center">Email Id</th>
      <th width="20%" align="center">
 <div class="row">
<div class="col-sm-5" id="edit_span" >
Edit-<input type='checkbox' id='EditAll' autocomplete="off" >
 </div>
 <div class="col-sm-6" id="dalete_span">
Delete-<input type='checkbox' id='DeleteAll' autocomplete="off">
 </div>
 </div>

    </th>
    </tr>
  </thead>
  <tbody>
    <?php
$i=1;   
$sql2="SELECT * FROM `posts` order by id DESC";
foreach($dbConnection->query($sql2, PDO::FETCH_ASSOC) as $row)
 {
  ?>
    <tr>
    <td width="20%" align="left"><?php echo $i++;?></td>
    <td width="20%" align="left"><?php echo $row['title'];?></td>
    <td width="20%" align="left"><a href="<?php echo $row['link'];?>"><?php echo $row['link'];?></a></td>
    <td width="20%" align="left"><?php echo $row['email'];?></td>
    <td width="20%" align="left">
 <div class="row">
<div class="col-sm-5" id="edit_div">
 Edit-<input type="checkbox" class="edit_customer" name="editid[]"  value="<?php echo $row['id'];?>" autocomplete="off"/>
 </div>
 <div class="col-sm-6" id="dalete_div">
 Delete-<input type="checkbox" class="delete_customer" name="deleteid[]"  value="<?php echo $row['id'];?>" autocomplete="off"/>
 </div>
 </div>       
       </td>
     </tr>
<?php  }  ?>
  </tbody>
  <tfoot>
     <tr>
      <th width="20%" align="center">Sl No</th>  
      <th width="20%" align="center">Titles</th>
       <th width="20%" align="center">Links</th>
        <th width="20%" align="center">Email Id</th>
      <th width="20%" align="center">
       
        
<div class="row">
<div class="col-sm-5" >
 <button type="submit" name="btn_edit" id="btn_edit" class="btn btn-warning" >Edit</button>
 </div>
 <div class="col-sm-6">
<button type="submit" name="btn_delete" id="btn_delete" class="btn btn-danger" >Delete</button>
 </div>
 </div>

        </th>
    </tr>
  </tfoot>
</table>
</form> 
</div>



</div>


</body>
  <script>
 
$(document).ready(function(){

$(".delete_customer").on('click', function(){
  var totald_id = [];
$(".delete_customer:checkbox:checked").each(function(i){
    totald_id[i] = $(this).val();
   });
if(totald_id.length > 0){
    $('#dalete_span').css('display','block');
    $('#btn_delete').css('display','block');
    $('.edit_customer').prop('checked',false);
    $('#EditAll').prop('checked',false);
    $('#edit_span').css('display','none'); 
    $('#btn_edit').css('display','none'); 
}else{
$('#dalete_span').css('display','none');
$('#btn_delete').css('display','none');    
}
});

$('#DeleteAll').on('click',function(){
    
        if($('#DeleteAll:checked').length == $('#DeleteAll').length){
           $('.delete_customer').prop('checked',true);
        }else{
            $('.delete_customer').prop('checked',false);
        }
var totald_id = [];
$(".delete_customer:checkbox:checked").each(function(i){
    totald_id[i] = $(this).val();
   });
if(totald_id.length > 0){
    $('#dalete_span').css('display','block');
    $('#btn_delete').css('display','block');
    $('.edit_customer').prop('checked',false);
    $('#EditAll').prop('checked',false);
    $('#edit_span').css('display','none'); 
    $('#btn_edit').css('display','none'); 
}else{
$('#dalete_span').css('display','none');
$('#btn_delete').css('display','none');    
}
});




$(".edit_customer").on('click', function(){
  var totaledit_id = [];
$(".edit_customer:checkbox:checked").each(function(i){
    totaledit_id[i] = $(this).val();
   });
if(totaledit_id.length > 0){
    $('#edit_span').css('display','block');
    $('#btn_edit').css('display','block');
    $('.delete_customer').prop('checked',false);
    $('#DeleteAll').prop('checked',false);
    $('#dalete_span').css('display','none'); 
    $('#btn_delete').css('display','none');
}else{
$('#edit_span').css('display','none'); 
$('#btn_edit').css('display','none');   
}
});

$('#EditAll').on('click',function(){
    
        if($('#EditAll:checked').length == $('#EditAll').length){
           $('.edit_customer').prop('checked',true);
        }else{
            $('.edit_customer').prop('checked',false);
        }

var totaledit_id = [];
$(".edit_customer:checkbox:checked").each(function(i){
    totaledit_id[i] = $(this).val();
   });
if(totaledit_id.length > 0){
    $('#edit_span').css('display','block');
    $('#btn_edit').css('display','block');
    $('.delete_customer').prop('checked',false);
    $('#DeleteAll').prop('checked',false);
    $('#dalete_span').css('display','none'); 
    $('#btn_delete').css('display','none');
}else{
$('#edit_span').css('display','none'); 
$('#btn_edit').css('display','none');   
}

});




});
</script> 
</html>