#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
jv_pg_ct_ilyanom() {
if [[ $NOM1 != "" ]] ; then
local noma="$NOM1"
fi
if [[ $NOM2 != "" ]] ; then
local noma="$noma, $NOM2"
fi
if [[ $NOM3 != "" ]] ; then
local noma="$noma, $NOM3"
fi
if [[ $NOM4 != "" ]] ; then
local noma="$noma, $NOM4"
fi
if [[ $NOM5 != "" ]] ; then
local noma="$noma, $NOM5"
fi
echo "$noma"
}

jv_pg_ct_verinoms () {
[[ -z $(which curl) ]] && sudo apt-get install curl
USER=" "
local NOMOKA=`echo $(jv_sanitize "$order")`
local NOM11=`echo $(jv_sanitize "$NOM1")`
local NOM22=`echo $(jv_sanitize "$NOM2")`
local NOM33=`echo $(jv_sanitize "$NOM3")`
local NOM44=`echo $(jv_sanitize "$NOM4")`
local NOM55=`echo $(jv_sanitize "$NOM5")`

if [[ $NOMOKA == "$NOM11" ]] ; then
USER=$USER1
PASS=$PASS1
PNOM="$order"
return
fi

if [[ $NOMOKA == "$NOM22" ]] ; then
USER=$USER2
PASS=$PASS2
PNOM="$order"
return
fi

if [[ $NOMOKA == "$NOM33" ]] ; then
USER=$USER3
PASS=$PASS3
PNOM="$order"
return
fi

if [[ $NOMOKA == "$NOM44" ]] ; then
USER=$USER4
PASS=$PASS4
PNOM="$order"
return
fi

if [[ $NOMOKA == "$NOM55" ]] ; then
USER=$USER5
PASS=$PASS5
PNOM="$order"
return
fi

if [[ "$order" =~ "$PNOM" ]]; then 
say "Je ne reconnais pas $order. Annulation...."; 
fi

return
}

jv_pg_ct_envoimess () {
MESS=`echo $(cat ~/smsa.txt) | sed "s/ /%20/g"`
echo "$(curl -s "https://smsapi.free-mobile.fr/sendmsg?user=$USER&pass=$PASS&msg=Mess%20envoyé%20avec%20$trigger:%20$MESS")"
}

jv_pg_ct_messexterne() {
COMPT_messexterne=`echo "$order" | grep -o ";" | wc -w`;
if [ "$COMPT_messexterne" == "2" ]; then 
AQUI_messexterne=`echo "$order" | cut -d ";" -f2`; 
Mess_messexterne=`echo "$order" | cut -d ";" -f3`; 

# echo "AQUI_messexterne=$AQUI_messexterne=, Mess_messexterne=$Mess_messexterne, COMPT_messexterne=$COMPT_messexterne"
order="$AQUI_messexterne";
jv_pg_ct_verinoms;
MESS=`echo "$Mess_messexterne" | sed "s/ /%20/g"`;
# echo "$(curl -s "https://smsapi.free-mobile.fr/sendmsg?user=$USER&pass=$PASS&msg=$MESS")";
curl -s "https://smsapi.free-mobile.fr/sendmsg?user=$USER&pass=$PASS&msg=$MESS";

jv_success "Message externe recu et traité...";
else
jv_success" ";
jv_success"Erreur, veuillez vous en servir ainsi:";
jv_success'./jarvis.sh -x "MESSEXTERNE; a qui; contenu du message"';
jv_success " ";
fi
}