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
    <language id="00000000-0000-0000-0000-000000000000" name="">
      <concept id="0" name="" flags="ng" index="00000">
        <property id="0" name="" index="00000" />
      </concept>
    </language>
    <language id="d2a07bb2-09cf-48ad-a97b-660a7f0f2205" name="PowerGrid">
      <concept id="8568651731614887511" name="PowerGrid.structure.Transformer" flags="ng" index="2s6h$e">
        <property id="8568651731614887512" name="LeftNetLevel" index="2s6h$1" />
        <property id="8568651731614887514" name="RightNetLevel" index="2s6h$3" />
        <property id="8568651731614887517" name="MaxCapacity" index="2s6h$4" />
        <property id="8568651731614887521" name="Efficiency" index="2s6h$S" />
        <property id="8568651731614887526" name="Usage" index="2s6h$Z" />
      </concept>
      <concept id="3912689115450157634" name="PowerGrid.structure.PowerGridSimulator" flags="ng" index="sJg17">
        <child id="8568651731614887534" name="Transformers" index="2s6h$R" />
        <child id="3886532124061166063" name="Consumers" index="N8dmf" />
        <child id="5542951320088342670" name="Grids" index="3lMnhl" />
        <child id="2395210634691693350" name="Producers" index="3yd3h7" />
        <child id="7210842759737799191" name="Weather" index="1Hj7Pu" />
      </concept>
      <concept id="5542951320088219680" name="PowerGrid.structure.PowerGrid" flags="ng" index="3lM9jV">
        <property id="5758246778675430566" name="ConnectTransName2" index="245u99" />
        <property id="5758246778675430558" name="ConnectTransName1" index="245u9L" />
        <property id="5542951320088219697" name="sector" index="3lM9jE" />
        <property id="5542951320088219688" name="efficiency" index="3lM9jN" />
        <property id="5542951320088219692" name="voltage" index="3lM9jR" />
        <property id="5542951320088219683" name="maxCapacity" index="3lM9jS" />
        <property id="5542951320088219685" name="percentusage" index="3lM9jY" />
      </concept>
      <concept id="2395210634691681910" name="PowerGrid.structure.Producer" flags="ng" index="3yd64n">
        <property id="5758246778675384565" name="TransName" index="244Foq" />
        <property id="2395210634691693334" name="MaxProduction" index="3yd3hR" />
        <property id="2395210634691681913" name="MinProduction" index="3yd64o" />
      </concept>
      <concept id="7210842759737799155" name="PowerGrid.structure.Weather" flags="ng" index="1Hj7UU">
        <property id="7210842759737799182" name="day" index="1Hj7P7" />
      </concept>
      <concept id="7210842759737799154" name="PowerGrid.structure.WeatherList" flags="ng" index="1Hj7UV">
        <child id="7210842759737835332" name="Weather" index="1Hjf0d" />
      </concept>
      <concept id="5771403044647069386" name="PowerGrid.structure.Consumer" flags="ng" index="3VOWaR">
        <property id="5097016817291102205" name="TransName" index="eq3CR" />
        <property id="5771403044647069445" name="MaxConsumption" index="3VOWdS" />
        <property id="5771403044647069443" name="MinConsumption" index="3VOWdY" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1156235010670" name="alias" index="OYydz" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="sJg17" id="4MYZAN8q2md">
    <property role="TrG5h" value="asdf" />
    <node concept="1Hj7UV" id="4MYZAN8q2me" role="1Hj7Pu">
      <property role="TrG5h" value="asdf" />
      <node concept="1Hj7UU" id="4MYZAN8q2mf" role="1Hjf0d">
        <property role="1Hj7P7" value="1" />
      </node>
    </node>
    <node concept="3yd64n" id="4MYZAN8q2mg" role="3yd3h7">
      <property role="TrG5h" value="asdf" />
      <property role="3yd3hR" value="2" />
      <property role="3yd64o" value="1" />
      <property role="244Foq" value="asdf" />
    </node>
    <node concept="3lM9jV" id="4MYZAN8q2mh" role="3lMnhl">
      <property role="3lM9jS" value="200" />
      <property role="3lM9jY" value="0" />
      <property role="3lM9jR" value="1" />
      <property role="3lM9jN" value="100" />
      <property role="3lM9jE" value="Unassigned" />
      <property role="TrG5h" value="asd" />
      <property role="00000" value="asdf" />
      <property role="245u9L" value="asdf" />
      <property role="245u99" value="asdf" />
    </node>
    <node concept="2s6h$e" id="4MYZAN8q2mi" role="2s6h$R">
      <property role="2s6h$1" value="4" />
      <property role="2s6h$3" value="3" />
      <property role="2s6h$S" value="100" />
      <property role="2s6h$Z" value="0" />
      <property role="TrG5h" value="asdf" />
      <property role="2s6h$4" value="100" />
    </node>
    <node concept="3VOWaR" id="4MYZAN8q2mj" role="N8dmf">
      <property role="TrG5h" value="asdf" />
      <property role="OYydz" value="adf" />
      <property role="3VOWdS" value="10" />
      <property role="3VOWdY" value="10" />
      <property role="eq3CR" value="asdf" />
    </node>
  </node>
</model>

