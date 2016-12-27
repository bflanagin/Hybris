

function oseed_auth(name,email) {

    var http = new XMLHttpRequest();
    var url = "http://openseed.vagueentertainment.com/corescripts/auth.php?devid=" + devId + "&appid=" + appId + "&username="+ name + "&email=" + email ;
    //console.log(url)
    http.onreadystatechange = function() {
        if (http.readyState == 4) {
            //console.log(http.responseText);
            //userid = http.responseText;
            if(http.responseText == 100) {
                console.log("Incorrect DevID");
            } else if(http.responseText == 101) {
                console.log("Incorrect AppID");
            } else {
              //  console.log(http.responseText);
                userid = http.responseText;
                save_userid(http.responseText);
                return http.responseText;
            }

        }
    }
    http.open('GET', url, true);
    http.send(null);
}


function save_userid(uid) {

    var db = LocalStorage.openDatabaseSync("user", "1.0", "userdata", 1);

    db.transaction(
                function(tx) {

                    tx.executeSql('CREATE TABLE IF NOT EXISTS User(id TEXT)');
                });

    var data = [uid];

    var dataStr = "INSERT INTO User VALUES(?)";


    db.transaction(function(tx) {

       tx.executeSql(dataStr, data);


       });
}



//To minimize bandwidth usage we break up database downloads





function alignmentsync () {

    var http = new XMLHttpRequest();
    var url = "http://openseed.vagueentertainment.com/devs/" + devId + "/" + appId + "/scripts/dbsync.php?table=ALIGNMENT";
     console.log(url);
    var carddata = "";

    http.onreadystatechange = function() {
        if (http.readyState == 4) {
            carddata = http.responseText;
                //console.log(carddata);
            if(http.responseText == 100) {

                console.log("Incorrect DevID");

            } else if(http.responseText == 101) {
                console.log("Incorrect AppID");
            } else {

            carddata = http.responseText;



                if (carddata.length > 4)
                        {

                            //console.log(carddata);

                    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);

                    db.transaction(
                                function(tx) {
                                    tx.executeSql('DROP TABLE ALIGNMENT');
                                    tx.executeSql('CREATE TABLE IF NOT EXISTS ALIGNMENT(name TEXT,lockedRace TEXT,lockedClass TEXT,discription TEXT)');
                                });


                    var numofcards = carddata.substring(carddata.search("<Things>")+8,carddata.search("</Things>"));

                    var cardpos = carddata.split("<thing>");

                    for (var i=1;i<=numofcards;i++) {

                        var name = cardpos[i].substring(cardpos[i].search("<info1>")+7,cardpos[i].search("</info1>"));
                        var lockedRace = cardpos[i].substring(cardpos[i].search("<info2>")+7,cardpos[i].search("</info2>"));
                        var lockedClass = cardpos[i].substring(cardpos[i].search("<info3>")+7,cardpos[i].search("</info3>"));
                        var discription = cardpos[i].substring(cardpos[i].search("<info4>")+7,cardpos[i].search("</info4>"));



                        var data = [name,lockedRace,lockedClass,discription];

                        var dataStr = "INSERT INTO ALIGNMENT VALUES(?,?,?,?)";


                        db.transaction(function(tx) {

                           tx.executeSql(dataStr, data);


                           });

                    }



                console.log("ALIGNMENT UPDATED");
                }


            }

           }

        }

    http.open('GET', url, true);
    http.send(null);

}


function racesync () {

    var http = new XMLHttpRequest();
    var url = "http://openseed.vagueentertainment.com/devs/" + devId + "/" + appId + "/scripts/dbsync.php?table=RACE";
     console.log(url);
    var carddata = "";

    http.onreadystatechange = function() {
        if (http.readyState == 4) {
            carddata = http.responseText;
                //console.log(carddata);
            if(http.responseText == 100) {

                console.log("Incorrect DevID");

            } else if(http.responseText == 101) {
                console.log("Incorrect AppID");
            } else {

            carddata = http.responseText;



                if (carddata.length > 4)
                        {

                            //console.log(carddata);

                    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);

                    db.transaction(
                                function(tx) {
                                    tx.executeSql('DROP TABLE RACE');
                                    tx.executeSql('CREATE TABLE IF NOT EXISTS RACE(name TEXT,strmod INT(11),dexmod INT(11),conmod INT(11),intmod INT(11),wismod INT(11),chamod INT(11),discription TEXT, size INT(11),speed INT(11),immune TEXT,weapons TEXT, traits TEXT, languages TEXT)');
                                });


                    var numofcards = carddata.substring(carddata.search("<Things>")+8,carddata.search("</Things>"));

                    var cardpos = carddata.split("<thing>");

                    for (var i=1;i<=numofcards;i++) {

                        var name = cardpos[i].substring(cardpos[i].search("<info1>")+7,cardpos[i].search("</info1>"));
                        var strmod = cardpos[i].substring(cardpos[i].search("<info2>")+7,cardpos[i].search("</info2>"));
                        var dexmod = cardpos[i].substring(cardpos[i].search("<info3>")+7,cardpos[i].search("</info3>"));
                        var conmod = cardpos[i].substring(cardpos[i].search("<info4>")+7,cardpos[i].search("</info4>"));
                        var intmod = cardpos[i].substring(cardpos[i].search("<info5>")+7,cardpos[i].search("</info5>"));
                        var wismod = cardpos[i].substring(cardpos[i].search("<info6>")+7,cardpos[i].search("</info6>"));
                        var chamod = cardpos[i].substring(cardpos[i].search("<info7>")+7,cardpos[i].search("</info7>"));
                        var discription = cardpos[i].substring(cardpos[i].search("<info8>")+7,cardpos[i].search("</info8>"));
                        var size = cardpos[i].substring(cardpos[i].search("<info9>")+7,cardpos[i].search("</info9>"));
                        var speed = cardpos[i].substring(cardpos[i].search("<info10>")+8,cardpos[i].search("</info10>"));
                        var immune = cardpos[i].substring(cardpos[i].search("<info11>")+8,cardpos[i].search("</info11>"));
                        var weapons = cardpos[i].substring(cardpos[i].search("<info12>")+8,cardpos[i].search("</info12>"));
                        var traits = cardpos[i].substring(cardpos[i].search("<info13>")+8,cardpos[i].search("</info13>"));
                        var languages = cardpos[i].substring(cardpos[i].search("<info14>")+8,cardpos[i].search("</info14>"));



                        var data = [name,strmod,dexmod,conmod,intmod,wismod,chamod,discription,size,speed,immune,weapons,traits,languages];

                        var dataStr = "INSERT INTO RACE VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";


                        db.transaction(function(tx) {

                           tx.executeSql(dataStr, data);


                           });

                    }



                console.log("RACE UPDATED");
                }


            }

           }

        }

    http.open('GET', url, true);
    http.send(null);

}


