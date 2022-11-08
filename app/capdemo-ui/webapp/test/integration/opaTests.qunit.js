sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'be/amista/capdemoui/test/integration/FirstJourney',
		'be/amista/capdemoui/test/integration/pages/PersonsList',
		'be/amista/capdemoui/test/integration/pages/PersonsObjectPage'
    ],
    function(JourneyRunner, opaJourney, PersonsList, PersonsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('be/amista/capdemoui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePersonsList: PersonsList,
					onThePersonsObjectPage: PersonsObjectPage
                }
            },
            opaJourney.run
        );
    }
);