(function( $ ) {

	'use strict';

	var customizer = {

		init: function () {

			function getQueryVariable(variable) {
				var query = window.location.search.substring(1);
				var vars = query.split('&');
				for (var i = 0; i < vars.length; i++) {
					var pair = vars[i].split('=');
					if(pair[0] === variable){
						return pair[1];
					}
				}
				return (false);
			}

			var scheme = getQueryVariable('scheme');

			if( scheme ) {
				var css = $('<link>', {
					'id': 'scheme-css',
					'rel': 'stylesheet',
					'href': 'styles/schemes/' + scheme + '.css'
				});
				$('head').append(css);
			}

		}

	};

	$(document).ready(function(){

		customizer.init();

	});

})( jQuery );