function classsync () {

    var http = new XMLHttpRequest();
    var url = "http://openseed.vagueentertainment.com/devs/" + devId + "/" + appId + "/scripts/dbsync.php?table=CLASS";
     console.log(url);
    var carddata = "";

    http.onreadystatechange = function() {
        if (http.readyState == 4) {
            carddata = http.responseText;
                //console.log(carddata);
            if(http.responseText == 100) {

                console.log("Incorrect DevID");

            } else if(http.responseText == 101) {
                console.log("Incorrect AppID");
            } else {

            carddata = http.responseText;



                if (carddata.length > 4)
                        {

                            //console.log(carddata);

                    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);

                    db.transaction(
                                function(tx) {
                                    tx.executeSql('DROP TABLE CLASS');
                                    tx.executeSql('CREATE TABLE IF NOT EXISTS CLASS(name TEXT,discription TEXT,Short TEXT,HitDie TEXT,SR TEXT)');
                                });


                    var numofcards = carddata.substring(carddata.search("<Things>")+8,carddata.search("</Things>"));

                    var cardpos = carddata.split("<thing>");

                    for (var i=1;i<=numofcards;i++) {

                        var name = cardpos[i].substring(cardpos[i].search("<info1>")+7,cardpos[i].search("</info1>"));
                        var discription = cardpos[i].substring(cardpos[i].search("<info2>")+7,cardpos[i].search("</info2>"));
                        var Short = cardpos[i].substring(cardpos[i].search("<info3>")+7,cardpos[i].search("</info3>"));
                        var HitDie = cardpos[i].substring(cardpos[i].search("<info4>")+7,cardpos[i].search("</info4>"));
                        var SR = cardpos[i].substring(cardpos[i].search("<info5>")+7,cardpos[i].search("</info5>"));




                        var data = [name,discription,Short,HitDie,SR];

                        var dataStr = "INSERT INTO CLASS VALUES(?,?,?,?,?)";


                        db.transaction(function(tx) {

                           tx.executeSql(dataStr, data);


                           });

                    }



                console.log("CLASS UPDATED");
                }


            }

           }

        }

    http.open('GET', url, true);
    http.send(null);

}


function xpsync() {

    var http = new XMLHttpRequest();
    var url = "http://openseed.vagueentertainment.com/devs/" + devId + "/" + appId + "/scripts/dbsync.php?table=XP";
     console.log(url);
    var carddata = "";

    http.onreadystatechange = function() {
        if (http.readyState == 4) {
            carddata = http.responseText;
                //console.log(carddata);
            if(http.responseText == 100) {

                console.log("Incorrect DevID");

            } else if(http.responseText == 101) {
                console.log("Incorrect AppID");
            } else {

            carddata = http.responseText;



                if (carddata.length > 4)
                        {

                            //console.log(carddata);

                    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);

                    db.transaction(
                                function(tx) {

                                    tx.executeSql('CREATE TABLE IF NOT EXISTS XP(lvl INT,Slow INT,Medium INT,Fast INT,Feats INT,AbSc INT)');
                                });


                    var numofcards = carddata.substring(carddata.search("<Things>")+8,carddata.search("</Things>"));

                    var cardpos = carddata.split("<thing>");

                    for (var i=1;i<=numofcards;i++) {

                        var lvl = cardpos[i].substring(cardpos[i].search("<info1>")+7,cardpos[i].search("</info1>"));
                        var Slow = cardpos[i].substring(cardpos[i].search("<info2>")+7,cardpos[i].search("</info2>"));
                        var Medium = cardpos[i].substring(cardpos[i].search("<info3>")+7,cardpos[i].search("</info3>"));
                        var Fast = cardpos[i].substring(cardpos[i].search("<info4>")+7,cardpos[i].search("</info4>"));
                        var Feats = cardpos[i].substring(cardpos[i].search("<info5>")+7,cardpos[i].search("</info5>"));
                        var AbSc = cardpos[i].substring(cardpos[i].search("<info6>")+7,cardpos[i].search("</info6>"));






                        var data = [lvl,Slow,Medium,Fast,Feats,AbSc];

                        var dataStr = "INSERT INTO XP VALUES(?,?,?,?,?,?)";


                        db.transaction(function(tx) {

                           tx.executeSql(dataStr, data);


                           });

                    }



                console.log("XP UPDATED");
                }


            }

           }

        }

    http.open('GET', url, true);
    http.send(null);




}



