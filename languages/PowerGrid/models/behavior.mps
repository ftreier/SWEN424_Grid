<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:962bfeb6-6039-41c3-a510-88073d6ca721(PowerGrid.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
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
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
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
    <node concept="13i0hz" id="4NGxdIp82nT" role="13h7CS">
      <property role="TrG5h" value="increaseUsage" />
      <node concept="3Tm1VV" id="4NGxdIp82nU" role="1B3o_S" />
      <node concept="3cqZAl" id="4NGxdIp82rM" role="3clF45" />
      <node concept="3clFbS" id="4NGxdIp82nW" role="3clF47">
        <node concept="3clFbJ" id="4NGxdIp82t6" role="3cqZAp">
          <node concept="2dkUwp" id="4NGxdIp85nh" role="3clFbw">
            <node concept="2OqwBi" id="4NGxdIp866R" role="3uHU7w">
              <node concept="13iPFW" id="4NGxdIp85Av" role="2Oq$k0" />
              <node concept="3TrcHB" id="1e8K_y$UYWv" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:4NGxdIp910z" resolve="maxCapacity" />
              </node>
            </node>
            <node concept="3cpWs3" id="1e8K_y$VzN8" role="3uHU7B">
              <node concept="37vLTw" id="1e8K_y$VzX6" role="3uHU7w">
                <ref role="3cqZAo" node="4NGxdIp82sq" resolve="increment" />
              </node>
              <node concept="1eOMI4" id="1e8K_y$VwsH" role="3uHU7B">
                <node concept="17qRlL" id="1e8K_y$VybV" role="1eOMHV">
                  <node concept="2OqwBi" id="1e8K_y$VyAj" role="3uHU7w">
                    <node concept="13iPFW" id="1e8K_y$Vyc6" role="2Oq$k0" />
                    <node concept="3TrcHB" id="1e8K_y$VyZx" role="2OqNvi">
                      <ref role="3TsBF5" to="aw7t:4NGxdIp910_" resolve="percentusage" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1e8K_y$VwZy" role="3uHU7B">
                    <node concept="13iPFW" id="1e8K_y$VwD7" role="2Oq$k0" />
                    <node concept="3TrcHB" id="1e8K_y$VxdF" role="2OqNvi">
                      <ref role="3TsBF5" to="aw7t:4NGxdIp910z" resolve="maxCapacity" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4NGxdIp82t8" role="3clFbx">
            <node concept="3clFbF" id="4NGxdIp89_X" role="3cqZAp">
              <node concept="37vLTI" id="4NGxdIp8bDE" role="3clFbG">
                <node concept="2OqwBi" id="4NGxdIp89Zr" role="37vLTJ">
                  <node concept="13iPFW" id="4NGxdIp89_V" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1e8K_y$UYxw" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:4NGxdIp910_" resolve="percentusage" />
                  </node>
                </node>
                <node concept="FJ1c_" id="1e8K_y$VFsN" role="37vLTx">
                  <node concept="2OqwBi" id="1e8K_y$VFPU" role="3uHU7w">
                    <node concept="13iPFW" id="1e8K_y$VFte" role="2Oq$k0" />
                    <node concept="3TrcHB" id="1e8K_y$VGAs" role="2OqNvi">
                      <ref role="3TsBF5" to="aw7t:4NGxdIp910z" resolve="maxCapacity" />
                    </node>
                  </node>
                  <node concept="1eOMI4" id="1e8K_y$V_Em" role="3uHU7B">
                    <node concept="3cpWs3" id="1e8K_y$VDXD" role="1eOMHV">
                      <node concept="37vLTw" id="1e8K_y$VEg3" role="3uHU7w">
                        <ref role="3cqZAo" node="4NGxdIp82sq" resolve="increment" />
                      </node>
                      <node concept="1eOMI4" id="1e8K_y$V_Eo" role="3uHU7B">
                        <node concept="17qRlL" id="1e8K_y$VBOP" role="1eOMHV">
                          <node concept="2OqwBi" id="1e8K_y$VCnD" role="3uHU7w">
                            <node concept="13iPFW" id="1e8K_y$VBP0" role="2Oq$k0" />
                            <node concept="3TrcHB" id="1e8K_y$VCTj" role="2OqNvi">
                              <ref role="3TsBF5" to="aw7t:4NGxdIp910_" resolve="percentusage" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1e8K_y$VAiX" role="3uHU7B">
                            <node concept="13iPFW" id="1e8K_y$V_Hx" role="2Oq$k0" />
                            <node concept="3TrcHB" id="1e8K_y$VAOr" role="2OqNvi">
                              <ref role="3TsBF5" to="aw7t:4NGxdIp910z" resolve="maxCapacity" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4NGxdIp8exd" role="9aQIa">
            <node concept="3clFbS" id="4NGxdIp8exe" role="9aQI4">
              <node concept="YS8fn" id="4NGxdIp8eQr" role="3cqZAp">
                <node concept="2ShNRf" id="4NGxdIp8eQJ" role="YScLw">
                  <node concept="1pGfFk" id="4NGxdIp8kZ0" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IndexOutOfBoundsException.&lt;init&gt;(java.lang.String)" resolve="IndexOutOfBoundsException" />
                    <node concept="Xl_RD" id="4NGxdIp8l4D" role="37wK5m">
                      <property role="Xl_RC" value="Cannot exceed maximum voltage capacity" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4NGxdIp82sq" role="3clF46">
        <property role="TrG5h" value="increment" />
        <node concept="10Oyi0" id="4NGxdIp82sp" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="4NGxdIp8l_v" role="13h7CS">
      <property role="TrG5h" value="decreaseUsage" />
      <node concept="3Tm1VV" id="4NGxdIp8l_w" role="1B3o_S" />
      <node concept="3cqZAl" id="4NGxdIp8lXD" role="3clF45" />
      <node concept="3clFbS" id="4NGxdIp8l_y" role="3clF47">
        <node concept="3clFbJ" id="4NGxdIp8lYB" role="3cqZAp">
          <node concept="2d3UOw" id="4NGxdIp8oes" role="3clFbw">
            <node concept="3cmrfG" id="4NGxdIp8oll" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="3cpWsd" id="4NGxdIp8nj0" role="3uHU7B">
              <node concept="1eOMI4" id="1e8K_y$VkY_" role="3uHU7B">
                <node concept="17qRlL" id="1e8K_y$ViVo" role="1eOMHV">
                  <node concept="2OqwBi" id="1e8K_y$Vjtb" role="3uHU7w">
                    <node concept="13iPFW" id="1e8K_y$ViVz" role="2Oq$k0" />
                    <node concept="3TrcHB" id="1e8K_y$VjQn" role="2OqNvi">
                      <ref role="3TsBF5" to="aw7t:4NGxdIp910_" resolve="percentusage" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4NGxdIp8m8h" role="3uHU7B">
                    <node concept="13iPFW" id="4NGxdIp8lYV" role="2Oq$k0" />
                    <node concept="3TrcHB" id="1e8K_y$VhX6" role="2OqNvi">
                      <ref role="3TsBF5" to="aw7t:4NGxdIp910z" resolve="maxCapacity" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="4NGxdIp8nlB" role="3uHU7w">
                <ref role="3cqZAo" node="4NGxdIp8lYf" resolve="increment" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4NGxdIp8lYD" role="3clFbx">
            <node concept="3clFbF" id="4NGxdIp8os8" role="3cqZAp">
              <node concept="37vLTI" id="1e8K_y$Vn0B" role="3clFbG">
                <node concept="2OqwBi" id="1e8K_y$Vn0E" role="37vLTJ">
                  <node concept="13iPFW" id="1e8K_y$Vn0F" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1e8K_y$Vn0G" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:4NGxdIp910_" resolve="percentusage" />
                  </node>
                </node>
                <node concept="FJ1c_" id="1e8K_y$VsxQ" role="37vLTx">
                  <node concept="2OqwBi" id="1e8K_y$Vt2$" role="3uHU7w">
                    <node concept="13iPFW" id="1e8K_y$Vsyh" role="2Oq$k0" />
                    <node concept="3TrcHB" id="1e8K_y$VtEJ" role="2OqNvi">
                      <ref role="3TsBF5" to="aw7t:4NGxdIp910z" resolve="maxCapacity" />
                    </node>
                  </node>
                  <node concept="1eOMI4" id="1e8K_y$VnCj" role="3uHU7B">
                    <node concept="3cpWsd" id="1e8K_y$VrbL" role="1eOMHV">
                      <node concept="37vLTw" id="1e8K_y$Vrtv" role="3uHU7w">
                        <ref role="3cqZAo" node="4NGxdIp8lYf" resolve="increment" />
                      </node>
                      <node concept="1eOMI4" id="1e8K_y$VnCl" role="3uHU7B">
                        <node concept="17qRlL" id="1e8K_y$VpmX" role="1eOMHV">
                          <node concept="2OqwBi" id="1e8K_y$VpB9" role="3uHU7w">
                            <node concept="13iPFW" id="1e8K_y$Vpn8" role="2Oq$k0" />
                            <node concept="3TrcHB" id="1e8K_y$Vq87" role="2OqNvi">
                              <ref role="3TsBF5" to="aw7t:4NGxdIp910_" resolve="percentusage" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1e8K_y$VnQt" role="3uHU7B">
                            <node concept="13iPFW" id="1e8K_y$VnEM" role="2Oq$k0" />
                            <node concept="3TrcHB" id="1e8K_y$Vonf" role="2OqNvi">
                              <ref role="3TsBF5" to="aw7t:4NGxdIp910z" resolve="maxCapacity" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4NGxdIp8ujk" role="9aQIa">
            <node concept="3clFbS" id="4NGxdIp8ujl" role="9aQI4">
              <node concept="YS8fn" id="4NGxdIp8uvZ" role="3cqZAp">
                <node concept="2ShNRf" id="4NGxdIp8uwj" role="YScLw">
                  <node concept="1pGfFk" id="4NGxdIp8uDp" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IndexOutOfBoundsException.&lt;init&gt;(java.lang.String)" resolve="IndexOutOfBoundsException" />
                    <node concept="Xl_RD" id="4NGxdIp8uGp" role="37wK5m">
                      <property role="Xl_RC" value="Cannot drop below 0 voltage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4NGxdIp8lYf" role="3clF46">
        <property role="TrG5h" value="increment" />
        <node concept="10Oyi0" id="4NGxdIp8lYe" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="4NGxdIp8v9O" role="13h7CS">
      <property role="TrG5h" value="connectTransformer" />
      <node concept="3Tm1VV" id="4NGxdIp8v9P" role="1B3o_S" />
      <node concept="3cqZAl" id="4NGxdIp8v$9" role="3clF45" />
      <node concept="3clFbS" id="4NGxdIp8v9R" role="3clF47">
        <node concept="3clFbJ" id="1e8K_y$V2bT" role="3cqZAp">
          <node concept="3clFbC" id="1e8K_y$V2tt" role="3clFbw">
            <node concept="3clFbT" id="1e8K_y$V2$C" role="3uHU7w">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="1e8K_y$V2cd" role="3uHU7B">
              <ref role="3cqZAo" node="1e8K_y$V1nv" resolve="side" />
            </node>
          </node>
          <node concept="3clFbS" id="1e8K_y$V2bV" role="3clFbx">
            <node concept="3clFbJ" id="1e8K_y$V2Wz" role="3cqZAp">
              <node concept="3clFbC" id="1e8K_y$V4h0" role="3clFbw">
                <node concept="2OqwBi" id="1e8K_y$V4Q0" role="3uHU7w">
                  <node concept="37vLTw" id="1e8K_y$V4$d" role="2Oq$k0">
                    <ref role="3cqZAo" node="4NGxdIp8HD$" resolve="connect" />
                  </node>
                  <node concept="3TrcHB" id="1e8K_y$V5k8" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:7rDXPBEWeTo" resolve="LeftNetLevel" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1e8K_y$V36d" role="3uHU7B">
                  <node concept="13iPFW" id="1e8K_y$V2WR" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1e8K_y$V3h_" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:4NGxdIp910G" resolve="voltage" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="1e8K_y$V2W_" role="3clFbx">
                <node concept="3clFbF" id="1e8K_y$V66e" role="3cqZAp">
                  <node concept="37vLTI" id="1e8K_y$V6Wd" role="3clFbG">
                    <node concept="37vLTw" id="1e8K_y$V70y" role="37vLTx">
                      <ref role="3cqZAo" node="4NGxdIp8HD$" resolve="connect" />
                    </node>
                    <node concept="2OqwBi" id="1e8K_y$V6dO" role="37vLTJ">
                      <node concept="13iPFW" id="1e8K_y$V66d" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1e8K_y$V6$3" role="2OqNvi">
                        <ref role="3Tt5mk" to="aw7t:4NGxdIp910R" resolve="ConnectedTransformer" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1e8K_y$VVp$" role="3cqZAp">
                  <node concept="2OqwBi" id="1e8K_y$VVxn" role="3clFbG">
                    <node concept="37vLTw" id="1e8K_y$VVpy" role="2Oq$k0">
                      <ref role="3cqZAo" node="4NGxdIp8HD$" resolve="connect" />
                    </node>
                    <node concept="2qgKlT" id="1e8K_y$VVIO" role="2OqNvi">
                      <ref role="37wK5l" node="1e8K_y$VURB" resolve="connectLeft" />
                      <node concept="13iPFW" id="1e8K_y$VVMN" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="1e8K_y$V7JN" role="9aQIa">
                <node concept="3clFbS" id="1e8K_y$V7JO" role="9aQI4">
                  <node concept="YS8fn" id="1e8K_y$V85a" role="3cqZAp">
                    <node concept="2ShNRf" id="1e8K_y$V85u" role="YScLw">
                      <node concept="1pGfFk" id="1e8K_y$Vb_b" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                        <node concept="Xl_RD" id="1e8K_y$VbEO" role="37wK5m">
                          <property role="Xl_RC" value="Cannot connect to Transformer of different voltage level" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1e8K_y$Vc2w" role="9aQIa">
            <node concept="3clFbS" id="1e8K_y$Vc2x" role="9aQI4">
              <node concept="3clFbJ" id="1e8K_y$Vcvw" role="3cqZAp">
                <node concept="3clFbC" id="1e8K_y$VdYQ" role="3clFbw">
                  <node concept="2OqwBi" id="1e8K_y$VezQ" role="3uHU7w">
                    <node concept="37vLTw" id="1e8K_y$Vei3" role="2Oq$k0">
                      <ref role="3cqZAo" node="4NGxdIp8HD$" resolve="connect" />
                    </node>
                    <node concept="3TrcHB" id="1e8K_y$Vfdw" role="2OqNvi">
                      <ref role="3TsBF5" to="aw7t:7rDXPBEWeTq" resolve="RightNetLevel" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1e8K_y$VcDa" role="3uHU7B">
                    <node concept="13iPFW" id="1e8K_y$VcvO" role="2Oq$k0" />
                    <node concept="3TrcHB" id="1e8K_y$VcZr" role="2OqNvi">
                      <ref role="3TsBF5" to="aw7t:4NGxdIp910G" resolve="voltage" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="1e8K_y$Vcvy" role="3clFbx">
                  <node concept="3clFbF" id="1e8K_y$VfyC" role="3cqZAp">
                    <node concept="37vLTI" id="1e8K_y$VgmR" role="3clFbG">
                      <node concept="37vLTw" id="1e8K_y$Vgrc" role="37vLTx">
                        <ref role="3cqZAo" node="4NGxdIp8HD$" resolve="connect" />
                      </node>
                      <node concept="2OqwBi" id="1e8K_y$VfEe" role="37vLTJ">
                        <node concept="13iPFW" id="1e8K_y$VfyB" role="2Oq$k0" />
                        <node concept="3TrEf2" id="1e8K_y$Vg0t" role="2OqNvi">
                          <ref role="3Tt5mk" to="aw7t:4NGxdIp910R" resolve="ConnectedTransformer" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1e8K_y$W8rY" role="3cqZAp">
                    <node concept="2OqwBi" id="1e8K_y$W8zL" role="3clFbG">
                      <node concept="37vLTw" id="1e8K_y$W8rW" role="2Oq$k0">
                        <ref role="3cqZAo" node="4NGxdIp8HD$" resolve="connect" />
                      </node>
                      <node concept="2qgKlT" id="1e8K_y$W8W7" role="2OqNvi">
                        <ref role="37wK5l" node="1e8K_y$W2aF" resolve="connectRight" />
                        <node concept="13iPFW" id="1e8K_y$W906" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="1e8K_y$VgxK" role="9aQIa">
                  <node concept="3clFbS" id="1e8K_y$VgxL" role="9aQI4">
                    <node concept="YS8fn" id="1e8K_y$VgR7" role="3cqZAp">
                      <node concept="2ShNRf" id="1e8K_y$VgRb" role="YScLw">
                        <node concept="1pGfFk" id="1e8K_y$Vh0h" role="2ShVmc">
                          <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                          <node concept="Xl_RD" id="1e8K_y$Vh5X" role="37wK5m">
                            <property role="Xl_RC" value="Cannot connect to Transformer of different voltage level" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4NGxdIp8HD$" role="3clF46">
        <property role="TrG5h" value="connect" />
        <node concept="3Tqbb2" id="4NGxdIp8HDz" role="1tU5fm">
          <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
        </node>
      </node>
      <node concept="37vLTG" id="1e8K_y$V1nv" role="3clF46">
        <property role="TrG5h" value="side" />
        <node concept="10P_77" id="1e8K_y$V2by" role="1tU5fm" />
      </node>
    </node>
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
        <node concept="3clFbF" id="4NGxdIp7WCS" role="3cqZAp">
          <node concept="37vLTI" id="4NGxdIp7XPc" role="3clFbG">
            <node concept="3cmrfG" id="4NGxdIp7XPu" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="4NGxdIp7WMR" role="37vLTJ">
              <node concept="13iPFW" id="4NGxdIp7WCQ" role="2Oq$k0" />
              <node concept="3TrcHB" id="1e8K_y$UWLb" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:4NGxdIp910_" resolve="percentusage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4NGxdIp7XWP" role="3cqZAp">
          <node concept="37vLTI" id="4NGxdIp7ZsE" role="3clFbG">
            <node concept="3cmrfG" id="4NGxdIp7Zt4" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="4NGxdIp7Y59" role="37vLTJ">
              <node concept="13iPFW" id="4NGxdIp7XWN" role="2Oq$k0" />
              <node concept="3TrcHB" id="1e8K_y$UWYr" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:4NGxdIp910G" resolve="voltage" />
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
        <node concept="3clFbF" id="4NGxdIp814Y" role="3cqZAp">
          <node concept="37vLTI" id="4NGxdIp81Xg" role="3clFbG">
            <node concept="Xl_RD" id="4NGxdIp81Xy" role="37vLTx">
              <property role="Xl_RC" value="Unassigned" />
            </node>
            <node concept="2OqwBi" id="4NGxdIp81e0" role="37vLTJ">
              <node concept="13iPFW" id="4NGxdIp814W" role="2Oq$k0" />
              <node concept="3TrcHB" id="1e8K_y$UXoV" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:4NGxdIp910L" resolve="sector" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1e8K_y$VLBy">
    <ref role="13h7C2" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
    <node concept="13i0hz" id="1e8K_y$VURB" role="13h7CS">
      <property role="TrG5h" value="connectLeft" />
      <node concept="3Tm1VV" id="1e8K_y$VURC" role="1B3o_S" />
      <node concept="3cqZAl" id="1e8K_y$VUVq" role="3clF45" />
      <node concept="3clFbS" id="1e8K_y$VURE" role="3clF47">
        <node concept="3clFbJ" id="1e8K_y$VVT$" role="3cqZAp">
          <node concept="3clFbC" id="1e8K_y$VXoU" role="3clFbw">
            <node concept="2OqwBi" id="1e8K_y$VYHU" role="3uHU7w">
              <node concept="37vLTw" id="1e8K_y$VXG7" role="2Oq$k0">
                <ref role="3cqZAo" node="1e8K_y$VVlf" resolve="leftConnect" />
              </node>
              <node concept="3TrcHB" id="1e8K_y$VZmV" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:4NGxdIp910G" resolve="voltage" />
              </node>
            </node>
            <node concept="2OqwBi" id="1e8K_y$VW3e" role="3uHU7B">
              <node concept="13iPFW" id="1e8K_y$VVTS" role="2Oq$k0" />
              <node concept="3TrcHB" id="1e8K_y$VWpv" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:7rDXPBEWeTo" resolve="LeftNetLevel" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1e8K_y$VVTA" role="3clFbx">
            <node concept="3clFbF" id="1e8K_y$W06A" role="3cqZAp">
              <node concept="37vLTI" id="1e8K_y$W0JW" role="3clFbG">
                <node concept="37vLTw" id="1e8K_y$W0Oh" role="37vLTx">
                  <ref role="3cqZAo" node="1e8K_y$VVlf" resolve="leftConnect" />
                </node>
                <node concept="2OqwBi" id="1e8K_y$W0ec" role="37vLTJ">
                  <node concept="13iPFW" id="1e8K_y$W06_" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1e8K_y$W0py" role="2OqNvi">
                    <ref role="3Tt5mk" to="aw7t:1e8K_y$VLBt" resolve="LeftConnection" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1e8K_y$W0Ss" role="9aQIa">
            <node concept="3clFbS" id="1e8K_y$W0St" role="9aQI4">
              <node concept="YS8fn" id="1e8K_y$W1dN" role="3cqZAp">
                <node concept="2ShNRf" id="1e8K_y$W1e7" role="YScLw">
                  <node concept="1pGfFk" id="1e8K_y$W1nd" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                    <node concept="Xl_RD" id="1e8K_y$W1sQ" role="37wK5m">
                      <property role="Xl_RC" value="Cannot connect Grid of different net level than left side of transformer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1e8K_y$VVlf" role="3clF46">
        <property role="TrG5h" value="leftConnect" />
        <node concept="3Tqbb2" id="1e8K_y$VVle" role="1tU5fm">
          <ref role="ehGHo" to="aw7t:4NGxdIp910w" resolve="PowerGrid" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1e8K_y$W2aF" role="13h7CS">
      <property role="TrG5h" value="connectRight" />
      <node concept="3Tm1VV" id="1e8K_y$W2aG" role="1B3o_S" />
      <node concept="3cqZAl" id="1e8K_y$W2yU" role="3clF45" />
      <node concept="3clFbS" id="1e8K_y$W2aI" role="3clF47">
        <node concept="3clFbJ" id="1e8K_y$W2$i" role="3cqZAp">
          <node concept="3clFbC" id="1e8K_y$W43C" role="3clFbw">
            <node concept="2OqwBi" id="1e8K_y$W4Vr" role="3uHU7w">
              <node concept="37vLTw" id="1e8K_y$W4mP" role="2Oq$k0">
                <ref role="3cqZAo" node="1e8K_y$W2zA" resolve="rightConnect" />
              </node>
              <node concept="3TrcHB" id="1e8K_y$W5$s" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:4NGxdIp910G" resolve="voltage" />
              </node>
            </node>
            <node concept="2OqwBi" id="1e8K_y$W2HW" role="3uHU7B">
              <node concept="13iPFW" id="1e8K_y$W2$A" role="2Oq$k0" />
              <node concept="3TrcHB" id="1e8K_y$W34d" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:7rDXPBEWeTq" resolve="RightNetLevel" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1e8K_y$W2$k" role="3clFbx">
            <node concept="3clFbF" id="1e8K_y$W5T$" role="3cqZAp">
              <node concept="37vLTI" id="1e8K_y$W6Jx" role="3clFbG">
                <node concept="37vLTw" id="1e8K_y$W6NQ" role="37vLTx">
                  <ref role="3cqZAo" node="1e8K_y$W2zA" resolve="rightConnect" />
                </node>
                <node concept="2OqwBi" id="1e8K_y$W62S" role="37vLTJ">
                  <node concept="13iPFW" id="1e8K_y$W5Tz" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1e8K_y$W6p7" role="2OqNvi">
                    <ref role="3Tt5mk" to="aw7t:1e8K_y$VLBv" resolve="RightConnection" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1e8K_y$W6S1" role="9aQIa">
            <node concept="3clFbS" id="1e8K_y$W6S2" role="9aQI4">
              <node concept="YS8fn" id="1e8K_y$W7do" role="3cqZAp">
                <node concept="2ShNRf" id="1e8K_y$W7dG" role="YScLw">
                  <node concept="1pGfFk" id="1e8K_y$W7mM" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                    <node concept="Xl_RD" id="1e8K_y$W7sJ" role="37wK5m">
                      <property role="Xl_RC" value="Cannot connect Grid of different net level that right side of Transformer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1e8K_y$W2zA" role="3clF46">
        <property role="TrG5h" value="rightConnect" />
        <node concept="3Tqbb2" id="1e8K_y$W2z_" role="1tU5fm">
          <ref role="ehGHo" to="aw7t:4NGxdIp910w" resolve="PowerGrid" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="1e8K_y$VLBz" role="13h7CW">
      <node concept="3clFbS" id="1e8K_y$VLB$" role="2VODD2">
        <node concept="3clFbF" id="1e8K_y$VLBI" role="3cqZAp">
          <node concept="37vLTI" id="1e8K_y$VNds" role="3clFbG">
            <node concept="3cmrfG" id="1e8K_y$VNdI" role="37vLTx">
              <property role="3cmrfH" value="4" />
            </node>
            <node concept="2OqwBi" id="1e8K_y$VLJs" role="37vLTJ">
              <node concept="13iPFW" id="1e8K_y$VLBH" role="2Oq$k0" />
              <node concept="3TrcHB" id="1e8K_y$VM5F" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:7rDXPBEWeTo" resolve="LeftNetLevel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1e8K_y$VNiK" role="3cqZAp">
          <node concept="37vLTI" id="1e8K_y$VPkd" role="3clFbG">
            <node concept="3cmrfG" id="1e8K_y$VPv4" role="37vLTx">
              <property role="3cmrfH" value="3" />
            </node>
            <node concept="2OqwBi" id="1e8K_y$VNqH" role="37vLTJ">
              <node concept="13iPFW" id="1e8K_y$VNiI" role="2Oq$k0" />
              <node concept="3TrcHB" id="1e8K_y$VNMU" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:7rDXPBEWeTq" resolve="RightNetLevel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1e8K_y$VPGI" role="3cqZAp">
          <node concept="37vLTI" id="1e8K_y$VRla" role="3clFbG">
            <node concept="3cmrfG" id="1e8K_y$VRls" role="37vLTx">
              <property role="3cmrfH" value="400" />
            </node>
            <node concept="2OqwBi" id="1e8K_y$VPRa" role="37vLTJ">
              <node concept="13iPFW" id="1e8K_y$VPGG" role="2Oq$k0" />
              <node concept="3TrcHB" id="1e8K_y$VQdp" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:7rDXPBEWeTt" resolve="MaxCapacity" />
              </node>
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
</model>

