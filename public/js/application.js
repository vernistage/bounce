$(document).ready(function() {
  $('a#add-word-btn').click(function(event){
    event.preventDefault();
    var self = $(this)
    $.ajax({
      type: 'GET',
      url: self.context.href
    }).done(function(response){
      self.after(response)
    })
  })

  $('a#tweet-view').click(function(event){
    event.preventDefault();
    var self = $(this)
    $.ajax({
      type: 'GET',
      url: self.context.href
    }).done(function(response){
      self.siblings('#show-tweet').remove();
      self.after(response)
    })
  })


});