function skillssync() {

    var http = new XMLHttpRequest();
    var url = "http://openseed.vagueentertainment.com/devs/" + devId + "/" + appId + "/scripts/dbsync.php?table=SKILLS";
     console.log(url);
    var carddata = "";

    http.onreadystatechange = function() {
        if (http.readyState == 4) {
            carddata = http.responseText;
                //console.log(carddata);
            if(http.responseText == 100) {

                console.log("Incorrect DevID");

            } else if(http.responseText == 101) {
                console.log("Incorrect AppID");
            } else {

            carddata = http.responseText;



                if (carddata.length > 4)
                        {

                            //console.log(carddata);

                    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);

                    db.transaction(
                                function(tx) {
                                    tx.executeSql('DROP TABLE SKILLS');
                                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKILLS(name TEXT,Bbn INT,Brd INT,Clr INT,Drd INT,Ftr INT,Mnk INT,Pal INT,Rgr INT,Rog INT,Sor INT,Wiz INT,Untrained INT,Ability TEXT,Discription TEXT)');
                                });


                    var numofcards = carddata.substring(carddata.search("<Things>")+8,carddata.search("</Things>"));

                    var cardpos = carddata.split("<thing>");

                    for (var i=1;i<=numofcards;i++) {

                        var name = cardpos[i].substring(cardpos[i].search("<info1>")+7,cardpos[i].search("</info1>"));
                        var Bbn = cardpos[i].substring(cardpos[i].search("<info2>")+7,cardpos[i].search("</info2>"));
                        var Brd = cardpos[i].substring(cardpos[i].search("<info3>")+7,cardpos[i].search("</info3>"));
                        var Clr = cardpos[i].substring(cardpos[i].search("<info4>")+7,cardpos[i].search("</info4>"));
                        var Drd = cardpos[i].substring(cardpos[i].search("<info5>")+7,cardpos[i].search("</info5>"));
                        var Ftr = cardpos[i].substring(cardpos[i].search("<info6>")+7,cardpos[i].search("</info6>"));
                        var Mnk = cardpos[i].substring(cardpos[i].search("<info7>")+7,cardpos[i].search("</info7>"));
                        var Pal = cardpos[i].substring(cardpos[i].search("<info8>")+7,cardpos[i].search("</info8>"));
                        var Rgr = cardpos[i].substring(cardpos[i].search("<info9>")+7,cardpos[i].search("</info9>"));
                        var Rog = cardpos[i].substring(cardpos[i].search("<info10>")+8,cardpos[i].search("</info10>"));
                        var Sor = cardpos[i].substring(cardpos[i].search("<info11>")+8,cardpos[i].search("</info11>"));
                        var Wiz = cardpos[i].substring(cardpos[i].search("<info12>")+8,cardpos[i].search("</info12>"));
                        var Untrained = cardpos[i].substring(cardpos[i].search("<info13>")+8,cardpos[i].search("</info13>"));
                        var Ability = cardpos[i].substring(cardpos[i].search("<info14>")+8,cardpos[i].search("</info14>"));
                        var Discription = cardpos[i].substring(cardpos[i].search("<info15>")+8,cardpos[i].search("</info15>"));




                        var data = [name,Bbn,Brd,Clr,Drd,Ftr,Mnk,Pal,Rgr,Rog,Sor,Wiz,Untrained,Ability,Discription];

                        var dataStr = "INSERT INTO SKILLS VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";


                        db.transaction(function(tx) {

                           tx.executeSql(dataStr, data);


                           });

                    }



                console.log("SKILLS UPDATED");
                }


            }

           }

        }

    http.open('GET', url, true);
    http.send(null);




}

function featsync() {

    var http = new XMLHttpRequest();
    var url = "http://openseed.vagueentertainment.com/devs/" + devId + "/" + appId + "/scripts/dbsync.php?table=FEATS";
     console.log(url);
    var carddata = "";

    http.onreadystatechange = function() {
        if (http.readyState == 4) {
            carddata = http.responseText;
                //console.log(carddata);
            if(http.responseText == 100) {

                console.log("Incorrect DevID");

            } else if(http.responseText == 101) {
                console.log("Incorrect AppID");
            } else {

            carddata = http.responseText;



                if (carddata.length > 4)
                        {

                            //console.log(carddata);

                    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);

                    db.transaction(
                                function(tx) {
                                    tx.executeSql('DROP TABLE FEATS');
                                    tx.executeSql('CREATE TABLE IF NOT EXISTS FEATS(name TEXT,prereq TEXT,benefits TEXT,discription TEXT)');
                                });


                    var numofcards = carddata.substring(carddata.search("<Things>")+8,carddata.search("</Things>"));

                    var cardpos = carddata.split("<thing>");

                    for (var i=1;i<=numofcards;i++) {

                        var name = cardpos[i].substring(cardpos[i].search("<info1>")+7,cardpos[i].search("</info1>"));
                        var Prereq = cardpos[i].substring(cardpos[i].search("<info2>")+7,cardpos[i].search("</info2>"));
                        var Benefits = cardpos[i].substring(cardpos[i].search("<info3>")+7,cardpos[i].search("</info3>"));
                        var Discription = cardpos[i].substring(cardpos[i].search("<info4>")+7,cardpos[i].search("</info4>"));





                        var data = [name,Prereq,Benefits,Discription];

                        var dataStr = "INSERT INTO FEATS VALUES(?,?,?,?)";


                        db.transaction(function(tx) {

                           tx.executeSql(dataStr, data);


                           });

                    }



                console.log("FEATS UPDATED");
                }


            }

           }

        }

    http.open('GET', url, true);
    http.send(null);




}


