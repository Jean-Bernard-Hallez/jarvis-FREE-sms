#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file

verimess () {
[[ -z $(which curl) ]] && sudo apt-get install curl
# echo "voici le sms: $(cat ~/smsa.txt)"
MESS=`echo $(cat ~/smsa.txt) | sed "s/ /%20/g"`
NOMOKA=`echo $(cat ~/smsa.txt) | cut -d"," -f1 | sed "s/,//g"` 

NOM11=`echo $(jv_sanitize "$NOM1")`
NOM22=`echo $(jv_sanitize "$NOM2")`
NOM33=`echo $(jv_sanitize "$NOM3")`
NOM44=`echo $(jv_sanitize "$NOM4")`
NOM55=`echo $(jv_sanitize "$NOM5")`

if [[ $NOMOKA == "$NOM11" ]] ; then
USER=$USER1
PASS=$PASS1
envoimess
return
fi

if [[ $NOMOKA == "$NOM22" ]] ; then
USER=$USER2
PASS=$PASS2
envoimess
return
fi

if [[ $NOMOKA == "$NOM33" ]] ; then
USER=$USER3
PASS=$PASS3
envoimess
return
fi

if [[ $NOMOKA == "$NOM44" ]] ; then
USER=$USER4
PASS=$PASS4
envoimess
return
fi

if [[ $NOMOKA == "$NOM55" ]] ; then
USER=$USER5
PASS=$PASS5
envoimess
return
fi


echo "Désolé message non envoyé, pas de nom $NOMOKA trouvé dans me fichier config point est ce hache"
break
return
}

envoimess () {
echo "$(curl -s "https://smsapi.free-mobile.fr/sendmsg?user=$USER&pass=$PASS&msg=Mess%20envoyé%20avec%20$trigger%20pour:%20$MESS")"
# echo "simul envoi ok"
}
