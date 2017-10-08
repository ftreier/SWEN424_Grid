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
        <property id="8568651731614887526" name="Usage" index="2s6h$Z" />
      </concept>
      <concept id="3912689115450157634" name="PowerGrid.structure.PowerGridSimulator" flags="ng" index="sJg17">
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
        <property id="7841080990075074533" name="WeatherName" index="2KFMDS" />
        <property id="2395210634691693334" name="MaxProduction" index="3yd3hR" />
        <property id="2395210634691681913" name="MinProduction" index="3yd64o" />
        <reference id="7210842759738047906" name="Weather" index="1Hs3bF" />
      </concept>
      <concept id="7210842759737799155" name="PowerGrid.structure.Weather" flags="ng" index="1Hj7UU">
        <property id="7210842759737799187" name="Wind" index="1Hj7Pq" />
      </concept>
      <concept id="7210842759737799154" name="PowerGrid.structure.WeatherList" flags="ng" index="1Hj7UV">
        <child id="7210842759737835332" name="Weather" index="1Hjf0d" />
      </concept>
      <concept id="5771403044647069386" name="PowerGrid.structure.Consumer" flags="ng" index="3VOWaR">
        <property id="5097016817291102205" name="TransName" index="eq3CR" />
        <property id="7841080990075869668" name="UsageName" index="2KmOhT" />
        <property id="5771403044647069445" name="MaxConsumption" index="3VOWdS" />
        <reference id="5758246778675381904" name="UsageProfile" index="244E1Z" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="sJg17" id="4ZDpIZc4bMv">
    <property role="TrG5h" value="tester" />
    <property role="o1EGu" value="12" />
    <node concept="1Hj7UV" id="4ZDpIZc4bMw" role="1Hj7Pu">
      <property role="TrG5h" value="Auckland" />
      <node concept="1Hj7UU" id="3X184CBkGGy" role="1Hjf0d">
        <property role="1Hj7Pq" value="7" />
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
    <node concept="3yd64n" id="4ZDpIZc4bMz" role="3yd3h7">
      <property role="3yd64o" value="0" />
      <property role="3yd3hR" value="1000" />
      <property role="TrG5h" value="Dam" />
      <property role="244Foq" value="Tran" />
      <property role="2KFMDS" value="Auckland" />
      <ref role="1Hs3bF" node="4ZDpIZc4bMw" resolve="Auckland" />
    </node>
    <node concept="3lM9jV" id="4ZDpIZc4bM$" role="3lMnhl">
      <property role="3lM9jS" value="200" />
      <property role="3lM9jN" value="100" />
      <property role="244Ey0" value="0" />
      <property role="TrG5h" value="Auck" />
      <property role="245u9L" value="Tran" />
      <property role="245u99" value="Tran2" />
    </node>
    <node concept="2s6h$e" id="4ZDpIZc4bM_" role="2s6h$R">
      <property role="2s6h$4" value="200" />
      <property role="2s6h$S" value="99" />
      <property role="2s6h$Z" value="0" />
      <property role="TrG5h" value="Tran" />
    </node>
    <node concept="2s6h$e" id="4ZDpIZc4bMB" role="2s6h$R">
      <property role="2s6h$4" value="200" />
      <property role="2s6h$S" value="99" />
      <property role="2s6h$Z" value="0" />
      <property role="TrG5h" value="Tran2" />
    </node>
    <node concept="3VOWaR" id="4ZDpIZc4bMA" role="N8dmf">
      <property role="3VOWdS" value="1000" />
      <property role="TrG5h" value="House" />
      <property role="eq3CR" value="Tran" />
      <property role="2KmOhT" value="yester" />
      <ref role="244E1Z" node="4ZDpIZc4bMy" resolve="yester" />
    </node>
  </node>
</model>