function levelsync(levels) {

  //  while (levels < 20) {
    var http = new XMLHttpRequest();
    var url = "http://openseed.vagueentertainment.com/devs/" + devId + "/" + appId + "/scripts/dbsync.php?table=lvl"+levels;
     console.log(url);
    var carddata = "";

    http.onreadystatechange = function() {
        if (http.readyState == 4) {
            carddata = http.responseText;
                //console.log(carddata);
            if(http.responseText == 100) {

                console.log("Incorrect DevID");

            } else if(http.responseText == 101) {
                console.log("Incorrect AppID");
            } else {

            carddata = http.responseText;



                if (carddata.length > 4)
                        {

                            //console.log(carddata);

                    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);

                    db.transaction(
                                function(tx) {
                                    tx.executeSql('DROP TABLE lvl'+levels);
                                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl'+levels+'(short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD0,SpD1,SpD2,SpD3,SpD4,SpD5,SpD6)');
                                });


                    var numofcards = carddata.substring(carddata.search("<Things>")+8,carddata.search("</Things>"));

                    var cardpos = carddata.split("<thing>");

                    for (var i=1;i<=numofcards;i++) {

                        var short = cardpos[i].substring(cardpos[i].search("<info1>")+7,cardpos[i].search("</info1>"));
                        var Bab = cardpos[i].substring(cardpos[i].search("<info2>")+7,cardpos[i].search("</info2>"));
                        var FS = cardpos[i].substring(cardpos[i].search("<info3>")+7,cardpos[i].search("</info3>"));
                        var RS = cardpos[i].substring(cardpos[i].search("<info4>")+7,cardpos[i].search("</info4>"));
                        var WS = cardpos[i].substring(cardpos[i].search("<info5>")+7,cardpos[i].search("</info5>"));
                        var Special = cardpos[i].substring(cardpos[i].search("<info6>")+7,cardpos[i].search("</info6>"));
                        var SpD0 = cardpos[i].substring(cardpos[i].search("<info7>")+7,cardpos[i].search("</info7>"));
                        var SpD1 = cardpos[i].substring(cardpos[i].search("<info8>")+7,cardpos[i].search("</info8>"));
                        var SpD2 = cardpos[i].substring(cardpos[i].search("<info9>")+7,cardpos[i].search("</info9>"));
                        var SpD3 = cardpos[i].substring(cardpos[i].search("<info10>")+8,cardpos[i].search("</info10>"));
                        var SpD4 = cardpos[i].substring(cardpos[i].search("<info11>")+8,cardpos[i].search("</info11>"));
                        var SpD5 = cardpos[i].substring(cardpos[i].search("<info12>")+8,cardpos[i].search("</info12>"));
                        var SpD6 = cardpos[i].substring(cardpos[i].search("<info13>")+8,cardpos[i].search("</info13>"));




                        var data = [short,Bab,FS,RS,WS,Special,SpD0,SpD1,SpD2,SpD3,SpD4,SpD5,SpD6];

                        var dataStr = "INSERT INTO lvl"+levels+" VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";


                        db.transaction(function(tx) {

                           tx.executeSql(dataStr, data);


                           });

                    }



                console.log("lvl"+levels+" UPDATED");
                }


            }

           }

        }

    http.open('GET', url, true);
    http.send(null);

//        levels = levels + 1;
//}


}



function weaponssync() {

    var http = new XMLHttpRequest();
    var url = "http://openseed.vagueentertainment.com/devs/" + devId + "/" + appId + "/scripts/dbsync.php?table=WEAPONS";
     console.log(url);
    var carddata = "";

    http.onreadystatechange = function() {
        if (http.readyState == 4) {
            carddata = http.responseText;
                //console.log(carddata);
            if(http.responseText == 100) {

                console.log("Incorrect DevID");

            } else if(http.responseText == 101) {
                console.log("Incorrect AppID");
            } else {

            carddata = http.responseText;



                if (carddata.length > 4)
                        {

                            //console.log(carddata);

                    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);

                    db.transaction(
                                function(tx) {
                                    tx.executeSql('DROP TABLE WEAPONS');
                                    tx.executeSql('CREATE TABLE IF NOT EXISTS WEAPONS(name TEXT,dmgS char(5),dmgM char(5),dmgL char(5),Crit INT,Rge INT,Weight INT,dtype char(5),Special TEXT, cost INT, WeaponType TEXT,discription TEXT)');
                                });


                    var numofcards = carddata.substring(carddata.search("<Things>")+8,carddata.search("</Things>"));

                    var cardpos = carddata.split("<thing>");

                    for (var i=1;i<=numofcards;i++) {

                        var name = cardpos[i].substring(cardpos[i].search("<info1>")+7,cardpos[i].search("</info1>"));
                        var dmgS = cardpos[i].substring(cardpos[i].search("<info2>")+7,cardpos[i].search("</info2>"));
                        var dmgM = cardpos[i].substring(cardpos[i].search("<info3>")+7,cardpos[i].search("</info3>"));
                        var dmgL = cardpos[i].substring(cardpos[i].search("<info4>")+7,cardpos[i].search("</info4>"));
                        var Crit = cardpos[i].substring(cardpos[i].search("<info5>")+7,cardpos[i].search("</info5>"));
                        var Rge = cardpos[i].substring(cardpos[i].search("<info6>")+7,cardpos[i].search("</info6>"));
                        var Weight = cardpos[i].substring(cardpos[i].search("<info7>")+7,cardpos[i].search("</info7>"));
                        var dtype = cardpos[i].substring(cardpos[i].search("<info8>")+7,cardpos[i].search("</info8>"));
                        var Special = cardpos[i].substring(cardpos[i].search("<info9>")+7,cardpos[i].search("</info9>"));
                        var cost = cardpos[i].substring(cardpos[i].search("<info10>")+8,cardpos[i].search("</info10>"));
                        var WeaponType = cardpos[i].substring(cardpos[i].search("<info11>")+8,cardpos[i].search("</info11>"));
                        var Discription = cardpos[i].substring(cardpos[i].search("<info12>")+8,cardpos[i].search("</info12>"));





                        var data = [name,dmgS,dmgM,dmgL,Crit,Rge,Weight,dtype,Special,cost,WeaponType,Discription];

                        var dataStr = "INSERT INTO WEAPONS VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";


                        db.transaction(function(tx) {

                           tx.executeSql(dataStr, data);


                           });

                    }



                console.log("WEAPONS UPDATED");
                }


            }

           }

        }

    http.open('GET', url, true);
    http.send(null);




}


