
function openStore() {

    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);

    db.transaction(
                function(tx) {
                    tx.executeSql('CREATE TABLE IF NOT EXISTS RACE(name TEXT, strmod INT,dexmod INT,conmod INT,intmod INT,wismod INT,chamod INT,discription TEXT,size INT,speed INT,immune TEXT,weapons TEXT,traits TEXT,languages TEXT )');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS CLASS(name TEXT,discription TEXT,Short TEXT,HitDie TEXT,SR TEXT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS VITALS(Race TINYTEXT,baseAge  INT,baseMHeight INT,baseMWeight INT,midAge INT,oldAge INT,venAge INT,maxAge INT,baseFHeight,baseFWeight,whMod TINYTEXT,weightMult INT, Bbn TINYTEXT, Rog TINYTEXT, Sor TINYTEXT, Brd TINYTEXT, Ftr TINYTEXT, Pal TINYTEXT, Rgr TINYTEXT, Clc TINYTEXT, Drd TINYTEXT, Mnk TINYTEXT, Wiz TINYTEXT)');


                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl1(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl2(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl3(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl4(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl5(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl6(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl7(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl8(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl9(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl10(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl11(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl12(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl13(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl14(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl15(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl16(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl17(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl18(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl19(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS lvl20(Short TEXT,Bab INT,FS INT,RS INT,WS INT,Special TEXT,SpD1 INT,SpD2 INT,SpD3 INT,SpD4 INT,SpD5 INT,SpD6 INT)');

                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl1(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl2(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl3(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl4(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl5(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl6(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl7(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl8(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl9(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl10(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl11(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl12(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl13(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl14(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl15(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl16(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl17(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl18(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl19(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKlvl20(Short TEXT,innate INT, lvl1 INT,lvl2 INT,lvl3 INT, lvl4 INT, lvl5 INT, lvl6 INT)');

                    tx.executeSql('CREATE TABLE IF NOT EXISTS ALIGNMENT(name TEXT,lockedRace TEXT,lockedClass TEXT,discription TEXT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SKILLS(name TEXT,Bbn INT,Brd INT,Clr INT,Drd INT,Ftr INT,Mnk INT,Pal INT,Rgr INT,Rog INT,Sor INT,Wiz INT,Untrained INT,Ability TINYTEXT,Discription TEXT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS FEATS(name TEXT,prereq TEXT,benefits TEXT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS EQUIP(name TEXT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS WEAPONS(name TEXT,dmgS CHAR(5),dmgM CHAR(5),dmgL CHAR(5), Crit INT,Range INT,Weight INT, Type INT, Special TEXT,WeaponType TEXT,cost INT )');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS ARMOR(name TEXT,dmgS CHAR(5),dmgM CHAR(5),dmgL CHAR(5), Crit INT,Range INT,Weight INT, Type INT, Special TEXT,cost INT )');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS CONSUME(name TEXT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS SPELLS(name TEXT)');
                    tx.executeSql('CREATE TABLE IF NOT EXISTS XP(lvl INT,Slow INT,Medium INT,Fast INT,Feats INT,AbSc INT)');
                }


                )
   // saveCharacter();

    //console.log("done");

}


function check_uid() {
    var db = LocalStorage.openDatabaseSync("user", "1.0", "userdata", 1);
    var dataStr = "SELECT * FROM User WHERE 1";

    db.transaction(
                function(tx) {
                    tx.executeSql('CREATE TABLE IF NOT EXISTS User(id TEXT)');

                    var pull = tx.executeSql(dataStr);
                     if(pull.rows.length > 0) {
                            userid = pull.rows.item(0).id;
                            console.log("UserId is " + userid);

                    }

                });


}

function loadAlignment() {
    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);
    var dataStr = "SELECT * FROM ALIGNMENT WHERE 1";

    db.transaction(
                function(tx) {

                    var alcards = 0;
                    var pull =  tx.executeSql(dataStr);

                    while (pull.rows.length > alcards) {
                    if(pull.rows.length > 0) {
                        charalignment = pull.rows.item(alcards).name;

                        aligncardslist.append({title1:pull.rows.item(alcards).name,
                                               discription:pull.rows.item(alcards).discription,
                                               strmod:0,dexmod:0,conmod:0,intmod:0,wismod:0,chamod:0});
                       // return 1;

                    } else {
                        //console.log("No User found");
                        return 0;
                        }
                    alcards = alcards + 1;
                    }

                }
            )

}

function loadRace() {
    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);
    var dataStr = "SELECT * FROM RACE WHERE 1";

    db.transaction(
                function(tx) {

                    var alcards = 0;
                    var pull =  tx.executeSql(dataStr);

                    while (pull.rows.length > alcards) {
                    if(pull.rows.length > 0) {
                        //charalignment = pull.rows.item(alcards).name;

                        racecardslist.append({title1:pull.rows.item(alcards).name,
                        discription:pull.rows.item(alcards).discription,
                        strmod:pull.rows.item(alcards).strmod,
                        dexmod:pull.rows.item(alcards).dexmod,
                        conmod:pull.rows.item(alcards).conmod,
                        intmod:pull.rows.item(alcards).intmod,
                        wismod:pull.rows.item(alcards).wismod,
                        chamod:pull.rows.item(alcards).chamod,
                        charSize:pull.rows.item(alcards).size,
                        charSpeed:pull.rows.item(alcards).speed,
                        charImmune:pull.rows.item(alcards).immune,
                        charWeapons:pull.rows.item(alcards).weapons,
                        charTraits:pull.rows.item(alcards).traits,
                        charLanguages:pull.rows.item(alcards).languages

                                             });
                       // return 1;

                    } else {
                        //console.log("No User found");
                        return 0;
                        }
                    alcards = alcards + 1;
                    }

                }
            )

}

function loadClass() {
    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);
    var dataStr = "SELECT * FROM CLASS WHERE 1";

    db.transaction(
                function(tx) {

                    var alcards = 0;
                    var pull =  tx.executeSql(dataStr);

                    while (pull.rows.length > alcards) {
                    if(pull.rows.length > 0) {
                        //charalignment = pull.rows.item(alcards).name;

                        classcardslist.append({title1:pull.rows.item(alcards).name,
                        discription:pull.rows.item(alcards).discription,
                        strmod:0,
                        dexmod:0,
                        conmod:0,
                        intmod:0,
                        wismod:0,
                        chamod:0,
                        hitdie:pull.rows.item(alcards).HitDie,
                        Short:pull.rows.item(alcards).Short,
                        SkP:pull.rows.item(alcards).SR


                                             });

                       // return 1;

                    } else {
                        //console.log("No User found");
                        return 0;
                        }
                    alcards = alcards + 1;
                    }

                }
            )

}

function loadSkills(classhort) {
    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);
    var dataStr = "SELECT * FROM SKILLS ORDER BY name";
    skillList.clear();

    db.transaction(
                function(tx) {

                    var alcards = 0;
                    var pull =  tx.executeSql(dataStr);

                    while (pull.rows.length > alcards) {
                    if(pull.rows.length > 0) {
                        //charalignment = pull.rows.item(alcards).name;
                        var highlight = "darkgray";

                        if (pull.rows.item(alcards).Bbn == 1 && classhort == "Bbn") {highlight = "gold";}
                        if (pull.rows.item(alcards).Brd == 1 && classhort == "Brd") {highlight = "gold";}
                        if (pull.rows.item(alcards).Clr == 1 && classhort == "Clc") {highlight = "gold";}
                        if (pull.rows.item(alcards).Drd == 1 && classhort == "Drd") {highlight = "gold";}
                        if (pull.rows.item(alcards).Wis == 1 && classhort == "Wis") {highlight = "gold";}
                        if (pull.rows.item(alcards).Sor == 1 && classhort == "Sor") {highlight = "gold";}
                        if (pull.rows.item(alcards).Ftr == 1 && classhort == "Ftr") {highlight = "gold";}
                        if (pull.rows.item(alcards).Rog == 1 && classhort == "Rog") {highlight = "gold";}
                        if (pull.rows.item(alcards).Rgr == 1 && classhort == "Rgr") {highlight = "gold";}
                        if (pull.rows.item(alcards).Pal == 1 && classhort == "Pal") {highlight = "gold";}
                        if (pull.rows.item(alcards).Mnk == 1 && classhort == "Mnk") {highlight = "gold";}


                        skillList.append({name:pull.rows.item(alcards).name,
                                            Bbn:pull.rows.item(alcards).Bbn,
                                             Brd:pull.rows.item(alcards).Brd,
                                             Drd:pull.rows.item(alcards).Drd,
                                             Wis:pull.rows.item(alcards).Wis,
                                             Sor:pull.rows.item(alcards).Sor,
                                             Rgr:pull.rows.item(alcards).Rgr,
                                             Ftr:pull.rows.item(alcards).Ftr,
                                             Pal:pull.rows.item(alcards).Pal,
                                             Mnk:pull.rows.item(alcards).Mnk,
                                             Rog:pull.rows.item(alcards).Rog,
                                             Clr:pull.rows.item(alcards).Clr,
                                             Untrained:pull.rows.item(alcards).Untrained,
                                             Ability:pull.rows.item(alcards).Ability,
                                             Discription:pull.rows.item(alcards).Discription,
                                             info1:"",
                                             info2:"",
                                             info3:"",
                                             info4:"",



                                             highlight:highlight

                                             });

                       // return 1;

                    } else {
                        //console.log("No User found");
                        return 0;
                        }
                    alcards = alcards + 1;
                    }

                }
            )

}

function loadWeapons(race) {
    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);
    var dataStr = "SELECT * FROM WEAPONS ORDER BY name";
    weaponList.clear();

    db.transaction(
                function(tx) {

                    var alcards = 0;
                    var pull =  tx.executeSql(dataStr);

                    while (pull.rows.length > alcards) {
                    if(pull.rows.length > 0) {
                        //charalignment = pull.rows.item(alcards).name;
                        var highlight = "darkgray";


                        weaponList.append({name:pull.rows.item(alcards).name,
                                            dmgS:pull.rows.item(alcards).dmgS,
                                             dmgM:pull.rows.item(alcards).dmgM,
                                             dmgL:pull.rows.item(alcards).dmgL,
                                             Crit:pull.rows.item(alcards).Crit,
                                             Rge:pull.rows.item(alcards).Rge,
                                             Weight:pull.rows.item(alcards).Weight,
                                             dtype:pull.rows.item(alcards).dtype,
                                             Special:pull.rows.item(alcards).Special,
                                             cost:pull.rows.item(alcards).cost,
                                             WeaponType:pull.rows.item(alcards).WeaponsType,
                                             Discription:pull.rows.item(alcards).discription,
                                              info1:"Damage: "+pull.rows.item(alcards).dmgS,
                                              info2:"Damage Type: "+pull.rows.item(alcards).Crit,
                                              info3:"Range: "+pull.rows.item(alcards).Rge,
                                              info4:"Weapon Cost: "+pull.rows.item(alcards).cost,

                                             highlight:highlight

                                             });

                       // return 1;

                    } else {
                        //console.log("No User found");
                        return 0;
                        }
                    alcards = alcards + 1;
                    }

                }
            )

}

function loadArmor(classhort) {
    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);
    var dataStr = "SELECT * FROM ARMOR ORDER BY name";
    armorList.clear();

    db.transaction(
                function(tx) {

                    var alcards = 0;
                    var pull =  tx.executeSql(dataStr);

                    while (pull.rows.length > alcards) {
                    if(pull.rows.length > 0) {
                        //charalignment = pull.rows.item(alcards).name;
                        var highlight = "darkgray";



                        armorList.append({name:pull.rows.item(alcards).name,
                                            dmgS:pull.rows.item(alcards).dmgS,
                                             dmgM:pull.rows.item(alcards).dmgM,
                                             dmgL:pull.rows.item(alcards).dmgL,
                                              AB:pull.rows.item(alcards).AB,
                                              DexB:pull.rows.item(alcards).DexB,
                                              ACP:pull.rows.item(alcards).ACP,
                                              ASFC:pull.rows.item(alcards).ASFC,
                                             Crit:pull.rows.item(alcards).Crit,
                                             Weight:pull.rows.item(alcards).Weight,
                                              Speed30P:pull.rows.item(alcards).Speed30P,
                                              Speed20P:pull.rows.item(alcards).Speed20P,
                                             dtype:pull.rows.item(alcards).dtype,
                                             Special:pull.rows.item(alcards).Special,
                                             cost:pull.rows.item(alcards).cost,
                                             Discription:pull.rows.item(alcards).discription,
                                             info1:"Armor Bonus: "+pull.rows.item(alcards).AB,
                                             info2:"Armor Check: "+pull.rows.item(alcards).ACP,
                                             info3:"Speed Decrease: "+pull.rows.item(alcards).Speed30P,
                                             info4:"Armor Cost: "+pull.rows.item(alcards).cost,

                                             highlight:highlight

                                             });

                       // return 1;

                    } else {
                        //console.log("No User found");
                        return 0;
                        }
                    alcards = alcards + 1;
                    }

                }
            )

}

function loadFeats(classhort) {
    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);
    var dataStr = "SELECT * FROM FEATS ORDER BY name";
    featsList.clear();

    db.transaction(
                function(tx) {

                    var alcards = 0;
                    var pull =  tx.executeSql(dataStr);

                    while (pull.rows.length > alcards) {
                    if(pull.rows.length > 0) {
                        //charalignment = pull.rows.item(alcards).name;
                        var highlight = "darkgray";




                        featsList.append({name:pull.rows.item(alcards).name,
                                            prereq:pull.rows.item(alcards).prereq,
                                             benefits:pull.rows.item(alcards).benefits,
                                             Discription:pull.rows.item(alcards).discription,
                                             info1:pull.rows.item(alcards).prereq,
                                             info2:pull.rows.item(alcards).benefits,

                                             highlight:highlight

                                             });

                       // return 1;

                    } else {
                        //console.log("No User found");
                        return 0;
                        }
                    alcards = alcards + 1;
                    }

                }
            )

}

function loadSpells(classhort) {
    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);
    var dataStr = "SELECT * FROM SPELLS ORDER BY name";
    spellsList.clear();

    db.transaction(
                function(tx) {

                    var alcards = 0;
                    var pull =  tx.executeSql(dataStr);

                    while (pull.rows.length > alcards) {
                    if(pull.rows.length > 0) {
                        //charalignment = pull.rows.item(alcards).name;
                        var highlight = "darkgray";



                        spellsList.append({name:pull.rows.item(alcards).name,
                                            School:pull.rows.item(alcards).School,
                                             lvl:pull.rows.item(alcards).lvl,
                                             CT:pull.rows.item(alcards).CT,
                                              Components:pull.rows.item(alcards).Components,
                                              Rge:pull.rows.item(alcards).Rge,
                                              Effect:pull.rows.item(alcards).Effect,
                                              Dur:pull.rows.item(alcards).Dur,
                                             ST:pull.rows.item(alcards).ST,
                                             dmg:pull.rows.item(alcards).dmg,
                                             dtype:pull.rows.item(alcards).dtype,
                                             Discription:pull.rows.item(alcards).discription,

                                             highlight:highlight

                                             });

                       // return 1;

                    } else {
                        //console.log("No User found");
                        return 0;
                        }
                    alcards = alcards + 1;
                    }

                }
            )

}


function genStats() {
    str= Math.floor(((Math.random() * 18) + 3) + strMod);
    dex = Math.floor(((Math.random() * 18) + 3) + dexMod);
    con = Math.floor(((Math.random() * 18) + 3) + conMod);
    intel = Math.floor(((Math.random() * 18) + 3) + intMod);
    wis = Math.floor(((Math.random() * 18) + 3) + wisMod);
    cha = Math.floor(((Math.random() * 18) + 3) + chaMod);

    console.log(race);
   console.log(charclass);
    console.log(hitDie);

   //Generate HP //

    var hit = hitDie.split("d");
    var basehp = hit[1];
    if(charlvl > 1) {
            var currenthp = hp;
        for (var i =1;i<=hit[0];i++) {
                currenthp = Math.floor((Math.random() * parseInt(hit[1]) + 1) + currenthp);
                console.log("increasing HP by "+currenthp);
        }
        currenthp += parseInt(basehp);
        hp = currenthp + genAmod(con);
    } else {
        hp = parseInt(basehp) + genAmod(con);
    }
 // Genertate HP END //

    genArmor("AC");
   genArmor("TAC");
   genArmor("FF");

    //Generate AC //
         //charAC = aBonus + sBonus + 10 + genAmod(dex) + sizeMod + natA + deflect + acMM;
    //Generate Touch //
       // charTAC = 10 + genAmod(dex);
    //Generate FF
        //charFF = 10+ natA + aBonus + sBonus + deflect + acMM + sizeMod

    //Generate Age

        charage = classAgeMod(race,charclassShort);

}

function classAgeMod(r,c) {
    var ageMod = 0;


    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);
    var dataStr = "SELECT * FROM `VITALS` WHERE 1";

    db.transaction(
                function(tx) {

                    var alcards = 0;
                    var pull =  tx.executeSql(dataStr);

                    while (pull.rows.length > alcards) {

                        if(pull.rows.length > 0) {


                            if(r == pull.rows.item(alcards).Race) {

                                        var baseage = pull.rows.item(alcards).baseAge;

                                var thesplit = 0;
                                switch(c) {
                                        case "Bbn": thesplit = pull.rows.item(alcards).Bbn.split("d");ageMod = baseage + Math.floor(((Math.random() * thesplit[1]) + thesplit[0])); console.log(thesplit);break;
                                        case "Rog": thesplit = pull.rows.item(alcards).Rog.split("d");ageMod = baseage + Math.floor(((Math.random() * thesplit[1]) + thesplit[0])); console.log(thesplit);break;
                                        case "Sor": thesplit = pull.rows.item(alcards).Sor.split("d");ageMod = baseage + Math.floor(((Math.random() * thesplit[1]) + thesplit[0])); console.log(thesplit);break;
                                        case "Brd": thesplit = pull.rows.item(alcards).Brd.split("d");ageMod = baseage + Math.floor(((Math.random() * thesplit[1]) + thesplit[0])); console.log(thesplit);break;
                                        case "Ftr": thesplit = pull.rows.item(alcards).Ftr.split("d");ageMod = baseage + Math.floor(((Math.random() * thesplit[1]) + thesplit[0])); console.log(thesplit);break;
                                        case "Pal": thesplit = pull.rows.item(alcards).Pal.split("d");ageMod = baseage + Math.floor(((Math.random() * thesplit[1]) + thesplit[0])); console.log(thesplit);break;
                                        case "Rgr": thesplit = pull.rows.item(alcards).Rgr.split("d");ageMod = baseage + Math.floor(((Math.random() * thesplit[1]) + thesplit[0])); console.log(thesplit);break;
                                        case "Clc": thesplit = pull.rows.item(alcards).Clc.split("d");ageMod = baseage + Math.floor(((Math.random() * thesplit[1]) + thesplit[0])); console.log(thesplit);break;
                                        case "Drd": thesplit = pull.rows.item(alcards).Drd.split("d");ageMod = baseage + Math.floor(((Math.random() * thesplit[1]) + thesplit[0])); console.log(thesplit);break;
                                        case "Mnk": thesplit = pull.rows.item(alcards).Mnk.split("d");ageMod = baseage + Math.floor(((Math.random() * thesplit[1]) + thesplit[0])); console.log(thesplit);break;
                                        case "Wiz": thesplit = pull.rows.item(alcards).Wiz.split("d");ageMod = baseage + Math.floor(((Math.random() * thesplit[1]) + thesplit[0])); console.log(thesplit);break;
                                        } break;

                            }

                        }

                    alcards = alcards + 1;
                    }
                });


    return ageMod;
}

function heightweight(r,sex) {
    //var heightMod = 0;


    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);
    var dataStr = "SELECT * FROM `VITALS` WHERE `RACE` = '"+r+"'";

    db.transaction(
                function(tx) {

                    var fullheight = 0;
                    var pull =  tx.executeSql(dataStr);

                     if(pull.rows.length > 0) {
                                charWeight= pull.rows.item(0).baseMWeight + (diceRoll(pull.rows.item(0).whMod) * 7);
                                fullheight = pull.rows.item(0).baseMHeight + diceRoll(pull.rows.item(0).whMod);
                                charhf = fullheight / 12;
                                charhi = fullheight % 12;
                        }

                });
    //return charhf,charhi,charWeight;
}



function genAmod (num) {
        switch(true) {
        case (num == 1): return -5;break;
        case (num == 2 || num == 3): return -4;break;
        case (num == 4 || num == 5): return -3;break;
        case (num == 6 || num == 7): return -2;break;
        case (num == 8 || num == 9): return -1;break;
        case (num == 10 || num == 11): return 0;break;
        case (num == 12 || num == 13): return 1;break;
        case (num == 14 || num == 15): return 2;break;
        case (num == 16 || num == 17): return 3;break;
        case (num == 18 || num == 19): return 4;break;
        case (num == 20 || num == 21): return 5;break;
        case (num == 22 || num == 23): return 6;break;
        case (num == 24 || num == 25): return 7;break;
        case (num == 26 || num == 27): return 8;break;
        case (num == 28 || num == 29): return 9;break;
        case (num == 30 || num == 31): return 10;break;
        case (num == 32 || num == 33): return 11;break;
        case (num == 34 || num == 35): return 12;break;
        case (num == 36 || num == 37): return 13;break;
        case (num == 38 || num == 39): return 14;break;
        case (num == 40 || num == 41): return 15;break;
        case (num == 42 || num == 43): return 16;break;
        case (num == 44 || num == 45): return 17;break;
        case (num == 46 || num == 47): return 18;break;
        case (num == 48 || num == 49): return 19;break;
        case (num == 50 || num == 51): return 20;break;
        case (num == 52 || num == 53): return 21;break;
        case (num == 54 || num == 55): return 22;break;
        default:return 0; break;
        }

}

function genArmor (type) {
    var armor_return;
    switch(type) {
    case "AC": armor_return = aBonus + sBonus + 10 + genAmod(dex) + genSizeMod(charsize) + natA + deflect + acMM;break;
    case "TAC": armor_return = 10 + genAmod(dex);break;
    case "FF": armor_return = 10+ natA + aBonus + sBonus + deflect + acMM + genSizeMod(charsize);break;
    }

    return armor_return;
}


 function saveCharacter() {
 var db = LocalStorage.openDatabaseSync("user", "1.0", "userdata", 1);
    db.transaction(
                function(tx) {
                        tx.executeSql('CREATE TABLE IF NOT EXISTS Characters(name TEXT UNIQUE,race TEXT,class TEXT,align TEXT,lvl INT,xp INT, hp INT, str INT, dex INT, con INT, intel INT,wis INT,cha INT, speed INT, Skills TEXT, Feats TEXT, Spells TEXT, Armor TEXT, Weapons TEXT,Gear TEXT, Languages TEXT,height INT, weight INT,age INT,eye TEXT,hair TEXT,sex INT,god TEXT,ht TEXT,bio TEXT,plat INT,gold INT, silver INT, copper INT, currentGame TEXT)');
                }
                );
                var data = [charname,race,charclass,charalignment,charlvl,xp,hp,str,dex,con,intel,wis,cha,speed,charskills,charfeats,charspells,chararmor,charweapons,chargear,charlang,(12*charhf)+parseInt(charhi),charWeight,charage,chareyes,charhair,charsex,chargod,charht,chardisc,charplat,chargold,charsilver,charcopper,currentgame];

     var dataStr = "INSERT INTO Characters VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

     db.transaction(function(tx) {

        tx.executeSql(dataStr, data);


        });


}

function loadCharacters() {
     var db = LocalStorage.openDatabaseSync("user", "1.0", "userdata", 1);
    console.log("Loading Characters");
            db.transaction(
               function(tx) {
                         tx.executeSql('CREATE TABLE IF NOT EXISTS Characters(name TEXT UNIQUE,race TEXT,class TEXT,align TEXT,lvl INT, xp INT, hp INT, str INT, dex INT, con INT, intel INT,wis INT,cha INT,speed INT, Skills TEXT, Feats TEXT, Spells TEXT, Armor TEXT, Weapons TEXT,Gear TEXT, Languages TEXT,height INT, weight INT, age INT, eye TEXT, hair TEXT,sex INT,god TEXT,ht TEXT,bio TEXT,plat INT, gold INT, silver INT, copper INT,currentGame TEXT)');
               }
                );

    var db1 = LocalStorage.openDatabaseSync("user", "1.0", "userdata", 1);
    var dataStr = "SELECT * FROM `Characters` WHERE `name` != ' '";


    db1.transaction(
                function(tx) {

                    var alcards = 0;
                    var pull = tx.executeSql(dataStr);
                    console.log(pull.rows.length);

                    while (pull.rows.length > alcards) {
                    if(pull.rows.length > 0) {

                        charactercardslist.append({title1:pull.rows.item(alcards).name,
                                discription:pull.rows.item(alcards).bio,
                                racetype:pull.rows.item(alcards).race,
                                classtype:pull.rows.item(alcards).class,
                                 aligntype:pull.rows.item(alcards).align,
                                pulledcharsize:pull.rows.item(alcards).size,

                                 pulledhp:pull.rows.item(alcards).hp,
                                 pulledstr:pull.rows.item(alcards).str,
                                 pulleddex:pull.rows.item(alcards).dex,
                                 pulledcon:pull.rows.item(alcards).con,
                                 pulledintel:pull.rows.item(alcards).intel,
                                 pulledwis:pull.rows.item(alcards).wis,
                                 pulledcha: pull.rows.item(alcards).cha,

                                 pulledsizeMod: genSizeMod(tomeReader("RACE",pull.rows.item(alcards).race,"size")),
                                 pulledstrMod: Scripts.genAmod(pull.rows.item(alcards).str),
                                 pulleddexMod: Scripts.genAmod(pull.rows.item(alcards).dex),
                                 pulledconMod: Scripts.genAmod(pull.rows.item(alcards).con),
                                 pulledintelMod: Scripts.genAmod(pull.rows.item(alcards).intel),
                                 pulledwisMod: Scripts.genAmod(pull.rows.item(alcards).wis),
                                 pulledchaMod: Scripts.genAmod(pull.rows.item(alcards).cha),



                                 pulledcharlvl:pull.rows.item(alcards).lvl,
                                 pulledcharxp:pull.rows.item(alcards).xp,


                                 pulledspeed:pull.rows.item(alcards).speed,

                                 pulledgold:pull.rows.item(alcards).plat,
                                 pulledgold:pull.rows.item(alcards).gold,
                                 pulledsilver:pull.rows.item(alcards).silver,
                                 pulledcoper:pull.rows.item(alcards).coper,

                                 pulledweapons:pull.rows.item(alcards).Weapons,
                                 pulledarmor:pull.rows.item(alcards).Armor,
                                 pulledgear:pull.rows.item(alcards).Gear,

                                 pulledskills:pull.rows.item(alcards).Skills,
                                 pulledfeats:pull.rows.item(alcards).Feats,
                                 pulledspells:pull.rows.item(alcards).Spells,
                                 pulledlanguages:pull.rows.item(alcards).Languages,

                                 pulledage:pull.rows.item(alcards).age,
                                 pulledweight:pull.rows.item(alcards).weight,
                                 pulledheight:pull.rows.item(alcards).height,
                                 pulledeye:pull.rows.item(alcards).eye,
                                 pulledhair:pull.rows.item(alcards).hair,
                                 pulledsex:pull.rows.item(alcards).sex,
                                 pulledgod:pull.rows.item(alcards).god,
                                 pulledht:pull.rows.item(alcards).ht,
                                 pulleddiscription:pull.rows.item(alcards).bio,
                                 pulleddiscription:pull.rows.item(alcards).discription,

                                 pulledAC:Scripts.genArmor("AC"),
                                 pulledTAC:Scripts.genArmor("TAC"),
                                 pulledFF:Scripts.genArmor("FF"),

                                             });



                    } else {
                        //console.log("No User found");
                        return 0;
                        }
                    alcards = alcards + 1;
                    }

                }
            )


}

function loadActions() {
    actionlist.clear();
    var db = LocalStorage.openDatabaseSync("user", "1.0", "userdata", 1);
   //console.log("Loading Weapons");
           db.transaction(
              function(tx) {
                        tx.executeSql('CREATE TABLE IF NOT EXISTS Characters(name TEXT UNIQUE,race TEXT,class TEXT,align TEXT,lvl INT, xp INT, hp INT, str INT, dex INT, con INT, intel INT,wis INT,cha INT, speed INT, Skills TEXT, Feats TEXT, Spells TEXT, Armor TEXT, Weapons TEXT,Gear TEXT, Languages TEXT,height INT, weight INT, age INT, eye TEXT, hair TEXT,sex INT,god TEXT,ht TEXT,bio TEXT,plat INT, gold INT, silver INT, copper INT, currentGame TEXT)');
              }
               );

   var db1 = LocalStorage.openDatabaseSync("user", "1.0", "userdata", 1);
   var dataStr = "SELECT * FROM `Characters` WHERE `name` == '"+charname+"'";
    var weapons = "";
    var armor = "";
    var skills = "";
    var feats = "";
    var spells = "";
    var gear = "";

   db1.transaction(
               function(tx) {
                     var pull = tx.executeSql(dataStr);
                         weapons = pull.rows.item(0).Weapons;
                         //armor = pull.rows.item(0).Armor;
                         //skills = pull.rows.item(0).Skills;
                         //feats = pull.rows.item(0).Feats;
                         spells = pull.rows.item(0).Spells;
                         //gear = pull.rows.item(0).Gear;

                         }
               );

    switch(list) {
        case "weapons": { var weps = weapons.split(",");
            var wnum = 0;
            while (weps.length > wnum ) {
                console.log(weps[wnum]);
                if(weps[wnum].length > 0) {

                    var db2 = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);
                    var dataStr2 = "SELECT * FROM WEAPONS WHERE `name` = '"+weps[wnum]+"'";

                    db2.transaction (
                                function(tx) {
                                    var pull = tx.executeSql(dataStr2);
                                    actionlist.append({
                                        name:weps[wnum],
                                        dmgS:pull.rows.item(0).dmgS,
                                        dmgM:pull.rows.item(0).dmgM,
                                        dmgL:pull.rows.item(0).dmgL

                                        });

                                });


                        }

                wnum = wnum +1;
            }
            break;
        }

    case "spells": { var spel = spells.split(",");
            var snum = 0;
        while (spel.length > snum ) {
                console.log(spel[snum]);
                if(spel[snum].length > 0) {
                    actionlist.append({
                      name:spel[snum]});
                }

        wnum = wnum +1;
        }
        break; }

    }


}

function diceRoll(die) {
    var realvalue = die.split("d");
    var roll = Math.floor(((Math.random() * (realvalue[0] * realvalue[1])) + parseInt(realvalue[0])));

    //console.log(roll);

    return roll;
}

function attackRoll(range) {
    var roll = Math.floor(((Math.random() * 20) + 1));
    if (roll == 20) {
        critchance = 1;
        //console.log("Critical CHANCE!!!!")
        critCheck = Math.floor(((Math.random() * 20) + 1));

        if(range == 0) {
                critCheck = critCheck + charbab + genSizeMod(sizeMod) + genAmod(str);
            } else {
                critCheck = critCheck + charbab + genSizeMod(sizeMod) + genAmod(dex);
           }
        //return critCheck;



    } else {
        critchance = 0;

         if(range == 0) {
                 roll = roll + charbab + genSizeMod(sizeMod) + genAmod(str);
             } else {
                 roll = roll + charbab + genSizeMod(sizeMod) + genAmod(dex);
            }

    }
    return roll;

}

function saveRoll(type) {
    var roll = Math.floor(((Math.random() * 20) + 1));

        critchance = 0;

         if(type == "fs") {

                 roll = roll +  genAmod(con);
         }
         if(type == "rs") {

                 roll = roll + genAmod(dex);
            }
         if(type == "ws") {

                 roll = roll + genAmod(wis);
            }

    return roll;

}



function genSizeMod(size) {
    var mod = 0;
    switch(size) {
        case 6: mod = -8;break;
        case 5: mod = -4;break;
        case 4: mod = -2;break;
        case 3: mod = -1;break;
        case 2: mod = 0;break;
        case 1: mod = 1;break;
        case 0: mod = 2;break;
        case -1: mod = 4;break;
        case -2: mod = 6;break;
         case -3: mod = 8;break;


    }
    return mod;
}

function tomeReader(table,type,info) {

    var db = LocalStorage.openDatabaseSync("store", "1.0", "RPG Tome", 1);
    var dataStr = "SELECT * FROM `"+table+"` WHERE name='"+type+"'";

    console.log(table,type);
    var info_return;
    var pullcommand;
    db.transaction (

                function(tx) {
                    var pull = tx.executeSql(dataStr);
                    switch(info) {
                    case "size": pullcommand = pull.rows.item(0).size;break;
                    default: pullcommand = "unknown";break;
                    }
    });

    return pullcommand;
}


