// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-filestyle
//= require datatables.min
//= require underscore
//= require backbone
//= require backbone_rails_sync
//= require backbone_datalink
//= require pym
//= require google-analytics

function showSpinner() {
	target = document.getElementById('body-content');
	spinner.spin(target);
}

// Set social buttons
function socialShare(network) {
	var winWidth = 520;
	var winHeight = 350;
	var winTop = (screen.height / 2) - (winHeight / 2);
	var winLeft = (screen.width / 2) - (winWidth / 2);
	var url = encodeURIComponent(window.location.href);
	var headline = $('#body-content h1').text();

	if (network === 'Facebook') {
		var url_start = 'http://www.facebook.com/sharer.php?s=100';
	} else if (network === 'Twitter') {
		var url_start = 'https://twitter.com/share?url=' + url + '&text=Check this out: ' + headline + ' - &via=gazettedotcom';
	}

	window.open(url_start + '&p[images][0]=' + image, 'sharer', 'top=' + winTop + ',left=' + winLeft + ',toolbar=0,status=0,width=' + winWidth + ',height=' + winHeight);
}

// Fire it up
$(document).ready(function() {

	var twitter = '<a title="Tweet" class="share-action twitter" href="javascript:socialShare(' + "'Twitter'" + ')"><div class="fa fa-twitter fa-2x icons-share"></div></a>';
	var facebook = '<a title="Share on Facebook" class="share-action facebook" href="javascript:socialShare(' + "'Facebook'" + ')"><div class="fa fa-facebook fa-2x icons-share"></div></a>';
	$('#share-first-li').html(twitter);
	$('#share-next-li').html(facebook);

	// Fade out form and add spinner if user is editing or uploading a new dataset
	$('.actions input').click(function(e) {
		$(e.target).hide();
		$('#btn-back').hide();
		$('#btn-show-back').hide();

		$(e.target).off('click');
		$('form').css({
			'opacity':0.2
		});

		showSpinner();
	});

	$(document).on('confirm:complete', function (e, answer) {
  	if (answer) {
    	$(e.target).off('click');
			$('#body-content .table').css({
				'opacity':0.2
			});

			showSpinner();
  	}
	});

// Close doc ready
});