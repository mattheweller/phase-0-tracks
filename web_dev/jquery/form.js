$(function() {

  var $newItemButton = $('#newItemButton');
  var $newItemForm = $('#newItemForm');
  var $textInput = $('input:text');

  $newItemButton.show();
  $newItemForm.hide();

  $('#showForm').on('click', function(){
    $newItemButton.hide();
    $newItemForm.show();
  });

  $newItemForm.on('submit', function(event){
    event.preventDefault();
    if (event.isDefaultPrevented()); {
      var item = $textInput.val();
      $('ul li:first').before('<li>' + item + '</li>');
      $newItemForm.hide();
      $newItemButton.show();
      // $textInput.val('');
    }
  });

});
