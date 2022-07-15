<?php
error_reporting(0);
include_once('dbdb.php');
?>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
 <title>Edit & Delete Multiple Rows Using PHP</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/dataTables.bootstrap4.min.css">

<script src="js/jquery.min.js"></script>

<script src="js/jquery.dataTables.min.js"></script>
<script src="js/dataTables.bootstrap4.min.js"></script>

<script src="js/jspdf.min.js"></script>
<script src="js/jspdf.plugin.autotable.min.js"></script> 

<script type="text/javascript" src="js/xlsx.full.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable();
} );
  </script>

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
#edit_div{
padding:1px; background-color:#f6b800; color: white; text-align: center; font-weight: initial; width: 80px;
}
#dalete_div{
padding:1px; background-color: red; color: white; text-align: center; font-weight: initial; width: 80px;
}
#btn_edit{
 width: 80px !important; padding: 2px !important;   
}
#btn_delete{
 width: 80px !important; padding: 2px !important;  
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
    <table align="center" width="100%">
     <tr>
         <td align="center">
        <button type="button" name="pdf_rx" id="pdf_rx" class="btn btn-warning" onclick="generate()" >PDF Export</button>
 <button type="button"  class="btn btn-primary" onclick="ExportToExcel()">XL Export</button>  
 <a href="insert.php" class="btn btn-info">Add New</a>     
         </td>
     </tr>
 </table>  
 

   <br/> 
<form action="edit.php" method="post" >
  
<table width="100%" class="table table-striped tablevk" id="example">
  <thead>
   <tr>
      <th width="20%" align="center">Sl No</th>  
      <th width="20%" align="center">Titles</th>
       <th width="20%" align="center">Links</th>
        <th width="20%" align="center">Email Id</th>
      <th width="20%" align="center">
 <div class="row">

<div class="col-sm-5">
<div id="edit_div">    
Edit-<input type='checkbox' id='EditAll' autocomplete="off" >
 </div>
</div>

<div class="col-sm-5" >
<div id="dalete_div">    
Delete-<input type='checkbox' id='DeleteAll' autocomplete="off">
 </div>
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
<div class="col-sm-5" style="margin-left: 10px;">
<div id="edit_div">
 Edit-<input type="checkbox" class="edit_customer" name="editid[]"  value="<?php echo $row['id'];?>" autocomplete="off"/>
 </div>
 </div>
 <div class="col-sm-5">
 <div id="dalete_div">   
 Delete-<input type="checkbox" class="delete_customer" name="deleteid[]"  value="<?php echo $row['id'];?>" autocomplete="off"/>
 </div>
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
<div class="col-sm-5">
 <button type="submit" name="btn_edit" id="btn_edit" class="btn btn-warning" >Edit</button>
 </div>
 <div class="col-sm-5">
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
$('#DeleteAll').on('click',function(){
        if($('#DeleteAll:checked').length == $('#DeleteAll').length){
           $('.delete_customer').prop('checked',true);
        }else{
            $('.delete_customer').prop('checked',false);
        }
});



$('#EditAll').on('click',function(){
        if($('#EditAll:checked').length == $('#EditAll').length){
           $('.edit_customer').prop('checked',true);
        }else{
            $('.edit_customer').prop('checked',false);
        }
});




});



function ExportToExcel(type, fn, dl) {
       var elt = document.getElementById('example');
       var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
       return dl ?
         XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }):
         XLSX.writeFile(wb, fn || ('MySheetName.' + (type || 'xlsx')));
    }

    function generate() {  
    var doc = new jsPDF('p', 'pt', 'letter');  
    var pageHeight = 0;  
    pageHeight = doc.internal.pageSize.height;  
    specialElementHandlers = {  
        '#bypassme': function(element, renderer) {  
            return true  
        }  
    };  
    margins = {  
        top: 150,  
        bottom: 60,  
        left: 0,  
        right: 0,  
        width: 600  
    };  
    var y = 20;  
    doc.setLineWidth(2);  
    doc.text(200, x = y + 30, "TOTAL MARKS OF STUDENTS");  
    doc.autoTable({  
        html: '#example',  
        startY: 60,  
        theme: 'grid',  
        columnStyles: {  
            0: {  
                cellWidth: 50,  
            },  
            1: {  
                cellWidth: 50,  
            },  
            2: {  
                cellWidth: 50,  
            },
            3: {  
                cellWidth: 50,  
            },
            4: {  
                cellWidth: 50,  
            }    
        } 
    })  
    doc.save('val.pdf');  
} 

</script> 
</html>