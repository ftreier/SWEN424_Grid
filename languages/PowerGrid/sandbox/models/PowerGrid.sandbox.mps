<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3d5930c0-b584-4003-9a9d-a2422b4f3168(PowerGrid.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="d2a07bb2-09cf-48ad-a97b-660a7f0f2205" name="PowerGrid" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
  </languages>
  <imports>
    <import index="z6cp" ref="r:3d5930c0-b584-4003-9a9d-a2422b4f3168(PowerGrid.sandbox)" />
  </imports>
  <registry>
    <language id="d2a07bb2-09cf-48ad-a97b-660a7f0f2205" name="PowerGrid">
      <concept id="8568651731614887511" name="PowerGrid.structure.Transformer" flags="ng" index="2s6h$e">
        <property id="8568651731614887517" name="MaxCapacity" index="2s6h$4" />
        <property id="8568651731614887521" name="Efficiency" index="2s6h$S" />
      </concept>
      <concept id="3912689115450157634" name="PowerGrid.structure.PowerGridSimulator" flags="ng" index="sJg17">
        <property id="4557959800733964860" name="SimulationInterval" index="o0NDQ" />
        <property id="4557959800734321492" name="SimulationSteps" index="o1EGu" />
        <child id="8568651731614887534" name="Transformers" index="2s6h$R" />
        <child id="3886532124061166063" name="Consumers" index="N8dmf" />
        <child id="5542951320088342670" name="Grids" index="3lMnhl" />
        <child id="5097090694229163427" name="UsageProfiles" index="1vLJPo" />
        <child id="2395210634691693350" name="Producers" index="3yd3h7" />
        <child id="7210842759737799191" name="Weather" index="1Hj7Pu" />
      </concept>
      <concept id="5542951320088219680" name="PowerGrid.structure.PowerGrid" flags="ng" index="3lM9jV">
        <property id="5758246778675383919" name="probabilityOfFailure" index="244Ey0" />
        <property id="5758246778675430566" name="ConnectTransName2" index="245u99" />
        <property id="5758246778675430558" name="ConnectTransName1" index="245u9L" />
        <property id="5542951320088219688" name="efficiency" index="3lM9jN" />
        <property id="5542951320088219683" name="maxCapacity" index="3lM9jS" />
      </concept>
      <concept id="5097090694229161405" name="PowerGrid.structure.UsageProfile" flags="ng" index="1vLJl6">
        <property id="5097090694229162835" name="Evening" index="1vLJIC" />
        <property id="5097090694229162826" name="Midday" index="1vLJIL" />
        <property id="5097090694229162830" name="Afternoon" index="1vLJIP" />
        <property id="5097090694229162823" name="Morning" index="1vLJIW" />
        <property id="5097090694229162821" name="Night" index="1vLJIY" />
      </concept>
      <concept id="2395210634691681910" name="PowerGrid.structure.Producer" flags="ng" index="3yd64n">
        <property id="5758246778675384565" name="TransName" index="244Foq" />
        <property id="8834791769907847257" name="ProductionMethode" index="JvpKn" />
        <property id="7841080990075074533" name="WeatherName" index="2KFMDS" />
        <property id="2395210634691693334" name="MaxProduction" index="3yd3hR" />
        <property id="2395210634691681913" name="MinProduction" index="3yd64o" />
        <reference id="7210842759738047906" name="Weather" index="1Hs3bF" />
      </concept>
      <concept id="7210842759737799155" name="PowerGrid.structure.Weather" flags="ng" index="1Hj7UU">
        <property id="7210842759737799184" name="Type" index="1Hj7Pp" />
        <property id="7210842759737799187" name="Wind" index="1Hj7Pq" />
      </concept>
      <concept id="7210842759737799154" name="PowerGrid.structure.WeatherList" flags="ng" index="1Hj7UV">
        <child id="7210842759737835332" name="Weather" index="1Hjf0d" />
      </concept>
      <concept id="5771403044647069386" name="PowerGrid.structure.Consumer" flags="ng" index="3VOWaR">
        <property id="5097016817291102205" name="TransName" index="eq3CR" />
        <property id="7841080990075869668" name="UsageName" index="2KmOhT" />
        <property id="5771403044647069445" name="MaxConsumption" index="3VOWdS" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="sJg17" id="5n4IGwrWnq1">
    <property role="TrG5h" value="SimpleNet" />
    <property role="o1EGu" value="24" />
    <property role="o0NDQ" value="2" />
    <node concept="2s6h$e" id="2djYxgKlzXH" role="2s6h$R">
      <property role="2s6h$4" value="200" />
      <property role="2s6h$S" value="99" />
      <property role="TrG5h" value="T Wellington" />
    </node>
    <node concept="2s6h$e" id="351O67268ES" role="2s6h$R">
      <property role="2s6h$4" value="200" />
      <property role="2s6h$S" value="98" />
      <property role="TrG5h" value="T Auckland" />
    </node>
    <node concept="1Hj7UV" id="5n4IGwrWnq2" role="1Hj7Pu">
      <property role="TrG5h" value="Wellington" />
      <node concept="1Hj7UU" id="5n4IGwrWnq3" role="1Hjf0d">
        <property role="1Hj7Pq" value="3" />
      </node>
      <node concept="1Hj7UU" id="351O6726yYa" role="1Hjf0d">
        <property role="1Hj7Pp" value="2" />
      </node>
    </node>
    <node concept="1vLJl6" id="5n4IGwrWnq4" role="1vLJPo">
      <property role="TrG5h" value="Residential" />
      <property role="1vLJIY" value="20" />
      <property role="1vLJIW" value="40" />
      <property role="1vLJIL" value="100" />
      <property role="1vLJIP" value="50" />
      <property role="1vLJIC" value="90" />
    </node>
    <node concept="3yd64n" id="5n4IGwrWnq5" role="3yd3h7">
      <property role="3yd64o" value="0" />
      <property role="3yd3hR" value="100" />
      <property role="2KFMDS" value="Wellington" />
      <property role="244Foq" value="T Wellington" />
      <property role="TrG5h" value="Wellington Wind Mill" />
      <property role="JvpKn" value="3" />
    </node>
    <node concept="3lM9jV" id="5n4IGwrWnq6" role="3lMnhl">
      <property role="3lM9jS" value="200" />
      <property role="3lM9jN" value="99" />
      <property role="244Ey0" value="1" />
      <property role="TrG5h" value="Wellington-Auckland" />
      <property role="245u9L" value="T Wellington" />
      <property role="245u99" value="T Auckland" />
    </node>
    <node concept="3VOWaR" id="5n4IGwrWnq8" role="N8dmf">
      <property role="3VOWdS" value="100" />
      <property role="TrG5h" value="House 1" />
      <property role="eq3CR" value="T Auckland" />
      <property role="2KmOhT" value="Residential" />
    </node>
  </node>
  <node concept="sJg17" id="4ZDpIZc4bMv">
    <property role="TrG5h" value="tester" />
    <property role="o1EGu" value="10" />
    <property role="o0NDQ" value="2" />
    <node concept="3VOWaR" id="jCjOAzvzXx" role="N8dmf">
      <property role="3VOWdS" value="1000" />
      <property role="TrG5h" value="Office" />
      <property role="eq3CR" value="Tran" />
      <property role="2KmOhT" value="toda" />
    </node>
    <node concept="3VOWaR" id="jCjOAzwq1z" role="N8dmf">
      <property role="3VOWdS" value="1000" />
      <property role="TrG5h" value="House" />
      <property role="eq3CR" value="Tran3" />
      <property role="2KmOhT" value="yester" />
    </node>
    <node concept="3VOWaR" id="jCjOAzCdRf" role="N8dmf">
      <property role="3VOWdS" value="1000" />
      <property role="TrG5h" value="Building" />
      <property role="eq3CR" value="SuperTran" />
      <property role="2KmOhT" value="yester" />
    </node>
    <node concept="3VOWaR" id="jCjOAz$5dN" role="N8dmf">
      <property role="3VOWdS" value="100" />
      <property role="TrG5h" value="House" />
      <property role="eq3CR" value="SuperTran" />
      <property role="2KmOhT" value="toda" />
    </node>
    <node concept="3VOWaR" id="jCjOAz$5dR" role="N8dmf">
      <property role="3VOWdS" value="800" />
      <property role="TrG5h" value="Again" />
      <property role="eq3CR" value="Tran4" />
      <property role="2KmOhT" value="yester" />
    </node>
    <node concept="3VOWaR" id="jCjOAzB1wz" role="N8dmf">
      <property role="3VOWdS" value="1000" />
      <property role="TrG5h" value="Home" />
      <property role="eq3CR" value="Tran" />
      <property role="2KmOhT" value="yester" />
    </node>
    <node concept="3VOWaR" id="jCjOAzBqg6" role="N8dmf">
      <property role="3VOWdS" value="1000" />
      <property role="TrG5h" value="Office" />
      <property role="eq3CR" value="Tran2" />
      <property role="2KmOhT" value="toda" />
    </node>
    <node concept="3VOWaR" id="jCjOAzBqgd" role="N8dmf">
      <property role="3VOWdS" value="1000" />
      <property role="TrG5h" value="Work" />
      <property role="eq3CR" value="Tran2" />
      <property role="2KmOhT" value="yester" />
    </node>
    <node concept="3VOWaR" id="jCjOAzBqgl" role="N8dmf">
      <property role="3VOWdS" value="1000" />
      <property role="TrG5h" value="School" />
      <property role="eq3CR" value="Tran2" />
      <property role="2KmOhT" value="yester" />
    </node>
    <node concept="1Hj7UV" id="4ZDpIZc4bMw" role="1Hj7Pu">
      <property role="TrG5h" value="Auckland" />
      <node concept="1Hj7UU" id="351O6722GPz" role="1Hjf0d">
        <property role="1Hj7Pq" value="8" />
      </node>
    </node>
    <node concept="1vLJl6" id="4ZDpIZc4bMy" role="1vLJPo">
      <property role="TrG5h" value="yester" />
      <property role="1vLJIY" value="45" />
      <property role="1vLJIW" value="18" />
      <property role="1vLJIL" value="92" />
      <property role="1vLJIP" value="55" />
      <property role="1vLJIC" value="99" />
    </node>
    <node concept="1vLJl6" id="jCjOAzv40h" role="1vLJPo">
      <property role="TrG5h" value="toda" />
      <property role="1vLJIY" value="60" />
      <property role="1vLJIW" value="22" />
      <property role="1vLJIL" value="54" />
      <property role="1vLJIP" value="78" />
      <property role="1vLJIC" value="24" />
    </node>
    <node concept="3yd64n" id="4ZDpIZc4bMz" role="3yd3h7">
      <property role="3yd64o" value="0" />
      <property role="3yd3hR" value="1000" />
      <property role="TrG5h" value="Dam" />
      <property role="244Foq" value="Tran" />
      <property role="2KFMDS" value="Auckland" />
      <ref role="1Hs3bF" node="4ZDpIZc4bMw" resolve="Auckland" />
    </node>
    <node concept="3yd64n" id="jCjOAzCdRp" role="3yd3h7">
      <property role="3yd64o" value="0" />
      <property role="3yd3hR" value="1000" />
      <property role="TrG5h" value="Power" />
      <property role="JvpKn" value="3" />
      <property role="244Foq" value="Tran5" />
      <property role="2KFMDS" value="Auckland" />
    </node>
    <node concept="3yd64n" id="jCjOAzv40k" role="3yd3h7">
      <property role="3yd64o" value="0" />
      <property role="3yd3hR" value="1000" />
      <property role="TrG5h" value="Plant" />
      <property role="JvpKn" value="3" />
      <property role="244Foq" value="Tran2" />
      <property role="2KFMDS" value="Auckland" />
    </node>
    <node concept="3yd64n" id="jCjOAzv40n" role="3yd3h7">
      <property role="3yd64o" value="0" />
      <property role="3yd3hR" value="1000" />
      <property role="TrG5h" value="Greens" />
      <property role="244Foq" value="Tran2" />
      <property role="2KFMDS" value="Auckland" />
    </node>
    <node concept="3yd64n" id="jCjOAzv44f" role="3yd3h7">
      <property role="3yd64o" value="0" />
      <property role="3yd3hR" value="1000" />
      <property role="TrG5h" value="Green2" />
      <property role="244Foq" value="Tran" />
      <property role="2KFMDS" value="Auckland" />
    </node>
    <node concept="3yd64n" id="jCjOAzB1wD" role="3yd3h7">
      <property role="3yd64o" value="0" />
      <property role="3yd3hR" value="1000" />
      <property role="TrG5h" value="Sonar" />
      <property role="244Foq" value="Tran" />
      <property role="2KFMDS" value="Auckland" />
    </node>
    <node concept="3lM9jV" id="4ZDpIZc4bM$" role="3lMnhl">
      <property role="3lM9jS" value="200" />
      <property role="3lM9jN" value="100" />
      <property role="244Ey0" value="0" />
      <property role="TrG5h" value="Auck" />
      <property role="245u9L" value="SuperTran" />
      <property role="245u99" value="Tran2" />
    </node>
    <node concept="3lM9jV" id="jCjOAzv44u" role="3lMnhl">
      <property role="3lM9jS" value="200" />
      <property role="3lM9jN" value="100" />
      <property role="244Ey0" value="0" />
      <property role="TrG5h" value="Wellington" />
      <property role="245u9L" value="Tran2" />
      <property role="245u99" value="Tran3" />
    </node>
    <node concept="3lM9jV" id="jCjOAzzW$H" role="3lMnhl">
      <property role="3lM9jS" value="200" />
      <property role="3lM9jN" value="100" />
      <property role="244Ey0" value="2" />
      <property role="TrG5h" value="Hamilton" />
      <property role="245u9L" value="Tran3" />
      <property role="245u99" value="Tran2" />
    </node>
    <node concept="3lM9jV" id="jCjOAz$Ps1" role="3lMnhl">
      <property role="3lM9jS" value="200" />
      <property role="3lM9jN" value="100" />
      <property role="244Ey0" value="70" />
      <property role="TrG5h" value="Lower Hutt" />
      <property role="245u9L" value="Tran4" />
      <property role="245u99" value="Tran3" />
    </node>
    <node concept="3lM9jV" id="jCjOAzCdR1" role="3lMnhl">
      <property role="3lM9jS" value="200" />
      <property role="3lM9jN" value="100" />
      <property role="244Ey0" value="0" />
      <property role="TrG5h" value="Pohara" />
      <property role="245u9L" value="Tran5" />
      <property role="245u99" value="SuperTran" />
    </node>
    <node concept="3lM9jV" id="jCjOAz$7tt" role="3lMnhl">
      <property role="3lM9jS" value="200" />
      <property role="3lM9jN" value="100" />
      <property role="244Ey0" value="20" />
      <property role="TrG5h" value="Tukurua" />
      <property role="245u9L" value="Tran" />
      <property role="245u99" value="Tran4" />
    </node>
    <node concept="3lM9jV" id="jCjOAzC_7K" role="3lMnhl">
      <property role="3lM9jS" value="200" />
      <property role="3lM9jN" value="100" />
      <property role="244Ey0" value="75" />
      <property role="TrG5h" value="Hawthorn" />
      <property role="245u9L" value="Tran" />
      <property role="245u99" value="Tran2" />
    </node>
    <node concept="2s6h$e" id="351O6722IOS" role="2s6h$R">
      <property role="2s6h$4" value="2000" />
      <property role="2s6h$S" value="99" />
      <property role="TrG5h" value="Tran" />
    </node>
    <node concept="2s6h$e" id="351O6722IP6" role="2s6h$R">
      <property role="2s6h$4" value="200" />
      <property role="2s6h$S" value="99" />
      <property role="TrG5h" value="Tran2" />
    </node>
    <node concept="2s6h$e" id="351O6722IPk" role="2s6h$R">
      <property role="2s6h$4" value="200" />
      <property role="2s6h$S" value="50" />
      <property role="TrG5h" value="Tran3" />
    </node>
    <node concept="2s6h$e" id="351O6722IPy" role="2s6h$R">
      <property role="2s6h$4" value="200" />
      <property role="2s6h$S" value="60" />
      <property role="TrG5h" value="SuperTran" />
    </node>
    <node concept="2s6h$e" id="351O6722IPK" role="2s6h$R">
      <property role="2s6h$4" value="200" />
      <property role="2s6h$S" value="100" />
      <property role="TrG5h" value="Tran4" />
    </node>
    <node concept="2s6h$e" id="351O6722IPS" role="2s6h$R">
      <property role="2s6h$4" value="200" />
      <property role="2s6h$S" value="55" />
      <property role="TrG5h" value="Tran5" />
    </node>
  </node>
  <node concept="sJg17" id="351O6720jb$">
    <property role="o1EGu" value="24" />
    <property role="TrG5h" value="NewZealand" />
    <node concept="1Hj7UV" id="351O6720jb_" role="1Hj7Pu">
      <property role="TrG5h" value="asdf" />
      <node concept="1Hj7UU" id="351O6720jbA" role="1Hjf0d" />
    </node>
    <node concept="1vLJl6" id="351O6720jbB" role="1vLJPo">
      <property role="TrG5h" value="asdf" />
      <property role="1vLJIY" value="1" />
      <property role="1vLJIW" value="1" />
      <property role="1vLJIL" value="1" />
      <property role="1vLJIP" value="1" />
      <property role="1vLJIC" value="1" />
    </node>
    <node concept="3yd64n" id="351O6720jbC" role="3yd3h7">
      <property role="3yd64o" value="0" />
      <property role="3yd3hR" value="100" />
      <property role="TrG5h" value="asdf" />
      <property role="244Foq" value="asdf" />
      <property role="2KFMDS" value="asdf" />
    </node>
    <node concept="3lM9jV" id="351O6720jbD" role="3lMnhl">
      <property role="3lM9jS" value="200" />
      <property role="3lM9jN" value="98" />
      <property role="244Ey0" value="1" />
      <property role="TrG5h" value="asdf" />
      <property role="245u9L" value="asdf" />
      <property role="245u99" value="asdf" />
    </node>
    <node concept="2s6h$e" id="351O6720jbE" role="2s6h$R">
      <property role="2s6h$4" value="200" />
      <property role="2s6h$S" value="98" />
      <property role="TrG5h" value="asdf" />
    </node>
    <node concept="3VOWaR" id="351O6720jbF" role="N8dmf">
      <property role="3VOWdS" value="100" />
      <property role="TrG5h" value="asdf" />
      <property role="eq3CR" value="asdf" />
      <property role="2KmOhT" value="asdf" />
    </node>
  </node>
  <node concept="sJg17" id="212Cs3XqGN2">
    <property role="o1EGu" value="24" />
    <property role="TrG5h" value="Number2" />
    <property role="o0NDQ" value="3" />
    <node concept="1Hj7UV" id="212Cs3XqGN3" role="1Hj7Pu">
      <property role="TrG5h" value="Auck" />
      <node concept="1Hj7UU" id="212Cs3XqGN4" role="1Hjf0d" />
      <node concept="1Hj7UU" id="212Cs3XqGR$" role="1Hjf0d">
        <property role="1Hj7Pp" value="1" />
        <property role="1Hj7Pq" value="5" />
      </node>
      <node concept="1Hj7UU" id="212Cs3XqGRB" role="1Hjf0d">
        <property role="1Hj7Pp" value="3" />
        <property role="1Hj7Pq" value="5" />
      </node>
      <node concept="1Hj7UU" id="212Cs3XqGRF" role="1Hjf0d">
        <property role="1Hj7Pq" value="4" />
      </node>
      <node concept="1Hj7UU" id="212Cs3XqGRK" role="1Hjf0d">
        <property role="1Hj7Pp" value="2" />
        <property role="1Hj7Pq" value="4" />
      </node>
    </node>
    <node concept="1Hj7UV" id="212Cs3XqGRQ" role="1Hj7Pu">
      <property role="TrG5h" value="Wel" />
      <node concept="1Hj7UU" id="212Cs3XqGRR" role="1Hjf0d">
        <property role="1Hj7Pq" value="4" />
      </node>
      <node concept="1Hj7UU" id="212Cs3XqGS0" role="1Hjf0d">
        <property role="1Hj7Pp" value="1" />
        <property role="1Hj7Pq" value="7" />
      </node>
      <node concept="1Hj7UU" id="212Cs3XqGS3" role="1Hjf0d">
        <property role="1Hj7Pp" value="2" />
        <property role="1Hj7Pq" value="8" />
      </node>
      <node concept="1Hj7UU" id="212Cs3XqGS7" role="1Hjf0d" />
      <node concept="1Hj7UU" id="212Cs3XqGSc" role="1Hjf0d">
        <property role="1Hj7Pp" value="3" />
      </node>
      <node concept="1Hj7UU" id="212Cs3XqGSi" role="1Hjf0d">
        <property role="1Hj7Pp" value="2" />
        <property role="1Hj7Pq" value="3" />
      </node>
    </node>
    <node concept="1Hj7UV" id="212Cs3XqGSp" role="1Hj7Pu">
      <property role="TrG5h" value="Ch" />
      <node concept="1Hj7UU" id="212Cs3XqGSq" role="1Hjf0d">
        <property role="1Hj7Pq" value="8" />
      </node>
      <node concept="1Hj7UU" id="212Cs3XqGSE" role="1Hjf0d">
        <property role="1Hj7Pp" value="2" />
        <property role="1Hj7Pq" value="8" />
      </node>
      <node concept="1Hj7UU" id="212Cs3XqGSH" role="1Hjf0d">
        <property role="1Hj7Pq" value="12" />
      </node>
      <node concept="1Hj7UU" id="212Cs3XqGSL" role="1Hjf0d">
        <property role="1Hj7Pq" value="7" />
      </node>
      <node concept="1Hj7UU" id="212Cs3XqGSQ" role="1Hjf0d">
        <property role="1Hj7Pp" value="2" />
        <property role="1Hj7Pq" value="1" />
      </node>
    </node>
    <node concept="1vLJl6" id="212Cs3XqGN5" role="1vLJPo">
      <property role="1vLJIY" value="80" />
      <property role="1vLJIW" value="50" />
      <property role="1vLJIL" value="10" />
      <property role="1vLJIP" value="50" />
      <property role="1vLJIC" value="90" />
      <property role="TrG5h" value="Hous" />
    </node>
    <node concept="1vLJl6" id="212Cs3XqGSW" role="1vLJPo">
      <property role="1vLJIY" value="90" />
      <property role="1vLJIW" value="40" />
      <property role="1vLJIL" value="50" />
      <property role="1vLJIP" value="50" />
      <property role="1vLJIC" value="90" />
      <property role="TrG5h" value="Hospita" />
    </node>
    <node concept="1vLJl6" id="212Cs3XqGSZ" role="1vLJPo">
      <property role="1vLJIY" value="5" />
      <property role="1vLJIW" value="40" />
      <property role="1vLJIL" value="100" />
      <property role="1vLJIP" value="50" />
      <property role="1vLJIC" value="10" />
      <property role="TrG5h" value="Schoo" />
    </node>
    <node concept="1vLJl6" id="212Cs3XqGT3" role="1vLJPo">
      <property role="1vLJIY" value="10" />
      <property role="1vLJIW" value="60" />
      <property role="1vLJIL" value="90" />
      <property role="1vLJIP" value="70" />
      <property role="1vLJIC" value="20" />
      <property role="TrG5h" value="Offic" />
    </node>
    <node concept="1vLJl6" id="212Cs3XqH1W" role="1vLJPo">
      <property role="1vLJIY" value="90" />
      <property role="1vLJIW" value="20" />
      <property role="1vLJIL" value="10" />
      <property role="1vLJIP" value="40" />
      <property role="1vLJIC" value="80" />
      <property role="TrG5h" value="Stadiu" />
    </node>
    <node concept="3yd64n" id="212Cs3XqGN6" role="3yd3h7">
      <property role="3yd64o" value="0" />
      <property role="3yd3hR" value="300" />
      <property role="TrG5h" value="Farm1" />
      <property role="244Foq" value="SuperTran1" />
      <property role="2KFMDS" value="Auck" />
    </node>
    <node concept="3yd64n" id="212Cs3XqH2X" role="3yd3h7">
      <property role="3yd64o" value="0" />
      <property role="3yd3hR" value="500" />
      <property role="TrG5h" value="Farm2" />
      <property role="244Foq" value="SuperTran2" />
      <property role="2KFMDS" value="Ch" />
    </node>
    <node concept="3yd64n" id="212Cs3XqH30" role="3yd3h7">
      <property role="3yd64o" value="0" />
      <property role="3yd3hR" value="300" />
      <property role="TrG5h" value="Farm3" />
      <property role="244Foq" value="Tran1" />
      <property role="2KFMDS" value="Auck" />
    </node>
    <node concept="3yd64n" id="212Cs3XqH34" role="3yd3h7">
      <property role="3yd64o" value="0" />
      <property role="3yd3hR" value="200" />
      <property role="TrG5h" value="Farm4" />
      <property role="244Foq" value="Tran5" />
      <property role="2KFMDS" value="Auck" />
    </node>
    <node concept="3yd64n" id="212Cs3XqH39" role="3yd3h7">
      <property role="3yd64o" value="100" />
      <property role="3yd3hR" value="1000" />
      <property role="TrG5h" value="Dam1" />
      <property role="JvpKn" value="3" />
      <property role="244Foq" value="Tran3" />
      <property role="2KFMDS" value="Wel" />
    </node>
    <node concept="3yd64n" id="212Cs3XqH3f" role="3yd3h7">
      <property role="3yd64o" value="20" />
      <property role="3yd3hR" value="800" />
      <property role="TrG5h" value="Dam2" />
      <property role="JvpKn" value="3" />
      <property role="244Foq" value="SuperTran1" />
      <property role="2KFMDS" value="Auck" />
    </node>
    <node concept="3yd64n" id="3_mzng1yaoQ" role="3yd3h7">
      <property role="3yd64o" value="100" />
      <property role="3yd3hR" value="900" />
      <property role="TrG5h" value="Dam3" />
      <property role="JvpKn" value="3" />
      <property role="244Foq" value="Tran4" />
      <property role="2KFMDS" value="Auck" />
    </node>
    <node concept="3yd64n" id="212Cs3XqH3m" role="3yd3h7">
      <property role="3yd64o" value="0" />
      <property role="3yd3hR" value="1000" />
      <property role="TrG5h" value="Sol1" />
      <property role="JvpKn" value="2" />
      <property role="244Foq" value="Tran4" />
      <property role="2KFMDS" value="Ch" />
    </node>
    <node concept="3yd64n" id="212Cs3XqH3u" role="3yd3h7">
      <property role="3yd64o" value="0" />
      <property role="3yd3hR" value="800" />
      <property role="TrG5h" value="Sol2" />
      <property role="JvpKn" value="2" />
      <property role="244Foq" value="Tran2" />
      <property role="2KFMDS" value="Wel" />
    </node>
    <node concept="3yd64n" id="3_mzng1xIQI" role="3yd3h7">
      <property role="3yd64o" value="0" />
      <property role="3yd3hR" value="100" />
      <property role="TrG5h" value="Sol3" />
      <property role="JvpKn" value="2" />
      <property role="244Foq" value="Tran2" />
      <property role="2KFMDS" value="Auck" />
    </node>
    <node concept="3lM9jV" id="212Cs3XqGN7" role="3lMnhl">
      <property role="3lM9jS" value="300" />
      <property role="3lM9jN" value="98" />
      <property role="244Ey0" value="1" />
      <property role="TrG5h" value="Auckland" />
      <property role="245u9L" value="Tran1" />
      <property role="245u99" value="Tran2" />
    </node>
    <node concept="3lM9jV" id="212Cs3XqH2F" role="3lMnhl">
      <property role="3lM9jS" value="700" />
      <property role="3lM9jN" value="98" />
      <property role="244Ey0" value="1" />
      <property role="TrG5h" value="Wellington" />
      <property role="245u9L" value="SuperTran1" />
      <property role="245u99" value="SuperTran2" />
    </node>
    <node concept="3lM9jV" id="212Cs3XqH2I" role="3lMnhl">
      <property role="3lM9jS" value="300" />
      <property role="3lM9jN" value="98" />
      <property role="244Ey0" value="1" />
      <property role="TrG5h" value="Christchurch" />
      <property role="245u9L" value="Tran3" />
      <property role="245u99" value="Tran1" />
    </node>
    <node concept="3lM9jV" id="212Cs3XqH2M" role="3lMnhl">
      <property role="3lM9jS" value="400" />
      <property role="3lM9jN" value="98" />
      <property role="244Ey0" value="1" />
      <property role="TrG5h" value="Hamilton" />
      <property role="245u9L" value="Tran5" />
      <property role="245u99" value="Tran4" />
    </node>
    <node concept="3lM9jV" id="212Cs3XqH2R" role="3lMnhl">
      <property role="3lM9jS" value="800" />
      <property role="3lM9jN" value="98" />
      <property role="244Ey0" value="1" />
      <property role="TrG5h" value="Nelson" />
      <property role="245u9L" value="Tran3" />
      <property role="245u99" value="SuperTran1" />
    </node>
    <node concept="3lM9jV" id="3_mzng1xrbj" role="3lMnhl">
      <property role="3lM9jS" value="200" />
      <property role="3lM9jN" value="98" />
      <property role="244Ey0" value="1" />
      <property role="TrG5h" value="Other" />
      <property role="245u9L" value="Tran4" />
      <property role="245u99" value="SuperTran2" />
    </node>
    <node concept="2s6h$e" id="212Cs3XqGN8" role="2s6h$R">
      <property role="2s6h$4" value="200" />
      <property role="2s6h$S" value="98" />
      <property role="TrG5h" value="Tran1" />
    </node>
    <node concept="2s6h$e" id="212Cs3XqH22" role="2s6h$R">
      <property role="2s6h$4" value="300" />
      <property role="2s6h$S" value="95" />
      <property role="TrG5h" value="Tran2" />
    </node>
    <node concept="2s6h$e" id="212Cs3XqH25" role="2s6h$R">
      <property role="2s6h$4" value="150" />
      <property role="2s6h$S" value="99" />
      <property role="TrG5h" value="Tran3" />
    </node>
    <node concept="2s6h$e" id="212Cs3XqH2h" role="2s6h$R">
      <property role="2s6h$4" value="250" />
      <property role="2s6h$S" value="98" />
      <property role="TrG5h" value="Tran4" />
    </node>
    <node concept="2s6h$e" id="212Cs3XqH2m" role="2s6h$R">
      <property role="2s6h$4" value="400" />
      <property role="2s6h$S" value="98" />
      <property role="TrG5h" value="Tran5" />
    </node>
    <node concept="2s6h$e" id="212Cs3XqH2s" role="2s6h$R">
      <property role="2s6h$4" value="800" />
      <property role="2s6h$S" value="98" />
      <property role="TrG5h" value="SuperTran1" />
    </node>
    <node concept="2s6h$e" id="212Cs3XqH2z" role="2s6h$R">
      <property role="2s6h$4" value="900" />
      <property role="2s6h$S" value="98" />
      <property role="TrG5h" value="SuperTran2" />
    </node>
    <node concept="3VOWaR" id="212Cs3XqGN9" role="N8dmf">
      <property role="3VOWdS" value="100" />
      <property role="TrG5h" value="House1" />
      <property role="eq3CR" value="Tran1" />
      <property role="2KmOhT" value="Hous" />
    </node>
    <node concept="3VOWaR" id="212Cs3XqH3B" role="N8dmf">
      <property role="3VOWdS" value="100" />
      <property role="TrG5h" value="House2" />
      <property role="eq3CR" value="SuperTran1" />
      <property role="2KmOhT" value="Hous" />
    </node>
    <node concept="3VOWaR" id="212Cs3XqH3E" role="N8dmf">
      <property role="3VOWdS" value="100" />
      <property role="TrG5h" value="House3" />
      <property role="eq3CR" value="Tran3" />
      <property role="2KmOhT" value="Hous" />
    </node>
    <node concept="3VOWaR" id="212Cs3XqH3I" role="N8dmf">
      <property role="3VOWdS" value="100" />
      <property role="TrG5h" value="House4" />
      <property role="eq3CR" value="SuperTran1" />
      <property role="2KmOhT" value="Hous" />
    </node>
    <node concept="3VOWaR" id="212Cs3XqH3T" role="N8dmf">
      <property role="3VOWdS" value="100" />
      <property role="TrG5h" value="School2" />
      <property role="eq3CR" value="Tran2" />
      <property role="2KmOhT" value="Schoo" />
    </node>
    <node concept="3VOWaR" id="212Cs3XqH40" role="N8dmf">
      <property role="3VOWdS" value="100" />
      <property role="TrG5h" value="School3" />
      <property role="eq3CR" value="SuperTran2" />
      <property role="2KmOhT" value="Schoo" />
    </node>
    <node concept="3VOWaR" id="212Cs3XqH48" role="N8dmf">
      <property role="3VOWdS" value="100" />
      <property role="TrG5h" value="Stadium1" />
      <property role="eq3CR" value="SuperTran1" />
      <property role="2KmOhT" value="Stadiu" />
    </node>
    <node concept="3VOWaR" id="212Cs3XqH4r" role="N8dmf">
      <property role="3VOWdS" value="100" />
      <property role="TrG5h" value="Stadium3" />
      <property role="eq3CR" value="Tran4" />
      <property role="2KmOhT" value="Stadiu" />
    </node>
    <node concept="3VOWaR" id="212Cs3XqH4A" role="N8dmf">
      <property role="3VOWdS" value="100" />
      <property role="TrG5h" value="Stadium4" />
      <property role="eq3CR" value="Tran2" />
      <property role="2KmOhT" value="Stadiu" />
    </node>
    <node concept="3VOWaR" id="212Cs3XqH4M" role="N8dmf">
      <property role="3VOWdS" value="100" />
      <property role="TrG5h" value="Stadium5" />
      <property role="eq3CR" value="Tran5" />
      <property role="2KmOhT" value="Stadiu" />
    </node>
    <node concept="3VOWaR" id="212Cs3XqH4Z" role="N8dmf">
      <property role="3VOWdS" value="100" />
      <property role="TrG5h" value="Hospital1" />
      <property role="eq3CR" value="Tran3" />
      <property role="2KmOhT" value="Hospita" />
    </node>
  </node>
</model>

