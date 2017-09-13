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
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1215695201514" name="jetbrains.mps.baseLanguage.structure.MinusAssignmentExpression" flags="nn" index="d5anL" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
    <ref role="13h7C2" to="aw7t:4NGxdIp7Fe8" resolve="PowerGrid" />
    <node concept="13i0hz" id="4NGxdIp82nT" role="13h7CS">
      <property role="TrG5h" value="increaseVoltage" />
      <node concept="3Tm1VV" id="4NGxdIp82nU" role="1B3o_S" />
      <node concept="3cqZAl" id="4NGxdIp82rM" role="3clF45" />
      <node concept="3clFbS" id="4NGxdIp82nW" role="3clF47">
        <node concept="3clFbJ" id="4NGxdIp82t6" role="3cqZAp">
          <node concept="2dkUwp" id="4NGxdIp85nh" role="3clFbw">
            <node concept="2OqwBi" id="4NGxdIp866R" role="3uHU7w">
              <node concept="13iPFW" id="4NGxdIp85Av" role="2Oq$k0" />
              <node concept="3TrcHB" id="4NGxdIp86FS" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:4NGxdIp7FCf" resolve="maxCapacity" />
              </node>
            </node>
            <node concept="3cpWs3" id="4NGxdIp84jE" role="3uHU7B">
              <node concept="2OqwBi" id="4NGxdIp82AS" role="3uHU7B">
                <node concept="13iPFW" id="4NGxdIp82tq" role="2Oq$k0" />
                <node concept="3TrcHB" id="4NGxdIp82Mq" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:4NGxdIp7FCo" resolve="voltage" />
                </node>
              </node>
              <node concept="37vLTw" id="4NGxdIp84m7" role="3uHU7w">
                <ref role="3cqZAo" node="4NGxdIp82sq" resolve="increment" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4NGxdIp82t8" role="3clFbx">
            <node concept="3clFbF" id="4NGxdIp86Xe" role="3cqZAp">
              <node concept="d57v9" id="4NGxdIp88D2" role="3clFbG">
                <node concept="37vLTw" id="4NGxdIp88Fr" role="37vLTx">
                  <ref role="3cqZAo" node="4NGxdIp82sq" resolve="increment" />
                </node>
                <node concept="2OqwBi" id="4NGxdIp874O" role="37vLTJ">
                  <node concept="13iPFW" id="4NGxdIp86Xd" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4NGxdIp87ga" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:4NGxdIp7FCo" resolve="voltage" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4NGxdIp89_X" role="3cqZAp">
              <node concept="37vLTI" id="4NGxdIp8bDE" role="3clFbG">
                <node concept="FJ1c_" id="4NGxdIp8dwL" role="37vLTx">
                  <node concept="2OqwBi" id="4NGxdIp8dIU" role="3uHU7w">
                    <node concept="13iPFW" id="4NGxdIp8dwW" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4NGxdIp8efK" role="2OqNvi">
                      <ref role="3TsBF5" to="aw7t:4NGxdIp7FCf" resolve="maxCapacity" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4NGxdIp8bPC" role="3uHU7B">
                    <node concept="13iPFW" id="4NGxdIp8bE4" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4NGxdIp8cDy" role="2OqNvi">
                      <ref role="3TsBF5" to="aw7t:4NGxdIp7FCo" resolve="voltage" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4NGxdIp89Zr" role="37vLTJ">
                  <node concept="13iPFW" id="4NGxdIp89_V" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4NGxdIp8an$" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:4NGxdIp7FCh" resolve="percentUsage" />
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
      <property role="TrG5h" value="decreaseVoltage" />
      <node concept="3Tm1VV" id="4NGxdIp8l_w" role="1B3o_S" />
      <node concept="3cqZAl" id="4NGxdIp8lXD" role="3clF45" />
      <node concept="3clFbS" id="4NGxdIp8l_y" role="3clF47">
        <node concept="3clFbJ" id="4NGxdIp8lYB" role="3cqZAp">
          <node concept="2d3UOw" id="4NGxdIp8oes" role="3clFbw">
            <node concept="3cmrfG" id="4NGxdIp8oll" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="3cpWsd" id="4NGxdIp8nj0" role="3uHU7B">
              <node concept="2OqwBi" id="4NGxdIp8m8h" role="3uHU7B">
                <node concept="13iPFW" id="4NGxdIp8lYV" role="2Oq$k0" />
                <node concept="3TrcHB" id="4NGxdIp8mjD" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:4NGxdIp7FCo" resolve="voltage" />
                </node>
              </node>
              <node concept="37vLTw" id="4NGxdIp8nlB" role="3uHU7w">
                <ref role="3cqZAo" node="4NGxdIp8lYf" resolve="increment" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4NGxdIp8lYD" role="3clFbx">
            <node concept="3clFbF" id="4NGxdIp8os8" role="3cqZAp">
              <node concept="d5anL" id="4NGxdIp8pL4" role="3clFbG">
                <node concept="37vLTw" id="4NGxdIp8pNt" role="37vLTx">
                  <ref role="3cqZAo" node="4NGxdIp8lYf" resolve="increment" />
                </node>
                <node concept="2OqwBi" id="4NGxdIp8ozQ" role="37vLTJ">
                  <node concept="13iPFW" id="4NGxdIp8os7" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4NGxdIp8oU5" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:4NGxdIp7FCo" resolve="voltage" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4NGxdIp8qiU" role="3cqZAp">
              <node concept="37vLTI" id="4NGxdIp8rVy" role="3clFbG">
                <node concept="FJ1c_" id="4NGxdIp8ttn" role="37vLTx">
                  <node concept="2OqwBi" id="4NGxdIp8tFw" role="3uHU7w">
                    <node concept="13iPFW" id="4NGxdIp8tty" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4NGxdIp8ucm" role="2OqNvi">
                      <ref role="3TsBF5" to="aw7t:4NGxdIp7FCf" resolve="maxCapacity" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4NGxdIp8s5u" role="3uHU7B">
                    <node concept="13iPFW" id="4NGxdIp8rVW" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4NGxdIp8sA8" role="2OqNvi">
                      <ref role="3TsBF5" to="aw7t:4NGxdIp7FCo" resolve="voltage" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4NGxdIp8q$3" role="37vLTJ">
                  <node concept="13iPFW" id="4NGxdIp8qiS" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4NGxdIp8qWc" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:4NGxdIp7FCh" resolve="percentUsage" />
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
      <property role="TrG5h" value="connectGrid" />
      <node concept="3Tm1VV" id="4NGxdIp8v9P" role="1B3o_S" />
      <node concept="3cqZAl" id="4NGxdIp8v$9" role="3clF45" />
      <node concept="3clFbS" id="4NGxdIp8v9R" role="3clF47">
        <node concept="3clFbF" id="4NGxdIp8wXw" role="3cqZAp">
          <node concept="37vLTI" id="4NGxdIp8xAM" role="3clFbG">
            <node concept="37vLTw" id="4NGxdIp8HI3" role="37vLTx">
              <ref role="3cqZAo" node="4NGxdIp8HD$" resolve="connect" />
            </node>
            <node concept="2OqwBi" id="4NGxdIp8x56" role="37vLTJ">
              <node concept="13iPFW" id="4NGxdIp8wXv" role="2Oq$k0" />
              <node concept="3TrEf2" id="4NGxdIp8xgs" role="2OqNvi">
                <ref role="3Tt5mk" to="aw7t:4NGxdIp7FC_" resolve="ConnectedGrid" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4NGxdIp8HD$" role="3clF46">
        <property role="TrG5h" value="connect" />
        <node concept="3Tqbb2" id="4NGxdIp8HDz" role="1tU5fm">
          <ref role="ehGHo" to="aw7t:4NGxdIp7Fe8" resolve="PowerGrid" />
        </node>
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
              <node concept="3TrcHB" id="4NGxdIp7UNH" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:4NGxdIp7FCf" resolve="maxCapacity" />
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
              <node concept="3TrcHB" id="4NGxdIp7WYd" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:4NGxdIp7FCh" resolve="percentUsage" />
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
              <node concept="3TrcHB" id="4NGxdIp7Ytk" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:4NGxdIp7FCo" resolve="voltage" />
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
              <node concept="3TrcHB" id="4NGxdIp805$" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:4NGxdIp7FCk" resolve="efficieny" />
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
              <node concept="3TrcHB" id="4NGxdIp81rm" role="2OqNvi">
                <ref role="3TsBF5" to="aw7t:4NGxdIp7FCt" resolve="sector" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

