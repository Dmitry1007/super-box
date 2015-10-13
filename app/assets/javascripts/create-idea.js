$(document).ready(function(){

  function ideaAccordionElement(idea){
    return "<ul class='accordion' data-accordion><li class='accordion-navigation'><a href=#idea"+idea.id+">"+idea.title+"<div class='right'><i class='fa fa-thumbs-o-up'></i><i class='fa fa-thumbs-o-down'></i><span class='round radius label'>"+idea.quality+"</span></div></a><div id=idea"+idea.id+" class='content'>"+idea.body+"<br><span class='alert round radius label'>Delete</span><span class='round radius label'>Edit</span></div></li></ul>"
  }

  $('form').submit(function() {
    var valuesToSubmit = $(this).serialize();
    $.ajax({
        type: "POST",
        url: $(this).attr('action'), //sumbits it to the given url of the form
        data: valuesToSubmit,
        dataType: "JSON" // you want a difference between normal and ajax-calls, and json is standard
    }).success(function(idea){
      console.log("success", idea);
      $('.ideas-list').append(ideaAccordionElement(idea))
      $(document).foundation('accordion', 'reflow');
    });
    return false; // prevents normal behaviour
  });

})
