var Table = Backbone.Model.extend({});

var Tables = Backbone.Collection.extend({
   model: Table
});

var tables = new Tables();

var table = new Table({
	category: 'datatable',
	dom_element: '#table',
	columns: [
	   	// {
	    //     "sWidth": "20%"
	    //     // "sType": "formatted-num",
	    //     // "bSortable": false
	    // },{
	    //     "sWidth": "20%"
	    //     // "sType": "formatted-num",
	    //     // "bSortable": false
	    // },{
	    //     "sWidth": "20%"
	    //     // "sType": "formatted-num",
	    //     // "bSortable": false
	    // },{
	    //     "sWidth": "10%"
	    //     // "sType": "formatted-num",
	    //     // "bSortable": false
	    // },{
	    //     "sWidth": "10%"
	    //     // "sType": "formatted-num",
	    //     // "bSortable": false
	    // },{
	    //     "sWidth": "10%"
	    //     // "sType": "formatted-num",
	    //     // "bSortable": false
	    // }
	]
});

var tableview;

$(document).ready(function() {
	tableview = new TableView({ collection: tables });
	tableview.render();
	tables.add(table);
});