function armorsync() {

    var http = new XMLHttpRequest();
    var url = "http://openseed.vagueentertainment.com/devs/" + devId + "/" + appId + "/scripts/dbsync.php?table=ARMOR";
     console.log(url);
    var carddata = "";

    http.onreadystatechange = function() {
        if (http.readyState == 4) {
            carddata = http.responseText;
                //console.log(carddata);
            if(http.responseText == 100) {

                console.log("Incorrect DevID");

            } else if(http.responseText == 101) {
                console.log("Incorrect AppID");
            } else {

            carddata = http.responseText;



                if (carddata.length > 4)
                        {

                            //console.log(carddata);

                    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);

                    db.transaction(
                                function(tx) {
                                    tx.executeSql('DROP TABLE ARMOR');
                                    tx.executeSql('CREATE TABLE IF NOT EXISTS ARMOR(name TEXT,dmgS char(5),dmgM char(5),dmgL char(5),AB INT,DexB INT,ACP INT,ASFC DOUBLE(11,2),Crit INT,Weight INT,Speed30P INT ,Speed20P INT,dtype TEXT,Special TEXT, cost INT, discription TEXT)');
                                });


                    var numofcards = carddata.substring(carddata.search("<Things>")+8,carddata.search("</Things>"));

                    var cardpos = carddata.split("<thing>");

                    for (var i=1;i<=numofcards;i++) {

                        var name = cardpos[i].substring(cardpos[i].search("<info1>")+7,cardpos[i].search("</info1>"));
                        var dmgS = cardpos[i].substring(cardpos[i].search("<info2>")+7,cardpos[i].search("</info2>"));
                        var dmgM = cardpos[i].substring(cardpos[i].search("<info3>")+7,cardpos[i].search("</info3>"));
                        var dmgL = cardpos[i].substring(cardpos[i].search("<info4>")+7,cardpos[i].search("</info4>"));
                        var AB = cardpos[i].substring(cardpos[i].search("<info5>")+7,cardpos[i].search("</info5>"));
                        var DexB = cardpos[i].substring(cardpos[i].search("<info6>")+7,cardpos[i].search("</info6>"));
                        var ACP = cardpos[i].substring(cardpos[i].search("<info7>")+7,cardpos[i].search("</info7>"));
                        var ASFC = cardpos[i].substring(cardpos[i].search("<info8>")+7,cardpos[i].search("</info8>"));
                        var Crit = cardpos[i].substring(cardpos[i].search("<info9>")+7,cardpos[i].search("</info9>"));
                        var Weight = cardpos[i].substring(cardpos[i].search("<info10>")+8,cardpos[i].search("</info10>"));
                        var Speed30P = cardpos[i].substring(cardpos[i].search("<info11>")+8,cardpos[i].search("</info11>"));
                        var Speed20P = cardpos[i].substring(cardpos[i].search("<info12>")+8,cardpos[i].search("</info12>"));
                        var dtype = cardpos[i].substring(cardpos[i].search("<info13>")+8,cardpos[i].search("</info13>"));
                        var Special = cardpos[i].substring(cardpos[i].search("<info14>")+8,cardpos[i].search("</info14>"));
                        var cost = cardpos[i].substring(cardpos[i].search("<info15>")+8,cardpos[i].search("</info15>"));
                        var Discription = cardpos[i].substring(cardpos[i].search("<info16>")+8,cardpos[i].search("</info16>"));





                        var data = [name,dmgS,dmgM,dmgL,AB,DexB,ACP,ASFC,Crit,Weight,Speed30P,Speed20P,dtype,Special,cost,Discription];

                        var dataStr = "INSERT INTO ARMOR VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";


                        db.transaction(function(tx) {

                           tx.executeSql(dataStr, data);


                           });

                    }



                console.log("ARMOR UPDATED");
                }


            }

           }

        }

    http.open('GET', url, true);
    http.send(null);




}



