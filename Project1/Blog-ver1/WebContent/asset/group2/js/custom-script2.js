    $(document).ready(function() {
              $('#example').dataTable({
              });
              
              $("#example_length label").contents().first().remove();
              $("#example_length label").contents().last().replaceWith("   records per page");
              $("#example_length label").css("color", "#777").css("font-weight","400");
              $("#example_previous").contents().replaceWith("<strong> < </strong>");
              $("#example_next").contents().replaceWith("<strong> > </strong>");
              
              $("#example_filter label").contents().first().remove();
              $('#example_filter').find("input").attr("placeholder", "Search").css("font-weight","400");
            $("#hide").click(function(){
          $(".issue").hide();
        });
        $("#show").click(function(){
          $(".issue").show();
        });
       
      });
    
      $('#example').dataTable( {
        "language": {
          "paginate": {
            "next": "Next page"
          }
        }
      } );      

console.log("custom script");
         var oldData = [];
         var newData = [];
         var toInput = true;
         var editCounter = 0;
        
         var anchor;
       
        
 //Method to handle edit and save button 
function update(button,id){


  var tableCells = document.getElementsByClassName(id);
  if(editCounter===0) {
    toInput=true;
   button.innerHTML = '<img src = "asset/group2/images/save.svg" width="15px" height="15px" hspace="12">';
  
   
  changeCells(tableCells);
  }
  else {
    button.innerHTML = '<img src = "asset/group2/images/edit.svg" width="15px" height="15px" hspace="12">';
        
    saveData(id);
  }
    
}

    
function saveData(id) {
  var fields = document.getElementsByClassName("in");
  var url = window.location.href;  
  var index = url.lastIndexOf('/');

  for (var i = 0; i < fields.length; i++) {
    var name = fields[i].value;
    newData[i] = name;
    
  }
  url = url.substring(0,index);
  url+="/UpdateCategoryController";
  url += '?id'+'='+id;
    url += '&name'+'='+newData[0];
    url += '&date'+ '=' +newData[1];
  window.location.href = url;
   //changeCells(document.getElementsByClassName(id));

}

function changeCells(tableCells){
  if (toInput) {
 
      oldData[0] = tableCells[0].innerHTML.trim();
      console.log(oldData);
      var inputs = document.createElement('input');
      inputs.setAttribute("class","in");
      inputs.value = oldData[0];
      tableCells[0].innerHTML="";
      tableCells[0].appendChild(inputs);

  oldData[1] = tableCells[1].innerHTML.trim();
  console.log(oldData);
  tableCells[1].innerHTML="";
  
  var newDate = document.createElement('input');
  newDate.value = oldData[1];
  newDate.type = "text";
  newDate.id = "datepicker-13";
  newDate.className = "in";
  tableCells[1].appendChild(newDate);
  $(function() {
      $( "#datepicker-13" ).datepicker({ dateFormat: 'dd M yy'});
     $( "#datepicker-13" ).datepicker("show");
   });
toInput=false;
editCounter=1;
}
  else{
    for (var i = 0; i < tableCells.length; i++) {

            tableCells[i].innerHTML=newData[i];
            
   }
   editCounter=0;
  }
}

function cancel(tableCells) {
   for (var i = 0; i < tableCells.length; i++) {

            newData[i]=oldData[i];
            
   }
    toInput=false;
    deleteCounter=0;
}
