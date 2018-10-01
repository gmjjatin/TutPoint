// Execute the function and show all columns
filterSelection("all") 
//for search box filter
function filterSelectionForSearchBox(){
  
  
  var y = document.getElementById("searchBar").value;
  
    filterSelection(y);
}

function filterSelection(c) {
  var x, i;
  c=c.toLowerCase();
  x = document.getElementsByClassName("columnC");
  if (c == "all") c = "";
  // Add the "show" class (display:block) to the filtered elements, and remove the "show" class from the elements that are not selected
  for (i = 0; i < x.length; i++) {
    w3RemoveClass(x[i], "show");
    
    if (x[i].className.toLowerCase().indexOf(c) > -1) w3AddClass(x[i], "show");
  }
}

// Show filtered elements
function w3AddClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    if (arr1.indexOf(arr2[i]) == -1) {
      element.className += " " + arr2[i];
    }
  }
}

// Hide elements that are not selected
function w3RemoveClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    while (arr1.indexOf(arr2[i]) > -1) {
      arr1.splice(arr1.indexOf(arr2[i]), 1); 
    }
  }
  element.className = arr1.join(" ");
}

// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("myBtnContainer");
if(btnContainer!==null){
  var btns = btnContainer.getElementsByClassName("btnC");
  for (var i = 0; i < btns.length; i++) {
    btns[i].addEventListener("click", function(){
      var current = document.getElementsByClassName("active");
      current[0].className = current[0].className.replace(" active", "");
      this.className += " active";
    });
  }
}


function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#profile-pic')
                    .attr('src', e.target.result)
                    
                    .height(150);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }

//for search box enter press event
$(document).ready(function(){
  $('#searchBar').keypress(function(e){
    if(e.keyCode==13)
    $('#customBtn').click();
  });
});