var AppRouter = Backbone.Router.extend({
    routes: {
        "": "loadView",
        "*route": "loadView"
    },

    loadView: function() {
        // Grab hash
        var hash = Backbone.history.location.hash;
        var id = hash.replace('#route-','');

        // Set default hash
        if (hash === '') {
            approuter.navigate('#route-init', true)
        }
    }
});

var approuter = new AppRouter();
Backbone.history.start();