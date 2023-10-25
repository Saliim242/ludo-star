import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  
  /*
  Halkaan Waxan ku haystaa lawo variable oo int ah waayo wxan generate 
  gareneyno waa int oo sawirka wato zhp 
  
  waxaa sido kale ku shbayaa random numbers waayo 
  
  laa dhuuga kama bilaawdo 0 oo wxuu ka bilaawdaa 1 sidaas awgeed rondom ka 
  marmarka qaar waxaa laga yabaa inuu eber kuso aado marka waxan samaynay in 
  aan hal ku darno markasta uu 0 lagaro wxu ku daraa isalamarkas 1
  waxan haleynaa 1 ilaa 6 inta u dhaxeeyso 
   */
  int leftDiceNumber = Random().nextInt(6) + 1;
  int rightDiceNumber = Random().nextInt(6) + 1;
 
  
  /*
     Waxan halkan ku ahaysana Function kaso noqoabanyo inuu noo generate 
     gareeyo sawiradena mara walbo number goni noso saraayo 
     numberkaas uu u dhaxeey 1 ilaa 6 
     
     waxan mar walbo neh badaleyna variables kii an hore usoo maseynay 
     qiimihii ku jiray in an si randam ah usoo bandhigo mar walbo waxan naga 
     saacidaayo sidi an hore uso sheegyna setStae oo leh Statefull 
   */
  void changeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blueGrey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade300,
        elevation:0 ,
        title: Text('Welcome To My Dice App'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /*  
            Sxp Ugu horeen waxaan isticmalay statefull widget sababtoo ah
            waxaa dhacaayo is badal si uu isbadalkaas u dhacana neh waxan u 
            bahanahy in aan state ka dib aan u build gareeyno waxana nosuurta
             galinaayo statefull oo nasii naaye setState(()) kasoo noo 
             qabanayo in uu state dib u build gareeyo lkn stateless widgit ka
              ma leh asiga .  intaas ka dib 
              
              waxan rapa in an kulala sheego waxan sameyay ee ila fahan . 
              
              
              waxan isticmalay column() widget oo aay kuwada jiraan dhamn 
              widget yadayda 
              sido kale waxn isticmalay Row() widget asi neh si aan uso ban 
              dhigo laa dhuuga marka row ga dhaxdiisa waxn istcmalay expended
               Widget kaso isinaayo inuu qaato inta Screen ka ka badhaan 
               marka sidaas darteed wxuu samyna in lawada sawir ee ladhuuga 
               uu siiyo cabir isku mdi ah.
          
           */
          
          /*
           Qeebta Kowaad :
           Waxaan soo Samestay folder ay igu jiraan dhamn sawirada an u 
           isticmalayo app-kayga 
           
           waxan rapa in an sawirkga so bandhigo waxan isctimalay widget la 
           dhahayo CircleAvatar() kaso isinaayo siwirka ad arkayso oo logu 
           talagay profiles ka marka wakaa ogow
           */
          SizedBox(height: 30),
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage("images/ali.jpg"),

          )
          ,
          SizedBox(height: 20),
          
          Text("Alijabir Abdulkadir Iidle" , style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),),
          SizedBox(height: 8),
          Text("ID-- C120198 " , style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),),

           
      
          
          // Halkaan Waxan Kgu so bandhigay sawirda ladhuuga anigoo 
          // istcmalayo si an hore kgu soo shegay row iyo Expended Mida kale 
          // zhpow waxan sameyay dhamn sawirda laa dhuuga in an siiyay 
          // mdikasta lambarkiisa si ay nogu fududaato in an badalno sawirda 
          
          
          Expanded(
            child: Row(

              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: changeDice,
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(

                    onPressed: changeDice,
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}