if (Meteor.isClient) {
    Proxino.key = "1WSzwlGhsocB-hDA0-iHUg";
    Proxino.track_errors();

    Template.sparklines.created =  function () {
        var currentPageguide = {
            id: "jQuery.PageGuide",
            title: "Take a quick tour of all the possibilities",
            steps: [
                {
                    target: ".sparklines",
                    content: "These sparklines are rerendered whenever their reactive context is rerendered, in this case it is the sparklines handlebars template",
                    direction: "top"
                },
                {
                  target: ".code",
                  content: "This is the actual Meteor code used on this page",
                  direction: "top"
                },
                {
                  target: ".readme",
                  content: "This should point you towards all the docs you need",
                  direction: "top"
                },
                {
                    target: ".github",
                    content: "Click here view this project on github",
                    direction: "top"
                },
                {
                    target: ".atmosphere",
                    content: "This project is also available on the Atmosphere Meteorite package repository",
                    direction: "top"
                },
                {
                    target: ".profile",
                    content: "Here is a link to my github profile for all you stalkers",
                    direction: "top"
                }
            ]}
        $.pageguide(currentPageguide);
        bootbox.confirm("Would you like to start the page guide? It will show you functions you could miss!", "No", "Yes", function (e) {
            e && $.pageguide().open();
        })
    }

    Template.sparklines.rendered = function () {
        /** This code runs when everything has been loaded on the page */
        /* Inline sparklines take their values from the contents of the tag */
        $('.inlinesparkline').sparkline();

        /* Sparklines can also take their values from the first argument
         passed to the sparkline() function */
        var myvalues = [10,8,5,7,4,4,1];
        $('.dynamicsparkline').sparkline(myvalues);

        /* The second argument gives options such as chart type */
        $('.dynamicbar').sparkline(myvalues, {type: 'bar', barColor: 'green'} );

        /* Use 'html' instead of an array of values to pass options
         to a sparkline with data in the tag */
        $('.inlinebar').sparkline('html', {type: 'bar', barColor: 'red'} );
    };
}