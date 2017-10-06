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
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
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
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
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
        <node concept="3SKdUt" id="59sIV4z6POG" role="3cqZAp">
          <node concept="3SKdUq" id="59sIV4z6POI" role="3SKWNk">
            <property role="3SKdUp" value="Grids must be able to connect to at least one side of the transformer" />
          </node>
        </node>
        <node concept="3clFbJ" id="1e8K_y$V2Wz" role="3cqZAp">
          <node concept="22lmx$" id="59sIV4z5PaK" role="3clFbw">
            <node concept="3clFbC" id="59sIV4z5Rv5" role="3uHU7w">
              <node concept="2OqwBi" id="59sIV4z5S6L" role="3uHU7w">
                <node concept="37vLTw" id="59sIV4z5ROD" role="2Oq$k0">
                  <ref role="3cqZAo" node="4NGxdIp8HD$" resolve="connect" />
                </node>
                <node concept="3TrcHB" id="59sIV4z5SM9" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:7rDXPBEWeTq" resolve="RightNetLevel" />
                </node>
              </node>
              <node concept="2OqwBi" id="59sIV4z5PGk" role="3uHU7B">
                <node concept="13iPFW" id="59sIV4z5PyD" role="2Oq$k0" />
                <node concept="3TrcHB" id="59sIV4z5QcD" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:4NGxdIp910G" resolve="voltage" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="1e8K_y$V4h0" role="3uHU7B">
              <node concept="2OqwBi" id="1e8K_y$V36d" role="3uHU7B">
                <node concept="13iPFW" id="1e8K_y$V2WR" role="2Oq$k0" />
                <node concept="3TrcHB" id="1e8K_y$V3h_" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:4NGxdIp910G" resolve="voltage" />
                </node>
              </node>
              <node concept="2OqwBi" id="1e8K_y$V4Q0" role="3uHU7w">
                <node concept="37vLTw" id="1e8K_y$V4$d" role="2Oq$k0">
                  <ref role="3cqZAo" node="4NGxdIp8HD$" resolve="connect" />
                </node>
                <node concept="3TrcHB" id="1e8K_y$V5k8" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:7rDXPBEWeTo" resolve="LeftNetLevel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1e8K_y$V2W_" role="3clFbx">
            <node concept="3clFbJ" id="59sIV4z5TfD" role="3cqZAp">
              <node concept="3clFbS" id="59sIV4z5TfF" role="3clFbx">
                <node concept="3clFbF" id="59sIV4z5UlY" role="3cqZAp">
                  <node concept="37vLTI" id="59sIV4z5Vad" role="3clFbG">
                    <node concept="37vLTw" id="59sIV4z5Vey" role="37vLTx">
                      <ref role="3cqZAo" node="4NGxdIp8HD$" resolve="connect" />
                    </node>
                    <node concept="2OqwBi" id="59sIV4z5Ut$" role="37vLTJ">
                      <node concept="13iPFW" id="59sIV4z5UlW" role="2Oq$k0" />
                      <node concept="3TrEf2" id="59sIV4z5UNN" role="2OqNvi">
                        <ref role="3Tt5mk" to="aw7t:4NGxdIp910R" resolve="ConnectedTransformer1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="59sIV4z5U4M" role="3clFbw">
                <node concept="3cmrfG" id="59sIV4z5U4T" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="59sIV4z5Tik" role="3uHU7B">
                  <ref role="3cqZAo" node="59sIV4z5NPe" resolve="connectionNum" />
                </node>
              </node>
              <node concept="3eNFk2" id="59sIV4z5W30" role="3eNLev">
                <node concept="3clFbC" id="59sIV4z5X8T" role="3eO9$A">
                  <node concept="3cmrfG" id="59sIV4z5X90" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="37vLTw" id="59sIV4z5Wmr" role="3uHU7B">
                    <ref role="3cqZAo" node="59sIV4z5NPe" resolve="connectionNum" />
                  </node>
                </node>
                <node concept="3clFbS" id="59sIV4z5W32" role="3eOfB_">
                  <node concept="3clFbF" id="59sIV4z5Xq4" role="3cqZAp">
                    <node concept="37vLTI" id="59sIV4z5Yk8" role="3clFbG">
                      <node concept="37vLTw" id="59sIV4z5Yow" role="37vLTx">
                        <ref role="3cqZAo" node="4NGxdIp8HD$" resolve="connect" />
                      </node>
                      <node concept="2OqwBi" id="59sIV4z5XDf" role="37vLTJ">
                        <node concept="13iPFW" id="59sIV4z5Xq3" role="2Oq$k0" />
                        <node concept="3TrEf2" id="59sIV4z5XZu" role="2OqNvi">
                          <ref role="3Tt5mk" to="aw7t:59sIV4z5KwT" resolve="ConnectedTransformer2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="59sIV4z5YqV" role="9aQIa">
                <node concept="3clFbS" id="59sIV4z5YqW" role="9aQI4">
                  <node concept="YS8fn" id="59sIV4z5YIw" role="3cqZAp">
                    <node concept="2ShNRf" id="59sIV4z5YIO" role="YScLw">
                      <node concept="1pGfFk" id="59sIV4z5YRU" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                        <node concept="Xl_RD" id="59sIV4z5YX$" role="37wK5m">
                          <property role="Xl_RC" value="Cannot exceed maximum of 2 transformer connections" />
                        </node>
                      </node>
                    </node>
                  </node>
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
      <node concept="37vLTG" id="4NGxdIp8HD$" role="3clF46">
        <property role="TrG5h" value="connect" />
        <node concept="3Tqbb2" id="4NGxdIp8HDz" role="1tU5fm">
          <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
        </node>
      </node>
      <node concept="37vLTG" id="59sIV4z5NPe" role="3clF46">
        <property role="TrG5h" value="connectionNum" />
        <node concept="10Oyi0" id="59sIV4z5Oc_" role="1tU5fm" />
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
        <node concept="3clFbF" id="5tZXSE_u5Te" role="3cqZAp">
          <node concept="37vLTI" id="5tZXSE_u9W6" role="3clFbG">
            <node concept="3cmrfG" id="5tZXSE_ua6P" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="5tZXSE_u62B" role="37vLTJ">
              <node concept="13iPFW" id="5tZXSE_u5Tc" role="2Oq$k0" />
              <node concept="3TrcHB" id="5tZXSE_u7Xu" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:5tZXSE_u3$_" resolve="probabilityOfFailure" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1e8K_y$VLBy">
    <ref role="13h7C2" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
    <node concept="13hLZK" id="1e8K_y$VLBz" role="13h7CW">
      <node concept="3clFbS" id="1e8K_y$VLB$" role="2VODD2">
        <node concept="3clFbF" id="1e8K_y$VLBI" role="3cqZAp">
          <node concept="37vLTI" id="1e8K_y$VNds" role="3clFbG">
            <node concept="2OqwBi" id="1e8K_y$VLJs" role="37vLTJ">
              <node concept="13iPFW" id="1e8K_y$VLBH" role="2Oq$k0" />
              <node concept="3TrcHB" id="1e8K_y$VM5F" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:7rDXPBEWeTo" resolve="LeftNetLevel" />
              </node>
            </node>
            <node concept="3cmrfG" id="4qR36XfvCeg" role="37vLTx">
              <property role="3cmrfH" value="4" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1e8K_y$VNiK" role="3cqZAp">
          <node concept="37vLTI" id="1e8K_y$VPkd" role="3clFbG">
            <node concept="2OqwBi" id="1e8K_y$VNqH" role="37vLTJ">
              <node concept="13iPFW" id="1e8K_y$VNiI" role="2Oq$k0" />
              <node concept="3TrcHB" id="1e8K_y$VNMU" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:7rDXPBEWeTq" resolve="RightNetLevel" />
              </node>
            </node>
            <node concept="3cmrfG" id="59sIV4z6k2U" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
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
    <node concept="13i0hz" id="59sIV4z4NXH" role="13h7CS">
      <property role="TrG5h" value="connectTransformer" />
      <node concept="3Tm1VV" id="59sIV4z4NXI" role="1B3o_S" />
      <node concept="3cqZAl" id="59sIV4z4O1d" role="3clF45" />
      <node concept="3clFbS" id="59sIV4z4NXK" role="3clF47">
        <node concept="3SKdUt" id="59sIV4z6PhY" role="3cqZAp">
          <node concept="3SKdUq" id="59sIV4z6Pi0" role="3SKWNk">
            <property role="3SKdUp" value="Producers have a standard net level of 1" />
          </node>
        </node>
        <node concept="3clFbJ" id="59sIV4z4TfD" role="3cqZAp">
          <node concept="22lmx$" id="59sIV4z6eLD" role="3clFbw">
            <node concept="3clFbC" id="59sIV4z6haB" role="3uHU7w">
              <node concept="3cmrfG" id="59sIV4z6haM" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="59sIV4z6fgZ" role="3uHU7B">
                <node concept="37vLTw" id="59sIV4z6f7o" role="2Oq$k0">
                  <ref role="3cqZAo" node="59sIV4z4QE7" resolve="connect" />
                </node>
                <node concept="3TrcHB" id="59sIV4z6fUc" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:7rDXPBEWeTq" resolve="RightNetLevel" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="59sIV4z6dMg" role="3uHU7B">
              <node concept="2OqwBi" id="59sIV4z6c_i" role="3uHU7B">
                <node concept="37vLTw" id="59sIV4z6crI" role="2Oq$k0">
                  <ref role="3cqZAo" node="59sIV4z4QE7" resolve="connect" />
                </node>
                <node concept="3TrcHB" id="59sIV4z6cMS" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:7rDXPBEWeTo" resolve="LeftNetLevel" />
                </node>
              </node>
              <node concept="3cmrfG" id="59sIV4z6dMr" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="59sIV4z4TfF" role="3clFbx">
            <node concept="3clFbF" id="59sIV4z4Umq" role="3cqZAp">
              <node concept="37vLTI" id="59sIV4z4UY0" role="3clFbG">
                <node concept="37vLTw" id="59sIV4z4V2l" role="37vLTx">
                  <ref role="3cqZAo" node="59sIV4z4QE7" resolve="connect" />
                </node>
                <node concept="2OqwBi" id="59sIV4z4Uu0" role="37vLTJ">
                  <node concept="13iPFW" id="59sIV4z4Ump" role="2Oq$k0" />
                  <node concept="3TrEf2" id="59sIV4z4UDm" role="2OqNvi">
                    <ref role="3Tt5mk" to="aw7t:4DN6WPtj6wQ" resolve="ConnectedTransformer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="59sIV4z4Vlw" role="9aQIa">
            <node concept="3clFbS" id="59sIV4z4Vlx" role="9aQI4">
              <node concept="YS8fn" id="59sIV4z6hus" role="3cqZAp">
                <node concept="2ShNRf" id="59sIV4z6huK" role="YScLw">
                  <node concept="1pGfFk" id="59sIV4z6hBQ" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                    <node concept="Xl_RD" id="59sIV4z6hHv" role="37wK5m">
                      <property role="Xl_RC" value="Can only connect to transformer with at least one side of net level 1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="59sIV4z4QE7" role="3clF46">
        <property role="TrG5h" value="connect" />
        <node concept="3Tqbb2" id="59sIV4z4QE6" role="1tU5fm">
          <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
        </node>
      </node>
    </node>
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
        <node concept="3clFbF" id="59sIV4z4MtX" role="3cqZAp">
          <node concept="37vLTI" id="59sIV4z4N8h" role="3clFbG">
            <node concept="10Nm6u" id="59sIV4z4N8H" role="37vLTx" />
            <node concept="2OqwBi" id="59sIV4z4MAh" role="37vLTJ">
              <node concept="13iPFW" id="59sIV4z4MtV" role="2Oq$k0" />
              <node concept="3TrEf2" id="59sIV4z4MNB" role="2OqNvi">
                <ref role="3Tt5mk" to="aw7t:4DN6WPtj6wQ" resolve="ConnectedTransformer" />
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
    <node concept="13i0hz" id="59sIV4z5tk9" role="13h7CS">
      <property role="TrG5h" value="connectTransformer" />
      <node concept="3Tm1VV" id="59sIV4z5tka" role="1B3o_S" />
      <node concept="3cqZAl" id="59sIV4z5tnm" role="3clF45" />
      <node concept="3clFbS" id="59sIV4z5tkc" role="3clF47">
        <node concept="3SKdUt" id="59sIV4z6PbI" role="3cqZAp">
          <node concept="3SKdUq" id="59sIV4z6PbK" role="3SKWNk">
            <property role="3SKdUp" value="Consumers have a standard net level of 1" />
          </node>
        </node>
        <node concept="3clFbJ" id="59sIV4z5tt1" role="3cqZAp">
          <node concept="3clFbS" id="59sIV4z5tt3" role="3clFbx">
            <node concept="3clFbF" id="59sIV4z5vln" role="3cqZAp">
              <node concept="37vLTI" id="59sIV4z5wbk" role="3clFbG">
                <node concept="37vLTw" id="59sIV4z5wdF" role="37vLTx">
                  <ref role="3cqZAo" node="59sIV4z5tro" resolve="connect" />
                </node>
                <node concept="2OqwBi" id="59sIV4z5vsX" role="37vLTJ">
                  <node concept="13iPFW" id="59sIV4z5vlm" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1G90Zx2lSo_" role="2OqNvi">
                    <ref role="3Tt5mk" to="aw7t:1G90Zx2lQbC" resolve="ConnectedTransformer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="59sIV4z5wg6" role="9aQIa">
            <node concept="3clFbS" id="59sIV4z5wg7" role="9aQI4">
              <node concept="YS8fn" id="59sIV4z5wts" role="3cqZAp">
                <node concept="2ShNRf" id="59sIV4z5wtK" role="YScLw">
                  <node concept="1pGfFk" id="59sIV4z5wAQ" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                    <node concept="Xl_RD" id="59sIV4z5wGv" role="37wK5m">
                      <property role="Xl_RC" value="Connected Transformer must have at least one side have a net level of 1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="59sIV4z68Tv" role="3clFbw">
            <node concept="3clFbC" id="59sIV4z6bqM" role="3uHU7w">
              <node concept="3cmrfG" id="59sIV4z6bqX" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="59sIV4z69oP" role="3uHU7B">
                <node concept="37vLTw" id="59sIV4z69fe" role="2Oq$k0">
                  <ref role="3cqZAo" node="59sIV4z5tro" resolve="connect" />
                </node>
                <node concept="3TrcHB" id="59sIV4z6a22" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:7rDXPBEWeTq" resolve="RightNetLevel" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="59sIV4z67U6" role="3uHU7B">
              <node concept="2OqwBi" id="59sIV4z66H8" role="3uHU7B">
                <node concept="37vLTw" id="59sIV4z66z$" role="2Oq$k0">
                  <ref role="3cqZAo" node="59sIV4z5tro" resolve="connect" />
                </node>
                <node concept="3TrcHB" id="59sIV4z66UI" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:7rDXPBEWeTo" resolve="LeftNetLevel" />
                </node>
              </node>
              <node concept="3cmrfG" id="59sIV4z67Uh" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="59sIV4z5tro" role="3clF46">
        <property role="TrG5h" value="connect" />
        <node concept="3Tqbb2" id="59sIV4z5trn" role="1tU5fm">
          <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
        </node>
      </node>
    </node>
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
        <node concept="3clFbF" id="59sIV4z5sqm" role="3cqZAp">
          <node concept="37vLTI" id="59sIV4z5tfz" role="3clFbG">
            <node concept="10Nm6u" id="59sIV4z5tfZ" role="37vLTx" />
            <node concept="2OqwBi" id="59sIV4z5syE" role="37vLTJ">
              <node concept="13iPFW" id="59sIV4z5sqk" role="2Oq$k0" />
              <node concept="3TrEf2" id="1G90Zx2lRRJ" role="2OqNvi">
                <ref role="3Tt5mk" to="aw7t:1G90Zx2lQbC" resolve="ConnectedTransformer" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

