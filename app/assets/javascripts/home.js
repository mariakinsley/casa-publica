// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
function initMap() {
      var myLatLng = {lat: -25.363, lng: 131.044};

      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 4,
        center: myLatLng
      });
    }
    var $header = $('.art-header');
    var $artInner = $('.art-inner');
    var $body = $('body');
    var $wrap = $('.wrap');
    var scrollTop;

    $body.css({
      'background-color': 'rgba(0,0,0,'+ (.1 - scrollTop / 6000) + ')'
    });

    $(window).scroll(function(){
    	var scrollTop = $(window).scrollTop();

    	$header.css({
    		'background-position' : 'center ' + (-scrollTop/6)+"px"
    	});

    	$artInner.css({
    		'opacity': 1 - scrollTop / 600 ,
    		'margin-top' : scrollTop/ 2 + 'px'
    	});

      $body.css({
        'background-color': 'rgba(0,0,0,'+ (.1 - scrollTop / 6000) + ')'
      });

    });
