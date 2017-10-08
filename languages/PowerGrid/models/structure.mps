<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2a8ae552-038d-4f4d-a413-89014cd6b087(PowerGrid.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="ykoa" ref="06938a7a-d23b-45e2-95a4-0d0c6d8a569c/java:nz.ac.victoria.swen424.weather(ExternalCode/)" />
    <import index="4fqr" ref="r:fa713d69-08ea-4732-b1f2-cb07f9e103ef(jetbrains.mps.execution.util.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" flags="ng" index="AxPO7">
        <property id="1197591154882" name="memberIdentifierPolicy" index="3lZH7k" />
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
    <node concept="1TJgyj" id="6gi3O$9nB8n" role="1TKVEi">
      <property role="IQ2ns" value="7210842759737799191" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="Weather" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="6gi3O$9nB7M" resolve="WeatherList" />
    </node>
    <node concept="1TJgyj" id="4qWwfGpuBQz" role="1TKVEi">
      <property role="IQ2ns" value="5097090694229163427" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="UsageProfiles" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="4qWwfGpuBmX" resolve="UsageProfile" />
    </node>
    <node concept="PrWs8" id="3pcEwkEWqD3" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="4qR36Xfwkrq" role="PzmwI">
      <ref role="PrY4T" to="4fqr:431DWIovi3l" resolve="IMainClass" />
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
    <node concept="1TJgyj" id="3nJJ606NQBJ" role="1TKVEi">
      <property role="IQ2ns" value="3886532124061166063" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="Consumers" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="50o97QFMYra" resolve="Consumer" />
    </node>
    <node concept="1TJgyi" id="3X184CBgxCW" role="1TKVEl">
      <property role="IQ2nx" value="4557959800733964860" />
      <property role="TrG5h" value="SimulationInterval" />
      <ref role="AX2Wp" node="3X184CBgw1_" resolve="SimulationInterval" />
    </node>
    <node concept="1TJgyi" id="3X184CBhSHk" role="1TKVEl">
      <property role="IQ2nx" value="4557959800734321492" />
      <property role="TrG5h" value="SimulationSteps" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="24XvQ732hTQ">
    <property role="EcuMT" value="2395210634691681910" />
    <property role="TrG5h" value="Producer" />
    <property role="34LRSv" value="Power Plant" />
    <property role="R4oN_" value="Produces energy" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4DN6WPtj6wQ" role="1TKVEi">
      <property role="IQ2ns" value="5364662149975926838" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="ConnectedTransformer" />
      <ref role="20lvS9" node="7rDXPBEWeTn" resolve="Transformer" />
    </node>
    <node concept="1TJgyj" id="6gi3O$9ozQy" role="1TKVEi">
      <property role="IQ2ns" value="7210842759738047906" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="Weather" />
      <ref role="20lvS9" node="6gi3O$9nB7M" resolve="WeatherList" />
    </node>
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
    <node concept="1TJgyi" id="7Erv4TlTI1p" role="1TKVEl">
      <property role="IQ2nx" value="8834791769907847257" />
      <property role="TrG5h" value="ProductionMethode" />
      <ref role="AX2Wp" node="7Erv4TlTGP0" resolve="ProductionMethodeType" />
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
    <node concept="1TJgyi" id="68AEjYhWzJ1" role="1TKVEl">
      <property role="IQ2nx" value="7072526355328547777" />
      <property role="TrG5h" value="percentusage" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="68AEjYhWzJ6" role="1TKVEl">
      <property role="IQ2nx" value="7072526355328547782" />
      <property role="TrG5h" value="voltage" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="68AEjYhWzJc" role="1TKVEl">
      <property role="IQ2nx" value="7072526355328547788" />
      <property role="TrG5h" value="sector" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="4NGxdIp910C" role="1TKVEl">
      <property role="IQ2nx" value="5542951320088219688" />
      <property role="TrG5h" value="efficiency" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="5tZXSE_u3$_" role="1TKVEl">
      <property role="IQ2nx" value="6305030178195650853" />
      <property role="TrG5h" value="probabilityOfFailure" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="4NGxdIp910R" role="1TKVEi">
      <property role="IQ2ns" value="5542951320088219703" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="ConnectedTransformer1" />
      <ref role="20lvS9" node="7rDXPBEWeTn" resolve="Transformer" />
    </node>
    <node concept="1TJgyj" id="59sIV4z5KwT" role="1TKVEi">
      <property role="IQ2ns" value="5934824778439788601" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="ConnectedTransformer2" />
      <ref role="20lvS9" node="7rDXPBEWeTn" resolve="Transformer" />
    </node>
  </node>
  <node concept="1TIwiD" id="6gi3O$9nB7N">
    <property role="EcuMT" value="7210842759737799155" />
    <property role="TrG5h" value="Weather" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6gi3O$9nB8g" role="1TKVEl">
      <property role="IQ2nx" value="7210842759737799184" />
      <property role="TrG5h" value="Type" />
      <ref role="AX2Wp" node="6gi3O$9nB7P" resolve="WeatherTypeEnum" />
    </node>
    <node concept="1TJgyi" id="6gi3O$9nB8j" role="1TKVEl">
      <property role="IQ2nx" value="7210842759737799187" />
      <property role="TrG5h" value="Wind" />
      <ref role="AX2Wp" node="6gi3O$9nOml" resolve="WindSpeedEnum" />
    </node>
  </node>
  <node concept="AxPO7" id="6gi3O$9nB7P">
    <property role="TrG5h" value="WeatherTypeEnum" />
    <ref role="M4eZT" to="tpck:fKAQMTA" resolve="integer" />
    <node concept="M4N5e" id="6gi3O$9nB7R" role="M5hS2">
      <property role="1uS6qo" value="Clear Sky" />
      <property role="1uS6qv" value="1" />
    </node>
    <node concept="M4N5e" id="6gi3O$9nB86" role="M5hS2">
      <property role="1uS6qo" value="Overcast" />
      <property role="1uS6qv" value="2" />
    </node>
    <node concept="M4N5e" id="6gi3O$9nB7U" role="M5hS2">
      <property role="1uS6qo" value="Rain" />
      <property role="1uS6qv" value="3" />
    </node>
  </node>
  <node concept="1TIwiD" id="6gi3O$9nB7M">
    <property role="EcuMT" value="7210842759737799154" />
    <property role="TrG5h" value="WeatherList" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6gi3O$9nJX4" role="1TKVEi">
      <property role="IQ2ns" value="7210842759737835332" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="Weather" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="6gi3O$9nB7N" resolve="Weather" />
    </node>
    <node concept="PrWs8" id="6gi3O$9nJX6" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="6gi3O$9nJX8" role="1TKVEl">
      <property role="IQ2nx" value="7210842759737835336" />
      <property role="TrG5h" value="IsRandom" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="AxPO7" id="6gi3O$9nOml">
    <property role="TrG5h" value="WindSpeedEnum" />
    <ref role="M4eZT" to="tpck:fKAQMTA" resolve="integer" />
    <node concept="M4N5e" id="6gi3O$9nOmm" role="M5hS2">
      <property role="1uS6qo" value="Flat" />
      <property role="1uS6qv" value="0" />
    </node>
    <node concept="M4N5e" id="6gi3O$9nOmn" role="M5hS2">
      <property role="1uS6qo" value="LightAir" />
      <property role="1uS6qv" value="1" />
    </node>
    <node concept="M4N5e" id="6gi3O$9nOmq" role="M5hS2">
      <property role="1uS6qo" value="LightBreeze" />
      <property role="1uS6qv" value="2" />
    </node>
    <node concept="M4N5e" id="6gi3O$9nOmu" role="M5hS2">
      <property role="1uS6qo" value="GentleBreeze" />
      <property role="1uS6qv" value="3" />
    </node>
    <node concept="M4N5e" id="6gi3O$9nOmz" role="M5hS2">
      <property role="1uS6qo" value="ModerateBreeze" />
      <property role="1uS6qv" value="4" />
    </node>
    <node concept="M4N5e" id="6gi3O$9nOmD" role="M5hS2">
      <property role="1uS6qo" value="FreshBreeze" />
      <property role="1uS6qv" value="5" />
    </node>
    <node concept="M4N5e" id="6gi3O$9nOmK" role="M5hS2">
      <property role="1uS6qo" value="StrongBreeze" />
      <property role="1uS6qv" value="6" />
    </node>
    <node concept="M4N5e" id="6gi3O$9nOmS" role="M5hS2">
      <property role="1uS6qo" value="ModerateGale" />
      <property role="1uS6qv" value="7" />
    </node>
    <node concept="M4N5e" id="6gi3O$9nOn1" role="M5hS2">
      <property role="1uS6qo" value="FrshGale" />
      <property role="1uS6qv" value="8" />
    </node>
    <node concept="M4N5e" id="6gi3O$9nOnb" role="M5hS2">
      <property role="1uS6qo" value="StrongGale" />
      <property role="1uS6qv" value="9" />
    </node>
    <node concept="M4N5e" id="6gi3O$9nOnm" role="M5hS2">
      <property role="1uS6qo" value="Storm" />
      <property role="1uS6qv" value="10" />
    </node>
    <node concept="M4N5e" id="6gi3O$9nOny" role="M5hS2">
      <property role="1uS6qo" value="ViolentStorm" />
      <property role="1uS6qv" value="11" />
    </node>
    <node concept="M4N5e" id="6gi3O$9nOnJ" role="M5hS2">
      <property role="1uS6qo" value="HurricaneForce" />
      <property role="1uS6qv" value="12" />
    </node>
  </node>
  <node concept="1TIwiD" id="50o97QFMYra">
    <property role="EcuMT" value="5771403044647069386" />
    <property role="TrG5h" value="Consumer" />
    <property role="34LRSv" value="House, Factory, Office Building, Store" />
    <property role="R4oN_" value="Consumes energy" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="50o97QFMYrX" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="50o97QFMYs5" role="1TKVEl">
      <property role="IQ2nx" value="5771403044647069445" />
      <property role="TrG5h" value="MaxConsumption" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="1G90Zx2lQbC" role="1TKVEi">
      <property role="IQ2ns" value="1948092678614246120" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="ConnectedTransformer" />
      <ref role="20lvS9" node="7rDXPBEWeTn" resolve="Transformer" />
    </node>
    <node concept="1TJgyj" id="4qWwfGpuBLN" role="1TKVEi">
      <property role="IQ2ns" value="5097090694229163123" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="UsageProfile" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4qWwfGpuBmX" resolve="UsageProfile" />
    </node>
  </node>
  <node concept="AxPO7" id="7Erv4TlTGP0">
    <property role="TrG5h" value="ProductionMethodeType" />
    <property role="3lZH7k" value="derive_from_internal_value" />
    <ref role="M4eZT" to="tpck:fKAQMTA" resolve="integer" />
    <node concept="M4N5e" id="7Erv4TlTGP1" role="M5hS2">
      <property role="1uS6qv" value="1" />
      <property role="1uS6qo" value="Wind" />
    </node>
    <node concept="M4N5e" id="7Erv4TlTGP2" role="M5hS2">
      <property role="1uS6qo" value="Solar" />
      <property role="1uS6qv" value="2" />
    </node>
    <node concept="M4N5e" id="7Erv4TlTGP5" role="M5hS2">
      <property role="1uS6qo" value="Conventinal" />
      <property role="1uS6qv" value="3" />
    </node>
  </node>
  <node concept="1TIwiD" id="4qWwfGpuBmX">
    <property role="EcuMT" value="5097090694229161405" />
    <property role="TrG5h" value="UsageProfile" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4qWwfGpuBro" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="4qWwfGpuBH5" role="1TKVEl">
      <property role="IQ2nx" value="5097090694229162821" />
      <property role="TrG5h" value="Night" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4qWwfGpuBH7" role="1TKVEl">
      <property role="IQ2nx" value="5097090694229162823" />
      <property role="TrG5h" value="Morning" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4qWwfGpuBHa" role="1TKVEl">
      <property role="IQ2nx" value="5097090694229162826" />
      <property role="TrG5h" value="Midday" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4qWwfGpuBHe" role="1TKVEl">
      <property role="IQ2nx" value="5097090694229162830" />
      <property role="TrG5h" value="Afternoon" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4qWwfGpuBHj" role="1TKVEl">
      <property role="IQ2nx" value="5097090694229162835" />
      <property role="TrG5h" value="Evening" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4qWwfGpuBLQ" role="1TKVEl">
      <property role="IQ2nx" value="5097090694229163126" />
      <property role="TrG5h" value="IsRandom" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="AxPO7" id="3X184CBgw1_">
    <property role="TrG5h" value="SimulationInterval" />
    <ref role="M4eZT" to="tpck:fKAQMTA" resolve="integer" />
    <node concept="M4N5e" id="3X184CBgw1A" role="M5hS2">
      <property role="1uS6qo" value="1 hour" />
      <property role="1uS6qv" value="1" />
    </node>
    <node concept="M4N5e" id="3X184CBgw6f" role="M5hS2">
      <property role="1uS6qo" value="2 hours" />
      <property role="1uS6qv" value="2" />
    </node>
    <node concept="M4N5e" id="3X184CBgQgl" role="M5hS2">
      <property role="1uS6qo" value="3 hours" />
      <property role="1uS6qv" value="3" />
    </node>
    <node concept="M4N5e" id="3X184CBgw6i" role="M5hS2">
      <property role="1uS6qo" value="4 hours" />
      <property role="1uS6qv" value="4" />
    </node>
    <node concept="M4N5e" id="3X184CBgw6m" role="M5hS2">
      <property role="1uS6qo" value="6 hours" />
      <property role="1uS6qv" value="6" />
    </node>
    <node concept="M4N5e" id="3X184CBgw6r" role="M5hS2">
      <property role="1uS6qo" value="8 hours" />
      <property role="1uS6qv" value="8" />
    </node>
  </node>
</model>

