/*
*   Hier können eigene Funktionen eingebunden werden.
*   Ist in CfgFunctions included.
*/

class homecoming
   {
       class all
       {
           file = "USER\functions";

           class addModules { postInit = 1; };

           class createSmoke;
           class intro { postInit = 1; };
           class startIntro;
           
           class ownerShipHandler { postInit = 1; };
           class soundSourceHelper;

           class spawnNote;

           class suicideCar;
           class suicideCarCalculatePath;
           class suicideCarExplode;           
           class suicideCarInit;
           class suicideCarShockwave;
       };
};

#include "..\node_modules\grad-leaveNotes\cfgFunctions.hpp"