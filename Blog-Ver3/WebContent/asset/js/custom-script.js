    $(document).ready(function() {
              $('#example').dataTable({
              });
              
              $("#example_length label").contents().first().remove();
              $("#example_length label").contents().last().replaceWith(" records per page");
              $("#example_length label").css("color", "#777");
              
              $("#example_filter label").contents().first().remove();
              $('#example_filter').find("input").attr("placeholder", "Search");
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

         var oldData = [];
         var newData = [];
         var toInput = true;
         var editCounter = 0;
         var deleteCounter = 0;
 
function update(button,id){
	console.log("in update "+id);
 findAnchor(id);
  var tableCells = document.getElementsByClassName(id);
  if(editCounter===0) {
    toInput=true;
   button.innerHTML = '<img src = "asset/images/save.svg" width="15px" height="15px">';
  
   anchor.innerHTML = '<img src = "asset/images/cancel.svg" width="15px" height="15px">';
  changeCells(tableCells);
  }
  else {
    button.innerHTML = '<img src = "asset/images/edit.svg" width="15px" height="15px">';
     anchor.innerHTML = '<img src = "asset/images/delete.svg" width="15px" height="15px">';
    saveData(id);
    changeCells(tableCells);
  }
    
}
    
function saveData(id) {
  var fields = document.getElementsByClassName("in");
  //console.log(fields);
  for (var i = 0; i < fields.length; i++) {
    //newData[i]=fields[i].value;
    console.log("in save"+oldData[i]);
    newData[i]=oldData[i];
    
    console.log("new " +newData[i]);
  }
   changeCells(document.getElementsByClassName(id));
}

function changeCells(tableCells){
  if (toInput) {
  for (var i = 0; i < tableCells.length; i++) {

            oldData[i] = tableCells[i].innerHTML.trim();
            console.log("old data = "+oldData[i]);
            var inputs = document.createElement('input');
            inputs.setAttribute("class","in");
            inputs.value = oldData[i];
            tableCells[i].innerHTML="";
            tableCells[i].appendChild(inputs);
  }
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

function changeAnchor() {

}


var anchor;
function findAnchor(id) {

  var an = document.getElementsByTagName("a");
   for (var j = 0; j < an.length; j++) {
    console.log(an[j].title);
    if (an[j].title == id) {
        anchor = an[j];
    }
  }
}