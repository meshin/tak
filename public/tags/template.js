	if(typeof(text_ad)=='undefined'){
		var text_ad = new Array();
	}

	(function(){

		var $ = jQuery;

		var i = text_ad.length;

		o = text_ad[i] = {

	   		href: h_href,
			img:  h_img,
			text: h_title,
			items:
			[
				{
					href: href0,
					img:  img0,
					title: title0,
					text:  text0
				},
			],
			colors: {
				h3_link:  '#333',
				h3_hover: '#FFFFFF',
				p_link:   '#595959',
				p_hover:  '#fff',
				bg_link:  '#e6e6e6',
				bg_hover: '#c30709',
				border:   '#c30709',
				background:'#e6e6e6'
			}

		};



		var header = $('<div class="header"><a href="'+o.href+'" target="_blank" title="'+o.text+'"><img s'+'rc="'+o.img+'" alt="'+o.text+'" /></a></div>');
		var body = $('<div class="body"></div>');


		for(var k=0; k<o.items.length; k++){

			body.append('<a href="'+o.items[k].href+'" target="_blank" title="'+o.items[k].title+'"><div class="holder">'+o.items[k].title+'</div><img s'+'rc="'+o.items[k].img+'" alt="'+o.items[k].title+'" /><h3>'+o.items[k].title+'</h3><p>'+o.items[k].text+'</p><div style="clear:both"></div></a>');

		}

		var footer = $('<div class="footer"><a href="mailto:online.sales@novatv.hr ">Dodaj svoj oglas!</a></div>');


		var style = '<style>';

		style += '#text_ad_'+i+'.text_ad_2 a:link h3, #text_ad_'+i+'.text_ad_2 a:visited h3{ color: '+o.colors.h3_link+'; }';

		style += '#text_ad_'+i+'.text_ad_2 a:hover h3, #text_ad_'+i+'.text_ad_2 a:active h3{ color: '+o.colors.h3_hover+'; }';

		style += '#text_ad_'+i+'.text_ad_2 a:link p, #text_ad_'+i+'.text_ad_2 a:visited p{ color: '+o.colors.p_link+'; }';

		style += '#text_ad_'+i+'.text_ad_2 a:hover p, #text_ad_'+i+'.text_ad_2 a:active p{ color: '+o.colors.p_hover+'; }';

		style += '#text_ad_'+i+'.text_ad_2 .body a:link, #text_ad_'+i+'.text_ad_2 .body a:visited{ background: '+o.colors.bg_link+'; }';

		style += '#text_ad_'+i+'.text_ad_2 .body a:hover, #text_ad_'+i+'.text_ad_2 .body a:active{ background: '+o.colors.bg_hover+'; }';

		style += '.text_ad_2{margin: 0 auto 8px; position: relative; overflow:hidden; width: 300px; height:270px; background: '+o.colors.background+'; font-family: arial; font-size: 12px; line-height: 15px; border: 3px solid '+o.colors.border+'; } .text_ad_2 h3 { font-weight:bold; line-height: 15px; font-size:14px; margin: 0; padding: 0; }  .text_ad_2 h3, .text_ad_2 p{ margin: 0; padding: 0; line-height: 15px; font-size:12px; }  .text_ad_2 a{ display: block; text-decoration: none; position: relative; }  .text_ad_2 .header a{ padding: 0px 0px 5px 0px; }  .text_ad_2 .body a{ padding: 5px 5px 10px 5px; } .text_ad_2 .body img{ width: 78px; height: 52px; top: 0; left: 0; position:absolute; padding: 5px 0px 0px 5px; float: left;} .text_ad_2 .header{ position: relative; background: '+o.colors.bg_link+'; z-index: 10;} .text_ad_2 .footer{ clear: both; text-align: right; background: #fff; padding: 3px; }';

		style += '.text_ad_2 .footer a:link, .text_ad_2 .footer a:visited{ color: #666; }';

		style += '.text_ad_2 .footer a:hover, .text_ad_2 .footer a:active{ color: #000; }';

		style += '#text_ad_'+i+'.text_ad_2 .textAdExtra{ font-weight: bold; color:#CC0000; margin-left:83px }';
		
		/////////

		style += '.holder { position: relative; width:78px; height: 52px; float: left; padding: 0px 5px 0px 0px;}';

		style += '.hover { width: 120px !important; height: 80px !important; padding:0 !important;  z-index: 9; }';

		style += '.body { overflow: hidden; }';

		style += '</style>';



		document.write('<div id="text_ad_'+i+'" class="text_ad_2"></div>'+style);



		$(function(){

			$('#text_ad_'+i).html('').append(header).append(body);

			$( ".body img" ).hover(
				function() {
					$( this ).addClass( "hover" );
				}, function() {
					$( this ).removeClass( "hover" );
				}
			);

			var doIt = function() {
				var visina = ($('.body a:first-child').height()) + 15;
				$(".body").animate({'margin-top':'-=' + visina + 'px'}, 1000, function() { 
					var oglas = $('.body a:first-child');
					visina = $('.body a:first-child').height; 
					$('.body a:first-child img').removeClass( "hover" );
					$('.body').append(oglas).css('margin-top','0px'); 
				});

			}; 
			if (items.length > 3){
			setInterval(doIt, 2000);
			};
		});

	})();