function spellsync() {

    var http = new XMLHttpRequest();
    var url = "http://openseed.vagueentertainment.com/devs/" + devId + "/" + appId + "/scripts/dbsync.php?table=SPELLS";
     console.log(url);
    var carddata = "";

    http.onreadystatechange = function() {
        if (http.readyState == 4) {
            carddata = http.responseText;
                //console.log(carddata);
            if(http.responseText == 100) {

                console.log("Incorrect DevID");

            } else if(http.responseText == 101) {
                console.log("Incorrect AppID");
            } else {

            carddata = http.responseText;



                if (carddata.length > 4)
                        {

                            //console.log(carddata);

                    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);

                    db.transaction(
                                function(tx) {
                                    tx.executeSql('DROP TABLE SPELLS');
                                    tx.executeSql('CREATE TABLE IF NOT EXISTS SPELLS(name TEXT,School TEXT,lvl INT,CT INT,Components TEXT,Rge INT,Effect TEXT,Dur TEXT,ST TEXT,dmg TEXT,dtype TEXT,discription TEXT)');
                                });


                    var numofcards = carddata.substring(carddata.search("<Things>")+8,carddata.search("</Things>"));

                    var cardpos = carddata.split("<thing>");

                    for (var i=1;i<=numofcards;i++) {

                        var name = cardpos[i].substring(cardpos[i].search("<info1>")+7,cardpos[i].search("</info1>"));
                        var School = cardpos[i].substring(cardpos[i].search("<info2>")+7,cardpos[i].search("</info2>"));
                        var lvl = cardpos[i].substring(cardpos[i].search("<info3>")+7,cardpos[i].search("</info3>"));
                        var CT = cardpos[i].substring(cardpos[i].search("<info4>")+7,cardpos[i].search("</info4>"));
                        var Components = cardpos[i].substring(cardpos[i].search("<info5>")+7,cardpos[i].search("</info5>"));
                        var Rge = cardpos[i].substring(cardpos[i].search("<info6>")+7,cardpos[i].search("</info6>"));
                        var Effect = cardpos[i].substring(cardpos[i].search("<info7>")+7,cardpos[i].search("</info7>"));
                        var Dur = cardpos[i].substring(cardpos[i].search("<info8>")+7,cardpos[i].search("</info8>"));
                        var ST = cardpos[i].substring(cardpos[i].search("<info9>")+7,cardpos[i].search("</info9>"));
                        var dmg = cardpos[i].substring(cardpos[i].search("<info10>")+8,cardpos[i].search("</info10>"));
                        var dtype = cardpos[i].substring(cardpos[i].search("<info11>")+8,cardpos[i].search("</info11>"));
                        var Discription = cardpos[i].substring(cardpos[i].search("<info12>")+8,cardpos[i].search("</info12>"));





                        var data = [name,School,lvl,CT,Components,Rge,Effect,Dur,ST,dmg,dtype,Discription];

                        var dataStr = "INSERT INTO SPELLS VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";


                        db.transaction(function(tx) {

                           tx.executeSql(dataStr, data);


                           });

                    }



                console.log("SPELLS UPDATED");
                }


            }

           }

        }

    http.open('GET', url, true);
    http.send(null);




}

function vitalssync() {

    var http = new XMLHttpRequest();
    var url = "http://openseed.vagueentertainment.com/devs/" + devId + "/" + appId + "/scripts/dbsync.php?table=VITALS";
     console.log(url);
    var carddata = "";

    http.onreadystatechange = function() {
        if (http.readyState == 4) {
            carddata = http.responseText;
                //console.log(carddata);
            if(http.responseText == 100) {

                console.log("Incorrect DevID");

            } else if(http.responseText == 101) {
                console.log("Incorrect AppID");
            } else {

            carddata = http.responseText;



                if (carddata.length > 4)
                        {

                            //console.log(carddata);

                    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);

                    db.transaction(
                                function(tx) {
                                    tx.executeSql('DROP TABLE VITALS');
                                    tx.executeSql('CREATE TABLE IF NOT EXISTS VITALS(Race TINYTEXT,baseAge  INT,baseMHeight INT,baseMWeight INT,midAge INT,oldAge INT,venAge INT,maxAge INT,baseFHeight,baseFWeight,whMod TINYTEXT,weightMult INT, Bbn TINYTEXT, Rog TINYTEXT, Sor TINYTEXT, Brd TINYTEXT, Ftr TINYTEXT, Pal TINYTEXT, Rgr TINYTEXT, Clc TINYTEXT, Drd TINYTEXT, Mnk TINYTEXT, Wiz TINYTEXT)');

                                });


                    var numofcards = carddata.substring(carddata.search("<Things>")+8,carddata.search("</Things>"));

                    var cardpos = carddata.split("<thing>");

                    for (var i=1;i<=numofcards;i++) {

                        var Race = cardpos[i].substring(cardpos[i].search("<info1>")+7,cardpos[i].search("</info1>"));
                        var baseAge = cardpos[i].substring(cardpos[i].search("<info2>")+7,cardpos[i].search("</info2>"));
                        var baseMHeight = cardpos[i].substring(cardpos[i].search("<info3>")+7,cardpos[i].search("</info3>"));
                        var baseMWeight = cardpos[i].substring(cardpos[i].search("<info4>")+7,cardpos[i].search("</info4>"));
                        var midAge = cardpos[i].substring(cardpos[i].search("<info5>")+7,cardpos[i].search("</info5>"));
                        var oldAge = cardpos[i].substring(cardpos[i].search("<info6>")+7,cardpos[i].search("</info6>"));
                        var venAge = cardpos[i].substring(cardpos[i].search("<info7>")+7,cardpos[i].search("</info7>"));
                        var maxAge = cardpos[i].substring(cardpos[i].search("<info8>")+7,cardpos[i].search("</info8>"));
                        var baseFHeight = cardpos[i].substring(cardpos[i].search("<info9>")+7,cardpos[i].search("</info9>"));
                        var baseFWeight = cardpos[i].substring(cardpos[i].search("<info10>")+8,cardpos[i].search("</info10>"));
                        var whMod = cardpos[i].substring(cardpos[i].search("<info11>")+8,cardpos[i].search("</info11>"));
                        var weightMult = cardpos[i].substring(cardpos[i].search("<info12>")+8,cardpos[i].search("</info12>"));
                        var Bbn = cardpos[i].substring(cardpos[i].search("<info13>")+8,cardpos[i].search("</info13>"));
                        var Rog = cardpos[i].substring(cardpos[i].search("<info14>")+8,cardpos[i].search("</info14>"));
                        var Sor = cardpos[i].substring(cardpos[i].search("<info15>")+8,cardpos[i].search("</info15>"));
                        var Brd = cardpos[i].substring(cardpos[i].search("<info16>")+8,cardpos[i].search("</info16>"));
                        var Ftr = cardpos[i].substring(cardpos[i].search("<info17>")+8,cardpos[i].search("</info17>"));
                        var Pal = cardpos[i].substring(cardpos[i].search("<info18>")+8,cardpos[i].search("</info18>"));
                        var Rgr = cardpos[i].substring(cardpos[i].search("<info19>")+8,cardpos[i].search("</info19>"));
                        var Clc = cardpos[i].substring(cardpos[i].search("<info20>")+8,cardpos[i].search("</info20>"));
                        var Drd = cardpos[i].substring(cardpos[i].search("<info21>")+8,cardpos[i].search("</info21>"));
                        var Mnk = cardpos[i].substring(cardpos[i].search("<info22>")+8,cardpos[i].search("</info22>"));
                        var Wiz = cardpos[i].substring(cardpos[i].search("<info23>")+8,cardpos[i].search("</info23>"));





                        var data = [Race,baseAge,baseMHeight,baseMWeight,midAge,oldAge,venAge,maxAge,baseFHeight,baseFWeight,whMod,weightMult,Bbn,Rog,Sor,Brd,Ftr,Pal,Rgr,Clc,Drd,Mnk,Wiz];

                        var dataStr = "INSERT INTO VITALS VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";


                        db.transaction(function(tx) {

                           tx.executeSql(dataStr, data);


                           });

                    }



                console.log("VITALS UPDATED");
                }


            }

           }

        }

    http.open('GET', url, true);
    http.send(null);




}



