(function(factory) {
    if (typeof module === 'object' && module.exports) {
        factory(require.main.require('benchpressjs'));
    } else {
        require(['benchpress'], factory);
    }
})(function(Benchpress) {
    Benchpress.registerHelper('now', function() {
        return new Date().getTime();
    });
    Benchpress.registerHelper('getTitle', function(object) {
        function search(nameKey, myArray) {
            for (var i=0; i < myArray.length; i++) {
                if (myArray[i].name === nameKey) {
                    return myArray[i];
                }
            }
        };
        var foundObject = search("Title", object)
        return foundObject.value
    });
    Benchpress.registerHelper('getFieldOfWork', function(object) {
        function search(nameKey, myArray) {
            for (var i=0; i < myArray.length; i++) {
                if (myArray[i].name === nameKey) {
                    return myArray[i];
                }
            }
        };
        var foundObject = search("Field of Work", object)
        return foundObject.value
    });

});
