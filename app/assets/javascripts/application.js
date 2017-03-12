// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
  $('li').on('click', function(){
    addInput(this)
  })
})

function addInput(value) {
  var text = value.innerText
  $('.dropdown-button').after('<button style="margin-left: 10px;" class="waves-effect waves-light btn">Add to table</button><br>')
  $('.waves-effect').after('<input  placeholder=' +  text + '="first_name" type="text" class="validate">')
}