function upload_character() {
    var http = new XMLHttpRequest();
    var url = "http://openseed.vagueentertainment.com/devs/" + devId + "/" + appId + "/scripts/addcharacter.php?id=" + userid + "&name=" + charname + "&race="+ race + "&align=" + charalignment + "&class=" + charclass + "&hp=" + hp + "&gender=" + charsex + "&age=" + charage + "&height=" + (charhf*12+charhi) + "&weight=" + charWeight + "&hair=" + charhair + "&eyes=" + chareyes + "&homeland=" + charht + "&deity=" + chargod + "&Speed=" + speed + "&str=" + str + "&dex=" + dex + "&con=" + con + "&str=" + str + "&dex=" + dex + "&con=" + con + "&int=" + intel + "&wis=" + wis + "&cha=" + cha + "&pp=" + charplat  + "&gp=" + chargold + "&sp=" + charsilver + "&cp=" + charcopper + "&weapons=" + charweapons + "&armor=" + chararmor + "&skills=" + charskills + "&feats=" + charfeats + "&items=" + chargear + "&spells=" + charspells + "&language=" + charlang + "&discription=" + chardisc + "&currentgame=" + currentgame;

    console.log(url)
    http.onreadystatechange = function() {
        if (http.readyState == 4) {
            //console.log(http.responseText);

            if(http.responseText == 100) {

                console.log("Incorrect DevID");

            } else if(http.responseText == 101) {
                console.log("Incorrect AppID");
            } else {
                //console.log(http.responseText);
               // userid = http.responseText;

            }

        }
    }
    http.open('GET', url, true);
    http.send(null);


}

