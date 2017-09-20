<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2a8ae552-038d-4f4d-a413-89014cd6b087(PowerGrid.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" flags="ng" index="AxPO7">
        <reference id="1083171729157" name="memberDataType" index="M4eZT" />
        <child id="1083172003582" name="member" index="M5hS2" />
      </concept>
      <concept id="1083171877298" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ig" index="M4N5e">
        <property id="1083923523172" name="externalValue" index="1uS6qo" />
        <property id="1083923523171" name="internalValue" index="1uS6qv" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="3pcEwkEWqD2">
    <property role="EcuMT" value="3912689115450157634" />
    <property role="TrG5h" value="PowerGridSimulator" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Power Grid Simulator" />
    <property role="R4oN_" value="The root concept for our Power Grid Simulator" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3pcEwkEWqD3" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="24XvQ732kGA" role="1TKVEi">
      <property role="IQ2ns" value="2395210634691693350" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="Producers" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="24XvQ732hTQ" resolve="Producer" />
    </node>
    <node concept="1TJgyj" id="4NGxdIp9v2e" role="1TKVEi">
      <property role="IQ2ns" value="5542951320088342670" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="Grids" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="4NGxdIp910w" resolve="PowerGrid" />
    </node>
    <node concept="1TJgyj" id="7rDXPBEWeTI" role="1TKVEi">
      <property role="IQ2ns" value="8568651731614887534" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="Transformers" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="7rDXPBEWeTn" resolve="Transformer" />
    </node>
  </node>
  <node concept="1TIwiD" id="24XvQ732hTQ">
    <property role="EcuMT" value="2395210634691681910" />
    <property role="TrG5h" value="Producer" />
    <property role="34LRSv" value="Power Plant" />
    <property role="R4oN_" value="Produces energy" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="24XvQ732hTR" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="24XvQ732hTT" role="1TKVEl">
      <property role="IQ2nx" value="2395210634691681913" />
      <property role="TrG5h" value="MinProduction" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="24XvQ732kGm" role="1TKVEl">
      <property role="IQ2nx" value="2395210634691693334" />
      <property role="TrG5h" value="MaxProduction" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="AxPO7" id="6Lad368Q94p">
    <property role="TrG5h" value="EnergyUnitEnum" />
    <ref role="M4eZT" to="tpck:fKAQMTA" resolve="integer" />
    <node concept="M4N5e" id="6Lad368Q94r" role="M5hS2">
      <property role="1uS6qv" value="1" />
      <property role="1uS6qo" value="Wh" />
    </node>
    <node concept="M4N5e" id="6Lad368Q94q" role="M5hS2">
      <property role="1uS6qv" value="2" />
      <property role="1uS6qo" value="kWh" />
    </node>
    <node concept="M4N5e" id="6Lad368Q94w" role="M5hS2">
      <property role="1uS6qo" value="MWh" />
      <property role="1uS6qv" value="3" />
    </node>
    <node concept="M4N5e" id="6Lad368Q94B" role="M5hS2">
      <property role="1uS6qo" value="GWh" />
      <property role="1uS6qv" value="4" />
    </node>
  </node>
  <node concept="1TIwiD" id="7rDXPBEWeTn">
    <property role="EcuMT" value="8568651731614887511" />
    <property role="TrG5h" value="Transformer" />
    <property role="34LRSv" value="Potiential Transformer" />
    <property role="R4oN_" value="Step Transmission Voltages" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="7rDXPBEWeTo" role="1TKVEl">
      <property role="IQ2nx" value="8568651731614887512" />
      <property role="TrG5h" value="LeftNetLevel" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="7rDXPBEWeTq" role="1TKVEl">
      <property role="IQ2nx" value="8568651731614887514" />
      <property role="TrG5h" value="RightNetLevel" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="7rDXPBEWeTt" role="1TKVEl">
      <property role="IQ2nx" value="8568651731614887517" />
      <property role="TrG5h" value="MaxCapacity" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="7rDXPBEWeTx" role="1TKVEl">
      <property role="IQ2nx" value="8568651731614887521" />
      <property role="TrG5h" value="Efficiency" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="7rDXPBEWeTA" role="1TKVEl">
      <property role="IQ2nx" value="8568651731614887526" />
      <property role="TrG5h" value="Usage" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="PrWs8" id="7rDXPBEWeTG" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="1e8K_y$VLBt" role="1TKVEi">
      <property role="IQ2ns" value="1407588569533323741" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="LeftConnection" />
      <ref role="20lvS9" node="4NGxdIp910w" resolve="PowerGrid" />
    </node>
    <node concept="1TJgyj" id="1e8K_y$VLBv" role="1TKVEi">
      <property role="IQ2ns" value="1407588569533323743" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="RightConnection" />
      <ref role="20lvS9" node="4NGxdIp910w" resolve="PowerGrid" />
    </node>
  </node>
  <node concept="1TIwiD" id="4NGxdIp910w">
    <property role="EcuMT" value="5542951320088219680" />
    <property role="TrG5h" value="PowerGrid" />
    <property role="34LRSv" value="Power Grid" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4NGxdIp910x" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="4NGxdIp910z" role="1TKVEl">
      <property role="IQ2nx" value="5542951320088219683" />
      <property role="TrG5h" value="maxCapacity" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4NGxdIp910_" role="1TKVEl">
      <property role="IQ2nx" value="5542951320088219685" />
      <property role="TrG5h" value="percentusage" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4NGxdIp910C" role="1TKVEl">
      <property role="IQ2nx" value="5542951320088219688" />
      <property role="TrG5h" value="efficiency" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4NGxdIp910G" role="1TKVEl">
      <property role="IQ2nx" value="5542951320088219692" />
      <property role="TrG5h" value="voltage" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4NGxdIp910L" role="1TKVEl">
      <property role="IQ2nx" value="5542951320088219697" />
      <property role="TrG5h" value="sector" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="4NGxdIp910R" role="1TKVEi">
      <property role="IQ2ns" value="5542951320088219703" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="ConnectedTransformer" />
      <ref role="20lvS9" node="7rDXPBEWeTn" resolve="Transformer" />
    </node>
  </node>
</model>

