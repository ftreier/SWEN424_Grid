<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:962bfeb6-6039-41c3-a510-88073d6ca721(PowerGrid.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="-1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="aw7t" ref="r:2a8ae552-038d-4f4d-a413-89014cd6b087(PowerGrid.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz" />
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="6L5ADlUkp63">
    <ref role="13h7C2" to="aw7t:3pcEwkEWqD2" resolve="PowerGridSimulator" />
    <node concept="13hLZK" id="6L5ADlUkp64" role="13h7CW">
      <node concept="3clFbS" id="6L5ADlUkp65" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4NGxdIp7U4V">
    <ref role="13h7C2" to="aw7t:4NGxdIp910w" resolve="PowerGrid" />
    <node concept="13hLZK" id="4NGxdIp7U4W" role="13h7CW">
      <node concept="3clFbS" id="4NGxdIp7U4X" role="2VODD2">
        <node concept="3clFbF" id="4NGxdIp7UwD" role="3cqZAp">
          <node concept="37vLTI" id="4NGxdIp7WkW" role="3clFbG">
            <node concept="3cmrfG" id="4NGxdIp7Wno" role="37vLTx">
              <property role="3cmrfH" value="200" />
            </node>
            <node concept="2OqwBi" id="4NGxdIp7UCn" role="37vLTJ">
              <node concept="13iPFW" id="4NGxdIp7UwC" role="2Oq$k0" />
              <node concept="3TrcHB" id="1e8K_y$UWzV" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:4NGxdIp910z" resolve="maxCapacity" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4NGxdIp7Z$G" role="3cqZAp">
          <node concept="37vLTI" id="4NGxdIp80Wz" role="3clFbG">
            <node concept="3cmrfG" id="4NGxdIp80WP" role="37vLTx">
              <property role="3cmrfH" value="100" />
            </node>
            <node concept="2OqwBi" id="4NGxdIp7ZHn" role="37vLTJ">
              <node concept="13iPFW" id="4NGxdIp7Z$E" role="2Oq$k0" />
              <node concept="3TrcHB" id="1e8K_y$UXbF" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:4NGxdIp910C" resolve="efficiency" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5tZXSE_u5Te" role="3cqZAp">
          <node concept="37vLTI" id="5tZXSE_u9W6" role="3clFbG">
            <node concept="3cmrfG" id="5tZXSE_ua6P" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="5tZXSE_u62B" role="37vLTJ">
              <node concept="13iPFW" id="5tZXSE_u5Tc" role="2Oq$k0" />
              <node concept="3TrcHB" id="4ZDpIZc1u9r" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:4ZDpIZbYWTJ" resolve="probabilityOfFailure" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1e8K_y$VLBy">
    <ref role="13h7C2" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
    <node concept="13i0hz" id="4ZDpIZbNHXS" role="13h7CS">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="4ZDpIZbNHXT" role="1B3o_S" />
      <node concept="3uibUv" id="4ZDpIZbNI1F" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="4ZDpIZbNHXV" role="3clF47">
        <node concept="3cpWs6" id="4ZDpIZbNI2f" role="3cqZAp">
          <node concept="2OqwBi" id="4ZDpIZbNIcg" role="3cqZAk">
            <node concept="13iPFW" id="4ZDpIZbNI2H" role="2Oq$k0" />
            <node concept="3TrcHB" id="4ZDpIZbNInC" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="1e8K_y$VLBz" role="13h7CW">
      <node concept="3clFbS" id="1e8K_y$VLB$" role="2VODD2">
        <node concept="3clFbF" id="1e8K_y$VPGI" role="3cqZAp">
          <node concept="37vLTI" id="1e8K_y$VRla" role="3clFbG">
            <node concept="2OqwBi" id="1e8K_y$VPRa" role="37vLTJ">
              <node concept="13iPFW" id="1e8K_y$VPGG" role="2Oq$k0" />
              <node concept="3TrcHB" id="1e8K_y$VQdp" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:7rDXPBEWeTt" resolve="MaxCapacity" />
              </node>
            </node>
            <node concept="3cmrfG" id="4qR36XfvDxs" role="37vLTx">
              <property role="3cmrfH" value="200" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1e8K_y$VRrg" role="3cqZAp">
          <node concept="37vLTI" id="1e8K_y$VT57" role="3clFbG">
            <node concept="3cmrfG" id="1e8K_y$VT5p" role="37vLTx">
              <property role="3cmrfH" value="100" />
            </node>
            <node concept="2OqwBi" id="1e8K_y$VRA5" role="37vLTJ">
              <node concept="13iPFW" id="1e8K_y$VRre" role="2Oq$k0" />
              <node concept="3TrcHB" id="1e8K_y$VRXg" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:7rDXPBEWeTx" resolve="Efficiency" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1e8K_y$VTbA" role="3cqZAp">
          <node concept="37vLTI" id="1e8K_y$VUGt" role="3clFbG">
            <node concept="3cmrfG" id="1e8K_y$VUGJ" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="1e8K_y$VTmO" role="37vLTJ">
              <node concept="13iPFW" id="1e8K_y$VTb$" role="2Oq$k0" />
              <node concept="3TrcHB" id="1e8K_y$VTH3" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:7rDXPBEWeTA" resolve="Usage" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="59sIV4z4H0L">
    <ref role="13h7C2" to="aw7t:24XvQ732hTQ" resolve="Producer" />
    <node concept="13hLZK" id="59sIV4z4H0M" role="13h7CW">
      <node concept="3clFbS" id="59sIV4z4H0N" role="2VODD2">
        <node concept="3clFbF" id="59sIV4z4IO_" role="3cqZAp">
          <node concept="37vLTI" id="59sIV4z4Kql" role="3clFbG">
            <node concept="3cmrfG" id="59sIV4z4KqB" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="59sIV4z4IWj" role="37vLTJ">
              <node concept="13iPFW" id="59sIV4z4IO$" role="2Oq$k0" />
              <node concept="3TrcHB" id="59sIV4z4Ji$" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:24XvQ732hTT" resolve="MinProduction" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="59sIV4z4KC0" role="3cqZAp">
          <node concept="37vLTI" id="59sIV4z4MfT" role="3clFbG">
            <node concept="3cmrfG" id="59sIV4z4Mgb" role="37vLTx">
              <property role="3cmrfH" value="1000" />
            </node>
            <node concept="2OqwBi" id="59sIV4z4KJX" role="37vLTJ">
              <node concept="13iPFW" id="59sIV4z4KBY" role="2Oq$k0" />
              <node concept="3TrcHB" id="59sIV4z4L88" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:24XvQ732kGm" resolve="MaxProduction" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="59sIV4z4Neq" role="3cqZAp">
          <node concept="37vLTI" id="59sIV4z4NT7" role="3clFbG">
            <node concept="10Nm6u" id="59sIV4z4NTz" role="37vLTx" />
            <node concept="2OqwBi" id="59sIV4z4Nn5" role="37vLTJ">
              <node concept="13iPFW" id="59sIV4z4Neo" role="2Oq$k0" />
              <node concept="3TrEf2" id="59sIV4z4N$t" role="2OqNvi">
                <ref role="3Tt5mk" to="aw7t:6gi3O$9ozQy" resolve="Weather" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="59sIV4z5phA">
    <ref role="13h7C2" to="aw7t:50o97QFMYra" resolve="Consumer" />
    <node concept="13hLZK" id="59sIV4z5phB" role="13h7CW">
      <node concept="3clFbS" id="59sIV4z5phC" role="2VODD2">
        <node concept="3clFbF" id="59sIV4z5qFY" role="3cqZAp">
          <node concept="37vLTI" id="59sIV4z5sby" role="3clFbG">
            <node concept="3cmrfG" id="59sIV4z5sbO" role="37vLTx">
              <property role="3cmrfH" value="1000" />
            </node>
            <node concept="2OqwBi" id="59sIV4z5qNV" role="37vLTJ">
              <node concept="13iPFW" id="59sIV4z5qFW" role="2Oq$k0" />
              <node concept="3TrcHB" id="59sIV4z5rc8" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:50o97QFMYs5" resolve="MaxConsumption" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

