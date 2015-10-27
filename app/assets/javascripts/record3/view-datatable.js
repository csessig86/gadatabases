// Used for Google Analytics
var project_name = 'Iowa state employee salaries in 2014'

// Events for the body
var TableView = Backbone.View.extend({
    el: '#table-container',

    // Used for scroll
    tableHeaderDistance: 0,

    events: {
        // Google Analytics
        "change .dataTables_length select": "changeSelect",
        "keyup": "keyUp",
        "click .dataTable th": "clickTh"
    },

    // Loop through table and dynamically set the table's column widths
    // When scrolling or resizing window
    setColumnWidths: function(table_width, current_table) {
        if ( $(window).width() > 800 ) {
            _.each($(current_table + ' thead tr th'), function(element, num) {
                var el_width = $(element).innerWidth();
                var el_percent = el_width / table_width * 100;
                var td_num = num + 1;
                $(current_table + ' > tbody > tr:nth-child(1) > td:nth-child(' + td_num + ')').css('width', el_percent + '%');
            });
        }
    },

    // Load up the DataTable
    loadDataTable: function(current_table, id) {
        var model_attributes = this.collection.get(id)['attributes'];

        // Load Datatables after Tabletop is loaded
        $(current_table).dataTable({
            "bAutoWidth": false,
            "oLanguage": {
                "sLengthMenu": "_MENU_ records per page"
            },
            "bSort" : false,
            "aoColumns": model_attributes['columns'],
            "paging":   false,
            "info":     false,
            // Fix thead to top of page when scrolling past it
            "initComplete": function(settings, json) {
                tableview.$el.show();
                $(current_table).show();
                $('#footer-base').show();

                // Scroll function that puts thead at top of page
                tableview.tableHeaderDistance = ( $(current_table + '_wrapper').position().top );
                
                $(window).scroll(function () {
                    var switchedHeader = false;
                    var currentSpot = $(window).scrollTop();
                    var table_width = $(current_table).width();

                    if(currentSpot > tableview.tableHeaderDistance && !switchedHeader){
                        $(".dataTable thead").addClass('thead-fixed');
                        $(current_table + ' .thead-fixed').width(table_width);
                        $(current_table + ' .thead-fixed tr').width(table_width);
                        $(current_table + ' .thead-fixed tr').css('display','inline-table');
                        switchedHeader = true;
                    } else {
                        $(".dataTable thead").removeClass('thead-fixed');
                        $(current_table + ' thead').width('auto');
                        $(current_table + ' thead tr').width('auto');
                        $(current_table + ' thead tr').css('display','table-row');
                        $(".header h1").html("");
                        switchedHeader = false;

                        // Set column widths
                        tableview.setColumnWidths(table_width, current_table);
                    }
                // Close scroll event
                });

                $(window).resize(function () {
                    var table_width = $(current_table).width();
                    // Set column widths
                   tableview.setColumnWidths(table_width, current_table);
                });

                $('#table-individual_paginate a.paginate_button').click(function() {
                    var table_width = $(current_table).width();
                    
                    // Set column widths
                    tableview.setColumnWidths(table_width, current_table);
                });
                
                // Stop spinner once table is loaded
                spinner.stop();
            }
        });
    // Close loadDataTable
    },

    initialize: function() {
        // this.collection.on('add', this.addModel, this);
    },
    render: function() {
        this.collection.on('add', this.addModel, this);
    },

    addModel: function(model) {
        var attributes = model['attributes'];

        // Auto set number of columns
        // If no number is specified in the model
        if (attributes.columns.length === 0) {
            var empty_objects = [];
            var ths = $('#table thead tr th').length;

            for (var num = 0; num < ths; num++) {
                empty_objects.push( {} );
            }
            console.log(empty_objects);
            attributes.columns = empty_objects;
        }
        // Load Datatable library
        if (attributes['category'] === "datatable") {
            tableview.loadDataTable(attributes['dom_element'], model['cid']);
        }
    },

    // Google analytics
    changeSelect: function() {
        ga('send', 'event', project_name, 'Change records on page');
    },
    keyUp: function() {
        ga('send', 'event', project_name, 'Search box: Letters typed');
    },
    clickTh: function() {
        ga('send', 'event', project_name, 'Table header is sorted');
    }
// Close tableview
});