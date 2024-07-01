sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project1/test/integration/FirstJourney',
		'project1/test/integration/pages/MaintenancePlanList',
		'project1/test/integration/pages/MaintenancePlanObjectPage'
    ],
    function(JourneyRunner, opaJourney, MaintenancePlanList, MaintenancePlanObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMaintenancePlanList: MaintenancePlanList,
					onTheMaintenancePlanObjectPage: MaintenancePlanObjectPage
                }
            },
            opaJourney.run
        );
    }
);