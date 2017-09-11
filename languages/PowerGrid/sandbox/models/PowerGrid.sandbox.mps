<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3d5930c0-b584-4003-9a9d-a2422b4f3168(PowerGrid.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="d2a07bb2-09cf-48ad-a97b-660a7f0f2205" name="PowerGrid" version="-1" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
  </languages>
  <imports />
  <registry>
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
        <child id="2395210634691693350" name="Producers" index="3yd3h7" />
      </concept>
      <concept id="2395210634691681910" name="PowerGrid.structure.Producer" flags="ng" index="3yd64n">
        <property id="2395210634691693334" name="MaxProduction" index="3yd3hR" />
        <property id="2395210634691681913" name="MinProduction" index="3yd64o" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="sJg17" id="24XvQ732$Xy">
    <property role="TrG5h" value="test" />
    <node concept="2s6h$e" id="Kb51drn_ru" role="2s6h$R">
      <property role="TrG5h" value="asdf" />
      <property role="2s6h$1" value="1" />
      <property role="2s6h$3" value="2" />
      <property role="2s6h$4" value="10" />
      <property role="2s6h$S" value="1" />
      <property role="2s6h$Z" value="100" />
    </node>
    <node concept="3yd64n" id="6Lad368Qvwr" role="3yd3h7">
      <property role="TrG5h" value="Windmill 1" />
      <property role="3yd3hR" value="20" />
      <property role="3yd64o" value="10" />
    </node>
    <node concept="3yd64n" id="6Lad368UtBS" role="3yd3h7">
      <property role="3yd3hR" value="100" />
      <property role="3yd64o" value="10" />
      <property role="TrG5h" value="Test" />
    </node>
    <node concept="3yd64n" id="1frgxxItnxc" role="3yd3h7">
      <property role="TrG5h" value="asdf" />
      <property role="3yd3hR" value="40" />
      <property role="3yd64o" value="10" />
    </node>
  </node>
</model>

