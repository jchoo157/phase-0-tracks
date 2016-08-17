$(document).ready(function() {
  $("p").hide();

  $("h1").click(function() {
	$(this).next().slideToggle(500);
  });

  $("button").click(function() {
  	$("h2").slideToggle(300);
  });

  $("#first").click(function() {
  	$(this).css("background-color", "yellow");
  });

  $("#second").click(function() {
  	$(this).css("background-color", "red");
  });  

  $("#third").click(function() {
  	$(this).css("background-color", "orange");
  });
});
