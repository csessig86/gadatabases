var AppRouter = Backbone.Router.extend({
    routes: {
        "": "loadView"
    },

    loadView: function() {
    }
});

// var approuter = new AppRouter();
// Backbone.history.start({ pushState: true })

// var search = Backbone.history.location.search;

// // Set default scope
// if (search === '') {
//     var url = $('#table > thead > tr > th:nth-child(5) > a').attr('href').split('?')
//     approuter.navigate('?' + url[1], {trigger: true});
// }