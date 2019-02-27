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
         var deleteCounter = 0;
         var anchor;
         var buttonClicked;
        
 //Method to handle edit and save button 
function update(button,id){
buttonClicked = button;
 findAnchor(id);
  var tableCells = document.getElementsByClassName(id);
  if(editCounter===0) {
    toInput=true;
   button.innerHTML = '<img src = "asset/group2/images/save.svg" width="15px" height="15px" hspace="12">';
   anchor.removeAttribute("href");
   deleteCounter = 1;
   anchor.innerHTML = '<img src = "asset/group2/images/cancel.svg" width="15px" height="15px">';
   
  changeCells(tableCells);
  }
  else {
    button.innerHTML = '<img src = "asset/group2/images/edit.svg" width="15px" height="15px" hspace="12">';
     deleteCounter = 0;
     anchor.innerHTML = '<img src = "asset/group2/images/delete.svg" width="15px" height="15px">';
    saveData(id);
  }
    
}

//Method to handle delete and cancel button
function deletePost(id) {
  var tableCells = document.getElementsByClassName(id);
  if (deleteCounter===0) {
    var result = confirm("Are you sure you want to delete the post?");
      if (result) {
    	  var url = window.location.href;  
    	  var index = url.lastIndexOf('/');
    	  url = url.substring(0,index);
    	  url+="/DeleteBlogController";
    	  url += '?id'+'='+id;
    	  window.location.href = url;
      }
  } else {
      cancel(tableCells);
       buttonClicked.innerHTML = '<img src = "asset/group2/images/edit.svg" width="15px" height="15px" hspace="12">';
     anchor.innerHTML = '<img src = "asset/group2/images/delete.svg" width="15px" height="15px">';
      changeCells(tableCells);
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
  url+="/InputServlet";
  url += '?id'+'='+id;
    url += '&title'+'='+newData[0];
    url += '&date'+ '=' +newData[2];
    url += '&category=';
    var categoryArray = newData[1].split(' ');
    for (var i = 0; i < categoryArray.length; i++) {
      url += categoryArray[i]+' ';
  }
  
  window.location.href = url;
   //changeCells(document.getElementsByClassName(id));

}

function changeCells(tableCells){
  if (toInput) {
  
  for (var i = 0; i < 2; i++) {

      oldData[i] = tableCells[i].innerHTML.trim();
      var inputs = document.createElement('input');
      inputs.setAttribute("class","in");
      inputs.value = oldData[i];
      tableCells[i].innerHTML="";
      tableCells[i].appendChild(inputs);
}
  oldData[2] = tableCells[2].innerHTML.trim();
  tableCells[2].innerHTML="";
  
  var newDate = document.createElement('input');
 
  newDate.value = oldData[2];
  newDate.type = "text";
  newDate.id = "datepicker-13";
  newDate.className = "in";
  tableCells[2].appendChild(newDate);
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

function findAnchor(id) {

  var an = document.getElementsByTagName("a");
   for (var j = 0; j < an.length; j++) {
    if (an[j].title == id) {
        anchor = an[j];
    }
  }
}

function cancel(tableCells) {
   for (var i = 0; i < tableCells.length; i++) {

            newData[i]=oldData[i];
            
   }
    toInput=false;
    deleteCounter=0;
}
