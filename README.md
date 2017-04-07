<!---
IMPORTANT
=========
This README.md is displayed in the WebStore as well as within Jarvis app
Please do not change the structure of this file
Fill-in Description, Usage & Author sections
Make sure to rename the [en] folder into the language code your plugin is written in (ex: fr, es, de, it...)
For multi-language plugin:
- clone the language directory and translate commands/functions.sh
- optionally write the Description / Usage sections in several languages
-->
## Description
(07/04/17 Possibilité d'envoie de message par ./jarvis.sh -x "MESSEXTERNE, a qui, contenu du message")
(31/01/17 Si vous avez le plugin http://domotiquefacile.fr/jarvis/plugins/jarvis-liste-des-courses (http://domotiquefacile.fr/jarvis/plugins/jarvis-liste-des-courses) vous pouvez envoyer la liste par sms.)
(31/12/16 Correction de compatibilité avec Jarvis UI)
(24/12/16 Problème encodage UFT8 Résolu...)
(21/12/16 Affiche les noms des destinataire possible)

Free Mobile a lance un service de notification via SMS pour ses abonnes, gratuit si vous avez le forfait illimite en sms bien sur.
On peut maintenant s envoyer des sms directement depuis Jarvis en appelant une simple url https dans les commands
    
  « https://smsapi.free-mobile.fr/sendmsg?user=000000pass=xxxxxxxxx&msg=Hello%20World%20! »

Personnelement je l utilise deja avec DOMOTICZ, le principe est d activer le service SMS chez Free qui donne alors un password  lie a votre identifiant 
Free mobile voir ici:
https://easydomoticz.com/nouveau-service-sms-pour-les-utilisateurs-de-free-mobile/

Jarvis-FREE-sms peut supporter jusqu a 5 utilisateurs Free mobile.

ATTENTION:
Si au domicile ta femme ou les enfants veulent t envoyer un sms,
ils pouront le faire au travers de jarvis, 
mais ils ne pouront pas envoyer un sms pour quelqu un d autre !!!! 
sauf si bien sur on a active ce service sur la ligne concerne  !!!!

## Languages

* Français

## Usage

```
You: envoie un sms
Jarvis: Envoyer un message à Paul, Michel durant ?
You: Paul
Jarvis: Ok quel est le message ?
You: tu penses a envoyer des jolis fleurs a ton papa ?
Jarvis:  Voici votre message: tu penses a envoyer des jolis fleurs a ton papa ? L'envoyer ?
You: OK
Jarvis: c est parti...


You: envoie la liste des courses par sms
Jarvis: Envoyer la liste des courses à qui  Paul, Michel durant ?
You: Paul
Jarvis: La liste des courses est parti par sms à Paul

```

## Author
[Jean-Bernard Hallez](https://github.com/Jean-Bernard-Hallez/jarvis-FREE-sms)

