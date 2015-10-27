
// DataTables formatting options
// More options: http://datatables.net/plug-ins/sorting

// Formatted numbers: i.e. numbers with commas
jQuery.extend( jQuery.fn.dataTableExt.oSort, {
    "formatted-num-pre": function ( a ) {
        var strip_html = /(<([^>]+)>)/ig;
        a = a.replace(strip_html, "");
        a = (a === "-" || a === "") ? 0 : a.replace( /[^\d\-\.]/g, "" );
        return parseFloat( a );
    },
    "formatted-num-asc": function ( a, b ) {
        return a - b;
    },
    "formatted-num-desc": function ( a, b ) {
        return b - a;
    }
});

// Currency
jQuery.extend( jQuery.fn.dataTableExt.oSort, {
    "currency-pre": function ( a ) {
        a = (a==="-") ? 0 : a.replace( /[^\d\-\.]/g, "" );
        return parseFloat( a );
    },
 
    "currency-asc": function ( a, b ) {
        return a - b;
    },
 
    "currency-desc": function ( a, b ) {
        return b - a;
    }
} );

// Percentages
jQuery.extend( jQuery.fn.dataTableExt.oSort, {
    "percent-pre": function ( a ) {
        var strip_html = /(<([^>]+)>)/ig;
        a = a.replace(strip_html, "");
        var x = (a == "-") ? 0 : a.replace( /%/, "" );
        return parseFloat( x );
    },
 
    "percent-asc": function ( a, b ) {
        return ((a < b) ? -1 : ((a > b) ? 1 : 0));
    },
 
    "percent-desc": function ( a, b ) {
        return ((a < b) ? 1 : ((a > b) ? -1 : 0));
    }
});

// Month name
var monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

jQuery.fn.dataTableExt.oSort['month-name-asc'] = function (x, y) {
    var xPos, yPos;
    jQuery.each(monthNames, function (k, v) {
        if (x == v) xPos = k;
        if (y == v) yPos = k
    });
    return ((xPos < yPos) ? -1 : ((xPos > yPos) ? 1 : 0));
};
jQuery.fn.dataTableExt.oSort['month-name-desc'] = function (x, y) {
    var xPos, yPos;
    jQuery.each(monthNames, function (k, v) {
        if (x == v) xPos = k
        if (y == v) yPos = k
    });
    return ((xPos > yPos) ? -1 : ((xPos < yPos) ? 1 : 0));
};
