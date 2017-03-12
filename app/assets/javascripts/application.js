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
 displayAllCompanies()
 displayAllResponse()

  $('li').on('click', function(){
    $('input')[0].id = this.innerText
  })

  $('#anthony').on('click', function(){
    var input = $('.input-value')[0].value
    if ($('input')[0].id === "Company/outreach date") {
      axios.post('/company',  {name:input})
      addToCompanyList(input)
    }
    else if ($('input')[0].id === "Response of Outreach") {
      axios.post('/response',  {description:input})
      addToResponseList(input)
	   }
   })
})

function addToCompanyList(value) {
  $(".company-and-date").append('<li>' + value + '</li><hr>')
}

function addToResponseList(value) {
  $(".response").append('<li>' + value + '</li><hr>')
}


function displayAllCompanies() {
  axios.get('/all_companies')
  .then(function(response){
    var data = response.data
    for (var i = 0; i < data.length; i++) {
      $(".company-and-date").append('<li>' + data[i].name + '</li><hr>')
    }
  })
}

function displayAllResponse() {
  axios.get('/all_responses')
  .then(function(response){
    var data = response.data
    for (var i = 0; i < data.length; i++) {
      $(".response").append('<li>' + data[i].description + '</li><hr>')
    }
  })
}
