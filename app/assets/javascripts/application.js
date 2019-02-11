//= require rails-ujs
//= require jquery
//= require activestorage
//= require semantic-ui
//= require_tree .

$(document).ready(function () {
    // will call refreshPartial every 30 sec
    setInterval(refreshPartial, 30000)

});

// calls action refreshing the partial
function refreshPartial() {
  $.ajax({
    url: "/refresh"
 })
}
