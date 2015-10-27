if(window.location.pathname == '/') {
  DFP_sitepage = 'thegazette/homepage';
  //do not load asynch code, it is handled synchronously in FrontPageTop
}
else {
  var locationPath = window.location.pathname;
  DFP_sitepage = 'thegazette' + locationPath.toLowerCase();
  //not on home page, load asynchronously
	var googletag = googletag || {};
	googletag.cmd = googletag.cmd || [];
	(function() {
	var gads = document.createElement('script');
	gads.async = true;
	gads.type = 'text/javascript';
	var useSSL = 'https:' == document.location.protocol;
	gads.src = (useSSL ? 'https:' : 'http:') +
	'//www.googletagservices.com/tag/js/gpt.js';
	var node = document.getElementsByTagName('script')[0];
	node.parentNode.insertBefore(gads, node);
	})();
	//end asynch
}
if(DFP_sitepage == "thegazette/homepage"){
/*
  googletag.cmd.push(function() {
  googletag.defineSlot('/99211018/thegazette/homepage', [728, 90], 'ad-leaderboard').addService(googletag.pubads());
  googletag.defineSlot('/99211018/thegazette/homepage', [300, 250], 'ad-medrec-top').addService(googletag.pubads());
  googletag.defineSlot('/99211018/thegazette/homepage', [300, 125], 'ad-middle-left').addService(googletag.pubads()).setTargeting("position", "left");
  googletag.defineSlot('/99211018/thegazette/homepage', [300, 125], 'ad-middle-mid').addService(googletag.pubads()).setTargeting("position", "middle");
  googletag.defineSlot('/99211018/thegazette/homepage', [300, 125], 'ad-middle-right').addService(googletag.pubads()).setTargeting("position", "right");
  googletag.defineOutOfPageSlot('/99211018/thegazette/homepage', 'div-gpt-ad-1414709823913-0-oop').addService(googletag.pubads());
  googletag.enableServices();
  });
*/
}
else if(DFP_sitepage == "thegazette/sports" || DFP_sitepage == "thegazette/sports/"){
	if($(window).width() > 750){
		  googletag.cmd.push(function() {
		  googletag.defineSlot('/99211018/thegazette/sports', [728, 90], 'ad-leaderboard').addService(googletag.pubads());
		  googletag.defineSlot('/99211018/thegazette/sports', [320, 50], 'ad-scoreboard-leaderboard-top').addService(googletag.pubads()).setTargeting("position", "top");;
		  googletag.defineSlot('/99211018/thegazette/sports', [300, 250], 'ad-medrec-top').addService(googletag.pubads());
		  googletag.defineSlot('/99211018/thegazette/sports', [300, 250], 'ad-medrec-bottom').addService(googletag.pubads()).setTargeting("position", "middle");
		  googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
  		googletag.pubads().enableSingleRequest();
		  googletag.enableServices();
	  });
	}
	else if($(window).width() <= 750){
	  googletag.cmd.push(function() {
		  googletag.defineSlot('/99211018/thegazette/sports', [320, 50], 'ad-mobile-leaderboard').addService(googletag.pubads());
		  googletag.defineSlot('/99211018/thegazette/sports', [300, 250], 'ad-medrec-mobile').addService(googletag.pubads());
		  googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
		  googletag.pubads().enableSingleRequest();
		  googletag.enableServices();
	  });
	}
}
else if(DFP_sitepage == "thegazette/iowa-prep-sports/tournament"){
  if($(window).width() > 750){
	  googletag.cmd.push(function() {
		  googletag.defineSlot('/99211018/thegazette/iowa-prep-sports/tournament', [728, 90], 'ad-leaderboard').addService(googletag.pubads());
		  googletag.defineSlot('/99211018/thegazette/iowa-prep-sports/tournament', [300, 250], 'ad-medrec-top').addService(googletag.pubads());
		  googletag.defineSlot('/99211018/thegazette/iowa-prep-sports/tournament', [300, 250], 'ad-medrec-bottom').addService(googletag.pubads()).setTargeting("position", "middle");
		  googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
		  googletag.pubads().enableSingleRequest();
		  googletag.enableServices();
	  });
	}
	else if($(window).width() <= 750){
	  googletag.cmd.push(function() {
	    googletag.defineSlot('/99211018/thegazette/iowa-prep-sports/tournament', [320, 50], 'ad-mobile-leaderboard').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
	    googletag.pubads().enableSingleRequest();
	    googletag.enableServices();
	  });
	}
}
else if(DFP_sitepage == "thegazette/news"){
   if($(window).width() > 750){
	  googletag.cmd.push(function() {
		  googletag.defineSlot('/99211018/thegazette/news', [728, 90], 'ad-leaderboard').addService(googletag.pubads());
		  googletag.defineSlot('/99211018/thegazette/news', [300, 250], 'ad-medrec-top').addService(googletag.pubads());
		  googletag.defineSlot('/99211018/thegazette/news', [300, 250], 'ad-medrec-bottom').addService(googletag.pubads()).setTargeting("position", "middle");
		  googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
		  googletag.pubads().enableSingleRequest();
		  googletag.enableServices();
	  });
	}
	else if($(window).width() <= 750){
    googletag.cmd.push(function() {
	    googletag.defineSlot('/99211018/thegazette/news', [320, 50], 'ad-mobile-leaderboard').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette/news', [300, 250], 'ad-medrec-mobile').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
	    googletag.pubads().enableSingleRequest();
	    googletag.enableServices();
    });
  }
}
else if(DFP_sitepage.indexOf("obituaries") > -1){
  if($(window).width() > 750){
	  googletag.cmd.push(function() {
		  googletag.defineSlot('/99211018/thegazette/obituaries', [728, 90], 'ad-leaderboard').addService(googletag.pubads());
		  googletag.defineSlot('/99211018/thegazette/obituaries', [300, 250], 'ad-medrec-top').addService(googletag.pubads());
		  googletag.defineSlot('/99211018/thegazette/obituaries', [300, 250], 'ad-medrec-bottom').addService(googletag.pubads()).setTargeting("position", "middle");
		  googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
		  googletag.pubads().enableSingleRequest();
		  googletag.enableServices();
	  });
	}
	else if($(window).width() <= 750){
    googletag.cmd.push(function() {
	    googletag.defineSlot('/99211018/thegazette/obituaries', [320, 50], 'ad-mobile-leaderboard').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette/obituaries', [300, 250], 'ad-medrec-mobile').addService(googletag.pubads());
	  	googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
	    googletag.pubads().enableSingleRequest();
	    googletag.enableServices();
    });
  }
}
else if(DFP_sitepage == "thegazette/education" || DFP_sitepage == "thegazette.com/opinion" || DFP_sitepage == "thegazette/public-safety" || DFP_sitepage == "thegazette/government" ||  DFP_sitepage == "thegazette/living"  || DFP_sitepage == "thegazette/government"){
   if($(window).width() > 750){
	  googletag.cmd.push(function() {
	    googletag.defineSlot('/99211018/thegazette', [728, 90], 'ad-leaderboard').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette', [[300, 600],[300, 250]], 'ad-medrec-top').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette', [300, 250], 'ad-medrec-bottom').addService(googletag.pubads()).setTargeting("position", "middle");
	  	googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
	    googletag.pubads().enableSingleRequest();
	    googletag.enableServices();
	   });
	}
	else if($(window).width() <= 750){
	  googletag.cmd.push(function() {
	    googletag.defineSlot('/99211018/thegazette', [320, 50], 'ad-mobile-leaderboard').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
	    googletag.pubads().enableSingleRequest();
	    googletag.enableServices();
	  });
	}
}
else if(DFP_sitepage == "thegazette/b380" || DFP_sitepage == "/subject/news/business"){
  if($(window).width() > 750){
    googletag.cmd.push(function() {
	    googletag.defineSlot('/99211018/thegazette/b380', [728, 90], 'ad-leaderboard').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette/b380', [300, 250], 'ad-medrec-top').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette/b380', [300, 250], 'ad-medrec-bottom').addService(googletag.pubads()).setTargeting("position", "middle");
	  	googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
	    googletag.pubads().enableSingleRequest();
	    googletag.enableServices();
    });
	}
	else if($(window).width() <= 750){
	  googletag.cmd.push(function() {
	    googletag.defineSlot('/99211018/thegazette/b380', [320, 50], 'ad-mobile-leaderboard').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
	    googletag.pubads().enableSingleRequest();
	    googletag.enableServices();
	  });
	}
}
else if(DFP_sitepage.indexOf("/subject/sports") > -1){
  if($(window).width() > 750){
    googletag.cmd.push(function() {
	    googletag.defineSlot('/99211018/thegazette/subject/sports', [728, 90], 'ad-leaderboard').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette/subject/sports', [[300, 600], [300, 250]], 'ad-medrec-top').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette/subject/sports', [300, 250], 'ad-medrec-bottom').addService(googletag.pubads()).setTargeting("position", "middle");
	  	googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
	    googletag.pubads().enableSingleRequest();
	    googletag.enableServices();
    });
	}
	else if($(window).width() <= 750){
	  googletag.cmd.push(function() {
	    googletag.defineSlot('/99211018/thegazette/subject/sports', [320, 50], 'ad-mobile-leaderboard').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
	    googletag.pubads().enableSingleRequest();
	    googletag.enableServices();
	  });
	}
}
else if(DFP_sitepage.indexOf("/subject/news") > -1){
  if($(window).width() > 750){
		googletag.cmd.push(function() {
	    googletag.defineSlot('/99211018/thegazette/subject/news', [728, 90], 'ad-leaderboard').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette/subject/news', [[300, 600], [300, 250]], 'ad-medrec-top').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette/subject/news', [300, 250], 'ad-medrec-bottom').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
	    googletag.pubads().enableSingleRequest();
	    googletag.enableServices();
	  });
  }
  else if($(window).width() <= 750){
		googletag.cmd.push(function() {
	    googletag.defineSlot('/99211018/thegazette/subject/news', [320, 50], 'ad-mobile-leaderboard').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
	    googletag.pubads().enableSingleRequest();
	    googletag.enableServices();
	  });
	}
}
else if(DFP_sitepage.indexOf("/subject") > -1){
  if($(window).width() > 750){
		googletag.cmd.push(function() {
	    googletag.defineSlot('/99211018/thegazette/subject', [728, 90], 'ad-leaderboard').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette/subject', [[300, 600], [300, 250]], 'ad-medrec-top').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette/subject', [300, 250], 'ad-medrec-bottom').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
	    googletag.pubads().enableSingleRequest();
	    googletag.enableServices();
    });
  }
  else if($(window).width() <= 750){
		googletag.cmd.push(function() {
	    googletag.defineSlot('/99211018/thegazette/subject', [320, 50], 'ad-mobile-leaderboard').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
	    googletag.pubads().enableSingleRequest();
	    googletag.enableServices();
    });
  }
}
else if(DFP_sitepage == "thegazette/section/slideshow"){
  if($(window).width() > 750){
    googletag.cmd.push(function() {
      googletag.defineSlot('/99211018/thegazette/section/slideshow', [728, 90], 'ad-leaderboard').addService(googletag.pubads());
      googletag.defineSlot('/99211018/thegazette/section/slideshow', [300, 250], 'ad-medrec-top').addService(googletag.pubads());
      googletag.defineSlot('/99211018/thegazette/section/slideshow', [300, 250], 'ad-medrec-bottom').addService(googletag.pubads());
       googletag.defineSlot('/99211018/thegazette/section/slideshow', [728, 90], 'ad-mobile-banner').addService(googletag.pubads());
      googletag.pubads().enableSingleRequest();
      googletag.enableServices();
    });
  }
  else if($(window).width() <= 750){
    googletag.cmd.push(function() {
       googletag.defineSlot('/99211018/thegazette/section/slideshow', [728, 90], 'ad-leaderboard').addService(googletag.pubads());
      googletag.defineSlot('/99211018/thegazette/section/slideshow', [320, 50], 'ad-mobile-banner').addService(googletag.pubads());
      googletag.pubads().enableSingleRequest();
      googletag.enableServices();
    });
  }
}
else if(DFP_sitepage == "thegazette/section/slideshowsearch"){
  if($(window).width() > 750){
    googletag.cmd.push(function() {
      googletag.defineSlot('/99211018/thegazette/section/slideshowsearch', [728, 90], 'ad-leaderboard').addService(googletag.pubads());
      googletag.defineSlot('/99211018/thegazette/section/slideshowsearch', [728, 90], 'ad-medrec-top').addService(googletag.pubads());
       googletag.defineSlot('/99211018/thegazette/section/slideshowsearch', [300, 250], 'ad-medrec-middle').addService(googletag.pubads());
      googletag.defineSlot('/99211018/thegazette/section/slideshowsearch', [300, 250], 'ad-medrec-bottom').addService(googletag.pubads());
      googletag.enableServices();
      googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
      googletag.pubads().enableSingleRequest();
      googletag.enableServices();
    });
  }
  else if($(window).width() <= 750){
    googletag.cmd.push(function() {
      googletag.defineSlot('/99211018/thegazette/section/slideshowsearch', [320, 50], 'ad-mobile-banner').addService(googletag.pubads());
      googletag.enableServices();
      googletag.defineSlot('/99211018/thegazette/section/slideshowsearch', [728, 90], 'ad-medrec-top').addService(googletag.pubads());
      googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
      googletag.pubads().enableSingleRequest();
      googletag.enableServices();
    });
  }
}
else if(DFP_sitepage == "thegazette/photos"){
  if($(window).width() > 750){
    googletag.cmd.push(function() {
      googletag.defineSlot('/99211018/thegazette/photos', [728, 90], 'ad-leaderboard').addService(googletag.pubads());
      googletag.defineSlot('/99211018/thegazette/photos', [728, 90], 'ad-medrec-top').addService(googletag.pubads());
       googletag.defineSlot('/99211018/thegazette/photos', [300, 250], 'ad-medrec-middle').addService(googletag.pubads());
      googletag.defineSlot('/99211018/thegazette/photos', [300, 250], 'ad-medrec-bottom').addService(googletag.pubads());
      googletag.enableServices();
      googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
    });
  }
  else if($(window).width() <= 750){
    googletag.cmd.push(function() {
      googletag.defineSlot('/99211018/thegazette/photos', [320, 50], 'ad-mobile-banner').addService(googletag.pubads());
      googletag.enableServices();
      googletag.defineSlot('/99211018/thegazette/photos', [728, 90], 'ad-medrec-top').addService(googletag.pubads());
      googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
    });
  }
}
else if(DFP_sitepage.indexOf("/data/hawkeyes") > -1){
  if($(window).width() > 750){
	  googletag.cmd.push(function() {
		  googletag.defineSlot('/99211018/thegazette/data/hawkeyes'+locationPath, [728, 90], 'ad-leaderboard').addService(googletag.pubads());
		  googletag.defineSlot('/99211018/thegazette/data/hawkeyes'+locationPath, [300, 250], 'ad-medrec-top').addService(googletag.pubads());
		    googletag.defineSlot('/99211018/thegazette/data/hawkeyes'+locationPath, [728, 90], 'ad-leaderboard-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
		  googletag.pubads().enableSingleRequest();
		  googletag.enableServices();
	  });
	}
	else if($(window).width() <= 750){
    googletag.cmd.push(function() {
	    googletag.defineSlot('/99211018/thegazette/obituaries', [320, 50], 'ad-mobile-leaderboard').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette/obituaries', [300, 250], 'ad-medrec-mobile').addService(googletag.pubads());
	  	googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
	    googletag.pubads().enableSingleRequest();
	    googletag.enableServices();
    });
  }
}
else{
  if($(window).width() > 750){
    googletag.cmd.push(function() {
	    googletag.defineSlot('/99211018/thegazette'+locationPath, [728, 90], 'ad-leaderboard').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-top').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-bottom').addService(googletag.pubads()).setTargeting("position", "middle");
	    googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
	    googletag.pubads().enableSingleRequest();
	    googletag.enableServices();
    });
  }
  else if($(window).width() <= 750){
  	googletag.cmd.push(function() {
	    googletag.defineSlot('/99211018/thegazette/subject', [320, 50], 'ad-mobile-leaderboard').addService(googletag.pubads());
	    googletag.defineSlot('/99211018/thegazette'+locationPath, [300, 250], 'ad-medrec-footer').addService(googletag.pubads()).setTargeting("position", "bottom");
	    googletag.pubads().enableSingleRequest();
	    googletag.enableServices();
	   });
  }
}
// Make sure GA isn't loaded within an iframe
if ( window.self === window.top ) {
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-30416-68', 'auto');
    ga('require', 'displayfeatures');
    if (typeof dimension1Value === "undefined" || dimension1Value === "") {
        // undefined author
    } else {
        ga('set', 'dimension1', dimension1Value);
    }
    ga('send', 'pageview');
// Close if
}