function retrieve_characters(id) {

    //console.log("collecting new info")

    var http = new XMLHttpRequest();
    var url = "http://openseed.vagueentertainment.com/devs/" + devId + "/" + appId + "/scripts/synccharacters.php?id=" + id;

    var carddata = "";
    http.onreadystatechange = function() {
        if (http.readyState == 4) {
            carddata = http.responseText;


            if(http.responseText == 100) {

                console.log("Incorrect DevID");

            } else if(http.responseText == 101) {
                console.log("Incorrect AppID");
            } else {
                //console.log(http.responseText);
              //carddata = http.responseText;
                //console.log(carddata);

                    numofcards = carddata.substring(carddata.search("<cards>")+7,carddata.search("</cards>"));


                    //console.log("results",numofcards);

                    var cardpos = carddata.split("<card>");



                    for (var i=1;i<=numofcards;i++) {

                        var uid = cardpos[i].substring(cardpos[i].search("<uid>")+9,cardpos[i].search("</uid>"));
                        var name = cardpos[i].substring(cardpos[i].search("<name>")+6,cardpos[i].search("</name>"));
                        var race = cardpos[i].substring(cardpos[i].search("<race>")+7,cardpos[i].search("</race>"));

                        var align = cardpos[i].substring(cardpos[i].search("<align>")+7,cardpos[i].search("</align>"));
                        var charclass = cardpos[i].substring(cardpos[i].search("<class>")+9,cardpos[i].search("</class>"));
                        var lvl = cardpos[i].substring(cardpos[i].search("<lvl>")+9,cardpos[i].search("</lvl>"));
                        var xp = cardpos[i].substring(cardpos[i].search("<xp>")+9,cardpos[i].search("</xp>"));

                        var hp = cardpos[i].substring(cardpos[i].search("<hp>")+7,cardpos[i].search("</hp>"));
                        var gender = cardpos[i].substring(cardpos[i].search("<gender>")+7,cardpos[i].search("</gender>"));

                        var age = cardpos[i].substring(cardpos[i].search("<age>")+6,cardpos[i].search("</age>"));
                        var height = cardpos[i].substring(cardpos[i].search("<height>")+10,cardpos[i].search("</height>"));
                        var weight = cardpos[i].substring(cardpos[i].search("<weight>")+9,cardpos[i].search("</weight>"));

                        var hair = cardpos[i].substring(cardpos[i].search("<hair>")+7,cardpos[i].search("</hair>"));
                        var eyes = cardpos[i].substring(cardpos[i].search("<eyes>")+7,cardpos[i].search("</eyes>"));
                        var homeland = cardpos[i].substring(cardpos[i].search("<homeland>")+7,cardpos[i].search("</homeland>"));


                       var deity = cardpos[i].substring(cardpos[i].search("<deity>")+8,cardpos[i].search("</deity>"));
                      var Speed = cardpos[i].substring(cardpos[i].search("<Speed>")+8,cardpos[i].search("</Speed>"));
                       var str = cardpos[i].substring(cardpos[i].search("<str>")+8,cardpos[i].search("</str>"));
                        var dex = cardpos[i].substring(cardpos[i].search("<dex>")+8,cardpos[i].search("</dex>"));
                        var con = cardpos[i].substring(cardpos[i].search("<con>")+8,cardpos[i].search("</con>"));

                        var intel = cardpos[i].substring(cardpos[i].search("<intel>")+8,cardpos[i].search("</intel>"));
                       var wis = cardpos[i].substring(cardpos[i].search("<wis>")+8,cardpos[i].search("</wis>"));
                        var cha = cardpos[i].substring(cardpos[i].search("<cha>")+8,cardpos[i].search("</cha>"));
                         var pp = cardpos[i].substring(cardpos[i].search("<pp>")+8,cardpos[i].search("</pp>"));
                         var gp = cardpos[i].substring(cardpos[i].search("<gp>")+8,cardpos[i].search("</gp>"));

                        var sp = cardpos[i].substring(cardpos[i].search("<sp>")+8,cardpos[i].search("</sp>"));
                       var cp = cardpos[i].substring(cardpos[i].search("<cp>")+8,cardpos[i].search("</cp>"));
                        var weapons = cardpos[i].substring(cardpos[i].search("<weapons>")+8,cardpos[i].search("</weapons>"));
                         var armor = cardpos[i].substring(cardpos[i].search("<armor>")+8,cardpos[i].search("</armor>"));
                         var skills = cardpos[i].substring(cardpos[i].search("<skills>")+8,cardpos[i].search("</skills>"));


                        var feats = cardpos[i].substring(cardpos[i].search("<feats>")+8,cardpos[i].search("</feats>"));
                       var items = cardpos[i].substring(cardpos[i].search("<items>")+8,cardpos[i].search("</items>"));
                        var spells = cardpos[i].substring(cardpos[i].search("<spells>")+8,cardpos[i].search("</spells>"));
                         var language = cardpos[i].substring(cardpos[i].search("<language>")+8,cardpos[i].search("</language>"));
                         var discription = cardpos[i].substring(cardpos[i].search("<discription>")+8,cardpos[i].search("</discription>"));
                         var currentgame = cardpos[i].substring(cardpos[i].search("<currentgame>")+8,cardpos[i].search("</currentgame>"));






                        var data = [name,race,charclass,align,charclass,,hp,str,dex,con,intel,wis,cha,charAC,charTAC,charFF,charfs,charws,charrs,charCMB,charCMD,speed,charskills,charfeats,charspells,chararmor,charweapons,chargear,charlang,(12*charhf)+parseInt(charhi),charWeight,charage,chareyes,charhair,charsex,chargod,charht,chardisc,charplat,chargold,charsilver,charcopper,currentgame];

                        var db = LocalStorage.openDatabaseSync("user", "1.0", "userdata", 1);
                       console.log("Loading Characters");
                               db.transaction(
                                  function(tx) {
                                            tx.executeSql('CREATE TABLE IF NOT EXISTS Characters(name TEXT UNIQUE,race TEXT,class TEXT,align TEXT,lvl INT,xp INT, hp INT, str INT, dex INT, con INT, intel INT,wis INT,cha INT,ac INT,touch INT,ff INT, fs INT, rs INT, ws INT, cmb INT, cmd INT, speed INT, Skills TEXT, Feats TEXT, Spells TEXT, Armor TEXT, Weapons TEXT,Gear TEXT, Languages TEXT,height INT, weight INT, age INT, eye TEXT, hair TEXT,sex INT,god TEXT,ht TEXT,bio TEXT,plat INT, gold INT, silver INT, coper INT,currentGame TEXT)');
                                  }
                                   );

                       var db1 = LocalStorage.openDatabaseSync("user", "1.0", "userdata", 1);
                       var dataStr = "SELECT * FROM `Characters` WHERE `name` != ' '";


                    }




            }

        }
    }
    http.open('GET', url, true);
    http.send(null);


//return 0;
}

function torf (num) {
    if (num == 0) {
        //console.log(num);
        return ("false");
    } else {
        //console.log(num);
        return ("true");
    }
}
