$(document).ready(function() {

	$('.tooltipped').tipsy({gravity:'n'});

	$('nav a').click(function() {
	  window.location.href = this.href;
	  return false;
	});

	$(document).keydown(function(e) {
    switch (e.keyCode) {
      case 37:
        $('nav a.prev').click();
        break;
      case 39:
        $('nav a.next').click();
        break;
    }
  });
  
});