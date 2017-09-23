<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b4263613-04e2-445e-bee6-d68be65f39c8(PowerGrid.Runtime.Utils)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="-1" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4NGxdIp8Pdc">
    <property role="TrG5h" value="ElGrid" />
    <node concept="312cEg" id="4NGxdIp8Peb" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="_maxCapacity" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4NGxdIp8PdS" role="1B3o_S" />
      <node concept="3uibUv" id="4NGxdIp8Pe3" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
      </node>
    </node>
    <node concept="312cEg" id="4NGxdIp8PeV" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="_percentUsage" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4NGxdIp8Pe$" role="1B3o_S" />
      <node concept="3uibUv" id="4NGxdIp8PeM" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
      </node>
    </node>
    <node concept="312cEg" id="4NGxdIp8PfQ" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="_efficiency" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4NGxdIp8Pfr" role="1B3o_S" />
      <node concept="3uibUv" id="4NGxdIp8PfG" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
      </node>
    </node>
    <node concept="312cEg" id="4NGxdIp8PgW" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="_voltage" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4NGxdIp8Pgt" role="1B3o_S" />
      <node concept="3uibUv" id="4NGxdIp8PgL" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
      </node>
    </node>
    <node concept="312cEg" id="4NGxdIp8Pid" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="_sector" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4NGxdIp8PhE" role="1B3o_S" />
      <node concept="3uibUv" id="4NGxdIp8Pi1" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="3clFbW" id="4NGxdIp8PjN" role="jymVt">
      <node concept="3cqZAl" id="4NGxdIp8PjO" role="3clF45" />
      <node concept="3clFbS" id="4NGxdIp8PjQ" role="3clF47">
        <node concept="3clFbF" id="4NGxdIp8PpY" role="3cqZAp">
          <node concept="37vLTI" id="4NGxdIp8P_O" role="3clFbG">
            <node concept="37vLTw" id="4NGxdIp8PLN" role="37vLTx">
              <ref role="3cqZAo" node="4NGxdIp8Pk_" resolve="maxCapacity" />
            </node>
            <node concept="37vLTw" id="4NGxdIp8PpX" role="37vLTJ">
              <ref role="3cqZAo" node="4NGxdIp8Peb" resolve="_maxCapacity" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4NGxdIp8PSG" role="3cqZAp">
          <node concept="37vLTI" id="4NGxdIp8Qdi" role="3clFbG">
            <node concept="37vLTw" id="4NGxdIp8Qph" role="37vLTx">
              <ref role="3cqZAo" node="4NGxdIp8PlC" resolve="percentUsage" />
            </node>
            <node concept="37vLTw" id="4NGxdIp8PSE" role="37vLTJ">
              <ref role="3cqZAo" node="4NGxdIp8PeV" resolve="_percentUsage" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4NGxdIp8Qwt" role="3cqZAp">
          <node concept="37vLTI" id="4NGxdIp8QGY" role="3clFbG">
            <node concept="37vLTw" id="4NGxdIp8QSX" role="37vLTx">
              <ref role="3cqZAo" node="4NGxdIp8Pms" resolve="efficieny" />
            </node>
            <node concept="37vLTw" id="4NGxdIp8Qwr" role="37vLTJ">
              <ref role="3cqZAo" node="4NGxdIp8PfQ" resolve="_efficiency" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4NGxdIp8R0s" role="3cqZAp">
          <node concept="37vLTI" id="4NGxdIp8RlC" role="3clFbG">
            <node concept="37vLTw" id="4NGxdIp8RxB" role="37vLTx">
              <ref role="3cqZAo" node="4NGxdIp8Pns" resolve="voltage" />
            </node>
            <node concept="37vLTw" id="4NGxdIp8R0q" role="37vLTJ">
              <ref role="3cqZAo" node="4NGxdIp8PgW" resolve="_voltage" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4NGxdIp8RDp" role="3cqZAp">
          <node concept="37vLTI" id="4NGxdIp8RQW" role="3clFbG">
            <node concept="37vLTw" id="4NGxdIp8RW_" role="37vLTx">
              <ref role="3cqZAo" node="4NGxdIp8Poa" resolve="sector" />
            </node>
            <node concept="37vLTw" id="4NGxdIp8RDn" role="37vLTJ">
              <ref role="3cqZAo" node="4NGxdIp8Pid" resolve="_sector" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4NGxdIp8Pjf" role="1B3o_S" />
      <node concept="37vLTG" id="4NGxdIp8Pk_" role="3clF46">
        <property role="TrG5h" value="maxCapacity" />
        <node concept="10Oyi0" id="4NGxdIp8Pk$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4NGxdIp8PlC" role="3clF46">
        <property role="TrG5h" value="percentUsage" />
        <node concept="10Oyi0" id="4NGxdIp8PlV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4NGxdIp8Pms" role="3clF46">
        <property role="TrG5h" value="efficieny" />
        <node concept="10Oyi0" id="4NGxdIp8PmL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4NGxdIp8Pns" role="3clF46">
        <property role="TrG5h" value="voltage" />
        <node concept="10Oyi0" id="4NGxdIp8PnN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4NGxdIp8Poa" role="3clF46">
        <property role="TrG5h" value="sector" />
        <node concept="3uibUv" id="4NGxdIp8PoK" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4NGxdIp8Pdd" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="50o97QFMYjg">
    <property role="TrG5h" value="ElConsumer" />
    <node concept="312cEg" id="50o97QFMYuc" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="_name" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="50o97QFMYtK" role="1B3o_S" />
      <node concept="17QB3L" id="50o97QFMYtV" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="50o97QFMYv3" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="_minConsumption" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="50o97QFMYu$" role="1B3o_S" />
      <node concept="10Oyi0" id="50o97QFMYuW" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="50o97QFMYw7" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="_maxConsumption" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="50o97QFMYvJ" role="1B3o_S" />
      <node concept="10Oyi0" id="50o97QFMYw0" role="1tU5fm" />
    </node>
    <node concept="3clFbW" id="50o97QFMYxM" role="jymVt">
      <node concept="3cqZAl" id="50o97QFMYxN" role="3clF45" />
      <node concept="3clFbS" id="50o97QFMYxP" role="3clF47">
        <node concept="3clFbF" id="50o97QFMYA6" role="3cqZAp">
          <node concept="37vLTI" id="50o97QFMYN$" role="3clFbG">
            <node concept="37vLTw" id="50o97QFMYOY" role="37vLTx">
              <ref role="3cqZAo" node="50o97QFMYyg" resolve="name" />
            </node>
            <node concept="37vLTw" id="50o97QFMYA5" role="37vLTJ">
              <ref role="3cqZAo" node="50o97QFMYuc" resolve="_name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="50o97QFMYRw" role="3cqZAp">
          <node concept="37vLTI" id="50o97QFMZvK" role="3clFbG">
            <node concept="37vLTw" id="50o97QFMZHJ" role="37vLTx">
              <ref role="3cqZAo" node="50o97QFMYyx" resolve="minConsumption" />
            </node>
            <node concept="37vLTw" id="50o97QFMYRu" role="37vLTJ">
              <ref role="3cqZAo" node="50o97QFMYv3" resolve="_minConsumption" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="50o97QFMZTU" role="3cqZAp">
          <node concept="37vLTI" id="50o97QFN0pO" role="3clFbG">
            <node concept="37vLTw" id="50o97QFN0BY" role="37vLTx">
              <ref role="3cqZAo" node="50o97QFMY$d" resolve="maxConsumption" />
            </node>
            <node concept="37vLTw" id="50o97QFMZTS" role="37vLTJ">
              <ref role="3cqZAo" node="50o97QFMYw7" resolve="_maxConsumption" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="50o97QFMYxu" role="1B3o_S" />
      <node concept="37vLTG" id="50o97QFMYyg" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="50o97QFMYyf" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="50o97QFMYyx" role="3clF46">
        <property role="TrG5h" value="minConsumption" />
        <node concept="10Oyi0" id="50o97QFMYz4" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="50o97QFMY$d" role="3clF46">
        <property role="TrG5h" value="maxConsumption" />
        <node concept="10Oyi0" id="50o97QFMY$y" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3nJJ606NBtt" role="jymVt" />
    <node concept="3Tm1VV" id="50o97QFMYjh" role="1B3o_S" />
  </node>
</model>

