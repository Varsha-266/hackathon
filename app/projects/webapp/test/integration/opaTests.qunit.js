sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'projects/test/integration/FirstJourney',
		'projects/test/integration/pages/projectsList',
		'projects/test/integration/pages/projectsObjectPage'
    ],
    function(JourneyRunner, opaJourney, projectsList, projectsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('projects') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheprojectsList: projectsList,
					onTheprojectsObjectPage: projectsObjectPage
                }
            },
            opaJourney.run
        );
    }
);