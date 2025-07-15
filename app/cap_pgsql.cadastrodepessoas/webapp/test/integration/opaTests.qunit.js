sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'cappgsql/cadastrodepessoas/test/integration/FirstJourney',
		'cappgsql/cadastrodepessoas/test/integration/pages/PessoaList',
		'cappgsql/cadastrodepessoas/test/integration/pages/PessoaObjectPage'
    ],
    function(JourneyRunner, opaJourney, PessoaList, PessoaObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('cappgsql/cadastrodepessoas') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePessoaList: PessoaList,
					onThePessoaObjectPage: PessoaObjectPage
                }
            },
            opaJourney.run
        );
    }
);