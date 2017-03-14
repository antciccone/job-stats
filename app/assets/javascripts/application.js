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
 displayAllApplied()
 displayAllPhoneInterviews()
 displayAllHomework()
 displayAllInPerson()

$('li').on('click', function(){
  $('input')[0].id = this.innerText
})

$('li').on('click', function(){
  $('input')[0].id = this.innerText
})

$('#anthony').on('click', function(){
  var input = $('.input-value')[0].value
  if ($('input')[0].id === "Company/outreach date") {
    axios.post('/company',  {name:input})
    addToCompanyList(input)
    getStats()
  }
  else if ($('input')[0].id === "Response of Outreach") {
    axios.post('/response',  {description:input})
    addToResponseList(input)
    getStats()
   }
  else if ($('input')[0].id === "Directly Applied online") {
     axios.post('/applied',  {company:input})
     addToAppliedList(input)
     getStats();
    }
  else if ($('input')[0].id === "Phone Interview") {
    axios.post('/phone-interview',  {company:input})
    addToInpersonInterviewList(input)
    getStats();
    }
  else if ($('input')[0].id === "Take Home Assignment") {
    axios.post('/homework',  {company:input})
    addToHomework(input)
    getStats();
  }
  else if  ($('input')[0].id === "In Person Interview") {
    axios.post('/in-person',  {company:input})
    addToInterview(input)
    getStats()
    }
  })
})

function addToCompanyList(value) {
  $(".company-and-date").append('<li contenteditable="true">' + value + '</li>')
}

function addToResponseList(value) {
  $(".response").append('<li contenteditable="true">' + value + '</li>')
}

function addToAppliedList(value){
  $(".directly-applied").append('<li contenteditable="true">' + value + '</li>')
}

function addToInpersonInterviewList(value){
  $(".phone-interview").append('<li contenteditable="true">' + value + '</li>')
}

function addToHomework(value) {
  $(".homework").append('<li contenteditable="true">' + value + '</li>')
}

function addToInterview(value) {
  $(".in-person").append('<li contenteditable="true">' + value + '</li>')
}

function displayAllCompanies() {
  axios.get('/all_companies')
  .then(function(response){
    var data = response.data
    for (var i = 0; i < data.length; i++) {
      $(".company-and-date").append('<li contenteditable="true">' + data[i].name + '</li>')
    }
  })
}

function displayAllInPerson() {
  axios.get('/all-interviews')
  .then(function(response){
    var data = response.data
    for (var i = 0; i < data.length; i++) {
      $(".in-person").append('<li contenteditable="true">' + data[i].company + '</li>')
    }
    getStats();
  })
}

function displayAllResponse() {
  axios.get('/all_responses')
  .then(function(response){
    var data = response.data
    for (var i = 0; i < data.length; i++) {
      $(".response").append('<li contenteditable="true">' + data[i].description + '</li>')
    }
    getStats();
  })
}

function displayAllApplied() {
  axios.get('/all_applied')
  .then(function(response){
    var data = response.data
    for (var i = 0; i < data.length; i++) {
      $(".directly-applied").append('<li contenteditable="true">' + data[i].company + '</li>')
    }
    getStats();
  })
}

function  displayAllPhoneInterviews() {
  axios.get('/phone-interview')
  .then(function(response){
    var data = response.data
    for (var i = 0; i < data.length; i++) {
      $(".phone-interview").append('<li contenteditable="true">' + data[i].company + '</li>')
    }
    getStats();
  })
}

function displayAllHomework() {
  axios.get('/all-homework')
  .then(function(response){
    var data = response.data
    for (var i = 0; i < data.length; i++) {
      $(".homework").append('<li contenteditable="true">' + data[i].company + '</li>')
    }
    getStats();
  })
}

function getStats() {
  var percentage = ($('.response li').length / $(".company-and-date li").length) * 100
  $('.applied-percent')[0].innerText = 'Response Percentage:' + " " + Math.round(percentage) + '%'
  $("#company-and-date")[0].innerText = "Company/outreach date" + " " + "(" + $(".company-and-date li").length + ")"
  $("#response")[0].innerText = "Response of Out Reach " + "(" + $(".response li").length + ")"
  $("#directly-applied")[0].innerText = "Directly Applied online " + "(" + $(".directly-applied li").length + ")"
  $("#phone-interview")[0].innerText = "Phone Interview " + "(" + $(".phone-interview li").length + ")"
  $("#homework")[0].innerText = "Take Home Assignment " + "(" + $(".homework li").length + ")"
  $("#in-person")[0].innerText = "In Person Interview " + "(" + $(".in-person li").length + ")"

}
