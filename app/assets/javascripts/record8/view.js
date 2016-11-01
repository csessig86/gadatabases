// Body
var AppView = Backbone.View.extend({
  el: 'body',

  events: {
    "click .embed-chart a": "embedChart"
  },

  // Events go here
  // Embed a chart
  embedChart: function(e) {
    e.preventDefault();

    // Hide, show the textarea with the embed
    var textarea = $(e.target).siblings('textarea');
    var container_left = $('#table-container').position().left;

    if ( $(textarea).hasClass('hide-desktop') ) {
      $(textarea).removeClass('hide-desktop');
      $(textarea).css({
        'right': container_left + 'px'
      });
    } else {
      $(textarea).addClass('hide-desktop')
    }
  },

  initialize: function() {
    this.render();
  },
  render: function() {}
});

var appview = new AppView();