<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0cd2d400-f339-4f4e-9bcb-4c18a4d45b05(PowerGrid.constraints)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="tp23" ref="r:00000000-0000-4000-0000-011c89590307(jetbrains.mps.lang.constraints.constraints)" />
    <import index="aw7t" ref="r:2a8ae552-038d-4f4d-a413-89014cd6b087(PowerGrid.structure)" implicit="true" />
    <import index="2n2r" ref="r:962bfeb6-6039-41c3-a510-88073d6ca721(PowerGrid.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807420587" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAParent" flags="ig" index="9SLcT" />
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="6738154313879680265" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_childNode" flags="nn" index="2H4GUG" />
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="8401916545537438642" name="jetbrains.mps.lang.constraints.structure.InheritedNodeScopeFactory" flags="ng" index="1dDu$B">
        <reference id="8401916545537438643" name="kind" index="1dDu$A" />
      </concept>
      <concept id="1159285995602" name="jetbrains.mps.lang.constraints.structure.NodeDefaultSearchScope" flags="ng" index="3EP7_v">
        <child id="1159286114227" name="searchScopeFactory" index="3EP$qY" />
      </concept>
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807532712" name="canBeParent" index="9SGkU" />
        <child id="1213098023997" name="property" index="1MhHOB" />
        <child id="1213101058038" name="defaultScope" index="1MtirG" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="7rDXPBEWvKN">
    <ref role="1M2myG" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
    <node concept="EnEH3" id="7rDXPBEWwji" role="1MhHOB">
      <ref role="EomxK" to="aw7t:7rDXPBEWeTt" resolve="MaxCapacity" />
      <node concept="QB0g5" id="7rDXPBEWwjn" role="QCWH9">
        <node concept="3clFbS" id="7rDXPBEWwjo" role="2VODD2">
          <node concept="3clFbF" id="7rDXPBEWxl3" role="3cqZAp">
            <node concept="3eOVzh" id="7rDXPBEWzeN" role="3clFbG">
              <node concept="1Wqviy" id="7rDXPBEWxl1" role="3uHU7B" />
              <node concept="3cmrfG" id="7rDXPBEWz$D" role="3uHU7w">
                <property role="3cmrfH" value="200" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="6qPpZy2sZw9" role="1MhHOB">
      <ref role="EomxK" to="aw7t:7rDXPBEWeTx" resolve="Efficiency" />
      <node concept="QB0g5" id="6qPpZy2sZOu" role="QCWH9">
        <node concept="3clFbS" id="6qPpZy2sZOv" role="2VODD2">
          <node concept="3clFbF" id="6qPpZy2sZVC" role="3cqZAp">
            <node concept="1Wc70l" id="6qPpZy2t5$c" role="3clFbG">
              <node concept="2d3UOw" id="6qPpZy2ttBG" role="3uHU7w">
                <node concept="1Wqviy" id="6qPpZy2t5NS" role="3uHU7B" />
                <node concept="3cmrfG" id="4qR36Xfvzsa" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="2dkUwp" id="4qR36Xfvy5y" role="3uHU7B">
                <node concept="3cmrfG" id="4qR36Xfvyk2" role="3uHU7w">
                  <property role="3cmrfH" value="100" />
                </node>
                <node concept="1Wqviy" id="6qPpZy2sZVB" role="3uHU7B" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="50o97QFN1e1">
    <ref role="1M2myG" to="aw7t:50o97QFMYra" resolve="Consumer" />
    <node concept="EnEH3" id="50o97QFN1e2" role="1MhHOB">
      <ref role="EomxK" to="aw7t:50o97QFMYs3" resolve="MinConsumption" />
      <node concept="QB0g5" id="50o97QFNk5F" role="QCWH9">
        <node concept="3clFbS" id="50o97QFNk5G" role="2VODD2">
          <node concept="3clFbF" id="50o97QFNkgp" role="3cqZAp">
            <node concept="1Wc70l" id="50o97QFNnDL" role="3clFbG">
              <node concept="2dkUwp" id="50o97QFNoPn" role="3uHU7w">
                <node concept="2OqwBi" id="50o97QFNp_4" role="3uHU7w">
                  <node concept="EsrRn" id="50o97QFNp4W" role="2Oq$k0" />
                  <node concept="3TrcHB" id="50o97QFNqa_" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:50o97QFMYs5" resolve="MaxConsumption" />
                  </node>
                </node>
                <node concept="1Wqviy" id="50o97QFNnPV" role="3uHU7B" />
              </node>
              <node concept="2d3UOw" id="50o97QFNlio" role="3uHU7B">
                <node concept="1Wqviy" id="50o97QFNkgo" role="3uHU7B" />
                <node concept="3cmrfG" id="50o97QFNlpL" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="50o97QFNlV1" role="1MhHOB">
      <ref role="EomxK" to="aw7t:50o97QFMYs5" resolve="MaxConsumption" />
      <node concept="QB0g5" id="50o97QFNm6Q" role="QCWH9">
        <node concept="3clFbS" id="50o97QFNm6R" role="2VODD2">
          <node concept="3clFbF" id="50o97QFNs$g" role="3cqZAp">
            <node concept="3eOSWO" id="50o97QFNsh5" role="3clFbG">
              <node concept="3cmrfG" id="50o97QFNsot" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="1Wqviy" id="50o97QFNsh7" role="3uHU7B" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="4ZDpIZbUNJd" role="1MhHOB">
      <ref role="EomxK" to="aw7t:4qWfsD8P0vX" resolve="TransName" />
      <node concept="QB0g5" id="4ZDpIZbUOaV" role="QCWH9">
        <node concept="3clFbS" id="4ZDpIZbUOaW" role="2VODD2">
          <node concept="2Gpval" id="4ZDpIZbXcT6" role="3cqZAp">
            <node concept="2GrKxI" id="4ZDpIZbXcT7" role="2Gsz3X">
              <property role="TrG5h" value="ty" />
            </node>
            <node concept="2OqwBi" id="4ZDpIZbXdXr" role="2GsD0m">
              <node concept="2OqwBi" id="4ZDpIZbXdkA" role="2Oq$k0">
                <node concept="EsrRn" id="4ZDpIZbXd7x" role="2Oq$k0" />
                <node concept="1mfA1w" id="4ZDpIZbXdAV" role="2OqNvi" />
              </node>
              <node concept="32TBzR" id="4ZDpIZbXekL" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="4ZDpIZbXcT9" role="2LFqv$">
              <node concept="3clFbJ" id="4ZDpIZbXeu3" role="3cqZAp">
                <node concept="2ZW3vV" id="4ZDpIZbXf57" role="3clFbw">
                  <node concept="3Tqbb2" id="4ZDpIZbXfhd" role="2ZW6by">
                    <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                  </node>
                  <node concept="2GrUjf" id="4ZDpIZbXeIn" role="2ZW6bz">
                    <ref role="2Gs0qQ" node="4ZDpIZbXcT7" resolve="ty" />
                  </node>
                </node>
                <node concept="3clFbS" id="4ZDpIZbXeu5" role="3clFbx">
                  <node concept="3cpWs8" id="4ZDpIZbXfAT" role="3cqZAp">
                    <node concept="3cpWsn" id="4ZDpIZbXfAW" role="3cpWs9">
                      <property role="TrG5h" value="temp" />
                      <node concept="3Tqbb2" id="4ZDpIZbXfAS" role="1tU5fm">
                        <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                      </node>
                      <node concept="1PxgMI" id="4ZDpIZbXgPh" role="33vP2m">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="4ZDpIZbXh26" role="3oSUPX">
                          <ref role="cht4Q" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                        </node>
                        <node concept="2GrUjf" id="4ZDpIZbXgsp" role="1m5AlR">
                          <ref role="2Gs0qQ" node="4ZDpIZbXcT7" resolve="ty" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="4ZDpIZbXhrZ" role="3cqZAp">
                    <node concept="3clFbS" id="4ZDpIZbXhs1" role="3clFbx">
                      <node concept="3cpWs6" id="4ZDpIZbXjVX" role="3cqZAp">
                        <node concept="3clFbT" id="4ZDpIZbXkwj" role="3cqZAk">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="4ZDpIZbXie4" role="3clFbw">
                      <node concept="2OqwBi" id="4ZDpIZbXiS4" role="3uHU7w">
                        <node concept="37vLTw" id="4ZDpIZbXiz7" role="2Oq$k0">
                          <ref role="3cqZAo" node="4ZDpIZbXfAW" resolve="temp" />
                        </node>
                        <node concept="2qgKlT" id="4ZDpIZbXjz6" role="2OqNvi">
                          <ref role="37wK5l" to="2n2r:4ZDpIZbNHXS" resolve="getName" />
                        </node>
                      </node>
                      <node concept="1Wqviy" id="4ZDpIZbXhKi" role="3uHU7B" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4ZDpIZbXliN" role="3cqZAp">
            <node concept="3clFbT" id="4ZDpIZbXlv5" role="3cqZAk">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="6Lad368PFz1">
    <ref role="1M2myG" to="aw7t:24XvQ732hTQ" resolve="Producer" />
    <node concept="EnEH3" id="6Lad368PFz2" role="1MhHOB">
      <ref role="EomxK" to="aw7t:24XvQ732kGm" resolve="MaxProduction" />
      <node concept="QB0g5" id="6Lad368PFz4" role="QCWH9">
        <node concept="3clFbS" id="6Lad368PFz5" role="2VODD2">
          <node concept="3clFbF" id="6Lad368PK4h" role="3cqZAp">
            <node concept="3eOSWO" id="6Lad368PLLa" role="3clFbG">
              <node concept="3cmrfG" id="6Lad368PLSz" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="1Wqviy" id="6Lad368PK4g" role="3uHU7B" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="6Lad368PSL2" role="1MhHOB">
      <ref role="EomxK" to="aw7t:24XvQ732hTT" resolve="MinProduction" />
      <node concept="QB0g5" id="6Lad368PSLb" role="QCWH9">
        <node concept="3clFbS" id="6Lad368PSLc" role="2VODD2">
          <node concept="3clFbF" id="6Lad368PSSl" role="3cqZAp">
            <node concept="1Wc70l" id="6Lad368PVA7" role="3clFbG">
              <node concept="2dkUwp" id="6Lad368PXqI" role="3uHU7w">
                <node concept="2OqwBi" id="6Lad368PYLi" role="3uHU7w">
                  <node concept="EsrRn" id="6Lad368PXRd" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6Lad368PZb8" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:24XvQ732kGm" resolve="MaxProduction" />
                  </node>
                </node>
                <node concept="1Wqviy" id="6Lad368PVMk" role="3uHU7B" />
              </node>
              <node concept="2d3UOw" id="6Lad368PU_e" role="3uHU7B">
                <node concept="1Wqviy" id="6Lad368PSSk" role="3uHU7B" />
                <node concept="3cmrfG" id="6Lad368PUGB" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="4ZDpIZbXH4L" role="1MhHOB">
      <ref role="EomxK" to="aw7t:4qWfsD8PyNN" resolve="TransName" />
      <node concept="QB0g5" id="4ZDpIZbXHwv" role="QCWH9">
        <node concept="3clFbS" id="4ZDpIZbXHww" role="2VODD2">
          <node concept="2Gpval" id="4ZDpIZbXHBC" role="3cqZAp">
            <node concept="2GrKxI" id="4ZDpIZbXHBD" role="2Gsz3X">
              <property role="TrG5h" value="ty" />
            </node>
            <node concept="2OqwBi" id="4ZDpIZbXIFX" role="2GsD0m">
              <node concept="2OqwBi" id="4ZDpIZbXI38" role="2Oq$k0">
                <node concept="EsrRn" id="4ZDpIZbXHQ3" role="2Oq$k0" />
                <node concept="1mfA1w" id="4ZDpIZbXIlt" role="2OqNvi" />
              </node>
              <node concept="32TBzR" id="4ZDpIZbXJ3j" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="4ZDpIZbXHBF" role="2LFqv$">
              <node concept="3clFbJ" id="4ZDpIZbXJcm" role="3cqZAp">
                <node concept="2ZW3vV" id="4ZDpIZbXJGh" role="3clFbw">
                  <node concept="3Tqbb2" id="4ZDpIZbXJSn" role="2ZW6by">
                    <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                  </node>
                  <node concept="2GrUjf" id="4ZDpIZbXJlr" role="2ZW6bz">
                    <ref role="2Gs0qQ" node="4ZDpIZbXHBD" resolve="ty" />
                  </node>
                </node>
                <node concept="3clFbS" id="4ZDpIZbXJco" role="3clFbx">
                  <node concept="3cpWs8" id="4ZDpIZbXKCq" role="3cqZAp">
                    <node concept="3cpWsn" id="4ZDpIZbXKCt" role="3cpWs9">
                      <property role="TrG5h" value="temp" />
                      <node concept="3Tqbb2" id="4ZDpIZbXKCp" role="1tU5fm">
                        <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                      </node>
                      <node concept="1PxgMI" id="4ZDpIZbXLN5" role="33vP2m">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="4ZDpIZbXLZU" role="3oSUPX">
                          <ref role="cht4Q" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                        </node>
                        <node concept="2GrUjf" id="4ZDpIZbXLqd" role="1m5AlR">
                          <ref role="2Gs0qQ" node="4ZDpIZbXHBD" resolve="ty" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="4ZDpIZbXMp$" role="3cqZAp">
                    <node concept="3clFbS" id="4ZDpIZbXMpA" role="3clFbx">
                      <node concept="3cpWs6" id="4ZDpIZbXOQe" role="3cqZAp">
                        <node concept="3clFbT" id="4ZDpIZbXPfg" role="3cqZAk">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="4ZDpIZbXN8l" role="3clFbw">
                      <node concept="2OqwBi" id="4ZDpIZbXNMl" role="3uHU7w">
                        <node concept="37vLTw" id="4ZDpIZbXNto" role="2Oq$k0">
                          <ref role="3cqZAo" node="4ZDpIZbXKCt" resolve="temp" />
                        </node>
                        <node concept="2qgKlT" id="4ZDpIZbXOtn" role="2OqNvi">
                          <ref role="37wK5l" to="2n2r:4ZDpIZbNHXS" resolve="getName" />
                        </node>
                      </node>
                      <node concept="1Wqviy" id="4ZDpIZbXMAC" role="3uHU7B" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4ZDpIZbXQ1K" role="3cqZAp">
            <node concept="3clFbT" id="4ZDpIZbXQ2p" role="3cqZAk">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="6L5ADlUjZ_d">
    <ref role="1M2myG" to="aw7t:3pcEwkEWqD2" resolve="PowerGridSimulator" />
    <node concept="3EP7_v" id="7VNv7V$vZFI" role="1MtirG">
      <node concept="1dDu$B" id="7VNv7V$w02C" role="3EP$qY">
        <ref role="1dDu$A" to="aw7t:3pcEwkEWqD2" resolve="PowerGridSimulator" />
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="4NGxdIp7FDZ">
    <ref role="1M2myG" to="aw7t:4NGxdIp910w" resolve="PowerGrid" />
    <node concept="EnEH3" id="4NGxdIp7I8b" role="1MhHOB">
      <ref role="EomxK" to="aw7t:4NGxdIp910z" resolve="maxCapacity" />
      <node concept="QB0g5" id="4NGxdIp7I8m" role="QCWH9">
        <node concept="3clFbS" id="4NGxdIp7I8n" role="2VODD2">
          <node concept="3clFbF" id="4NGxdIp7Ifw" role="3cqZAp">
            <node concept="3eOSWO" id="4NGxdIp7JW$" role="3clFbG">
              <node concept="3cmrfG" id="4NGxdIp7JWE" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="1Wqviy" id="4NGxdIp7Ifv" role="3uHU7B" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="4NGxdIp7KbS" role="1MhHOB">
      <ref role="EomxK" to="aw7t:4NGxdIp910_" resolve="percentusage" />
      <node concept="QB0g5" id="4NGxdIp7KfR" role="QCWH9">
        <node concept="3clFbS" id="4NGxdIp7KfS" role="2VODD2">
          <node concept="3clFbF" id="4NGxdIp7KqF" role="3cqZAp">
            <node concept="1Wc70l" id="4NGxdIp7MAC" role="3clFbG">
              <node concept="2dkUwp" id="4NGxdIp7NKU" role="3uHU7w">
                <node concept="3cmrfG" id="4NGxdIp7NWZ" role="3uHU7w">
                  <property role="3cmrfH" value="100" />
                </node>
                <node concept="1Wqviy" id="4NGxdIp7MMH" role="3uHU7B" />
              </node>
              <node concept="2d3UOw" id="4NGxdIp7L_2" role="3uHU7B">
                <node concept="1Wqviy" id="4NGxdIp7KqE" role="3uHU7B" />
                <node concept="3cmrfG" id="4NGxdIp7LGr" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="4NGxdIp7OCc" role="1MhHOB">
      <ref role="EomxK" to="aw7t:4NGxdIp910C" resolve="efficiency" />
      <node concept="QB0g5" id="4NGxdIp7OCM" role="QCWH9">
        <node concept="3clFbS" id="4NGxdIp7OCN" role="2VODD2">
          <node concept="3clFbF" id="4NGxdIp7OND" role="3cqZAp">
            <node concept="1Wc70l" id="4NGxdIp7QJ6" role="3clFbG">
              <node concept="2dkUwp" id="4NGxdIp7RTo" role="3uHU7w">
                <node concept="3cmrfG" id="4NGxdIp7S5t" role="3uHU7w">
                  <property role="3cmrfH" value="100" />
                </node>
                <node concept="1Wqviy" id="4NGxdIp7QVb" role="3uHU7B" />
              </node>
              <node concept="2d3UOw" id="4NGxdIp7PPC" role="3uHU7B">
                <node concept="1Wqviy" id="4NGxdIp7ONC" role="3uHU7B" />
                <node concept="3cmrfG" id="4NGxdIp7PX1" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="4NGxdIp7SoA" role="1MhHOB">
      <ref role="EomxK" to="aw7t:4NGxdIp910G" resolve="voltage" />
      <node concept="QB0g5" id="4NGxdIp7Spt" role="QCWH9">
        <node concept="3clFbS" id="4NGxdIp7Spu" role="2VODD2">
          <node concept="3clFbF" id="4NGxdIp7SwB" role="3cqZAp">
            <node concept="3eOSWO" id="4NGxdIp7TEY" role="3clFbG">
              <node concept="3cmrfG" id="4NGxdIp7TF4" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="1Wqviy" id="4NGxdIp7SwA" role="3uHU7B" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="4ZDpIZbYptO" role="1MhHOB">
      <ref role="EomxK" to="aw7t:4qWfsD8PBjw" resolve="ConnectTransName1" />
      <node concept="QB0g5" id="4ZDpIZbYpKh" role="QCWH9">
        <node concept="3clFbS" id="4ZDpIZbYpKi" role="2VODD2">
          <node concept="2Gpval" id="4ZDpIZbYpRq" role="3cqZAp">
            <node concept="2GrKxI" id="4ZDpIZbYpRr" role="2Gsz3X">
              <property role="TrG5h" value="ty" />
            </node>
            <node concept="2OqwBi" id="4ZDpIZbYqVJ" role="2GsD0m">
              <node concept="2OqwBi" id="4ZDpIZbYqiU" role="2Oq$k0">
                <node concept="EsrRn" id="4ZDpIZbYq5P" role="2Oq$k0" />
                <node concept="1mfA1w" id="4ZDpIZbYq_f" role="2OqNvi" />
              </node>
              <node concept="32TBzR" id="4ZDpIZbYrj5" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="4ZDpIZbYpRt" role="2LFqv$">
              <node concept="3clFbJ" id="4ZDpIZbYrs8" role="3cqZAp">
                <node concept="2ZW3vV" id="4ZDpIZbYrSf" role="3clFbw">
                  <node concept="3Tqbb2" id="4ZDpIZbYs4l" role="2ZW6by">
                    <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                  </node>
                  <node concept="2GrUjf" id="4ZDpIZbYr_d" role="2ZW6bz">
                    <ref role="2Gs0qQ" node="4ZDpIZbYpRr" resolve="ty" />
                  </node>
                </node>
                <node concept="3clFbS" id="4ZDpIZbYrsa" role="3clFbx">
                  <node concept="3cpWs8" id="4ZDpIZbYspM" role="3cqZAp">
                    <node concept="3cpWsn" id="4ZDpIZbYspP" role="3cpWs9">
                      <property role="TrG5h" value="temp" />
                      <node concept="3Tqbb2" id="4ZDpIZbYspL" role="1tU5fm">
                        <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                      </node>
                      <node concept="1PxgMI" id="4ZDpIZbYtKK" role="33vP2m">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="4ZDpIZbYtX_" role="3oSUPX">
                          <ref role="cht4Q" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                        </node>
                        <node concept="2GrUjf" id="4ZDpIZbYtnU" role="1m5AlR">
                          <ref role="2Gs0qQ" node="4ZDpIZbYpRr" resolve="ty" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="4ZDpIZbYunf" role="3cqZAp">
                    <node concept="3clFbS" id="4ZDpIZbYunh" role="3clFbx">
                      <node concept="3cpWs6" id="4ZDpIZbYx2V" role="3cqZAp">
                        <node concept="3clFbT" id="4ZDpIZbYx38" role="3cqZAk">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="4ZDpIZbYv60" role="3clFbw">
                      <node concept="2OqwBi" id="4ZDpIZbYvZ2" role="3uHU7w">
                        <node concept="37vLTw" id="4ZDpIZbYvr3" role="2Oq$k0">
                          <ref role="3cqZAo" node="4ZDpIZbYspP" resolve="temp" />
                        </node>
                        <node concept="2qgKlT" id="4ZDpIZbYwE4" role="2OqNvi">
                          <ref role="37wK5l" to="2n2r:4ZDpIZbNHXS" resolve="getName" />
                        </node>
                      </node>
                      <node concept="1Wqviy" id="4ZDpIZbYu$j" role="3uHU7B" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4ZDpIZbYxPC" role="3cqZAp">
            <node concept="3clFbT" id="4ZDpIZbYxQh" role="3cqZAk" />
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="4ZDpIZbYyTz" role="1MhHOB">
      <ref role="EomxK" to="aw7t:4qWfsD8PBjB" resolve="ConnectTransName2" />
      <node concept="QB0g5" id="4ZDpIZbYzGS" role="QCWH9">
        <node concept="3clFbS" id="4ZDpIZbYzGT" role="2VODD2">
          <node concept="2Gpval" id="4ZDpIZbYzO1" role="3cqZAp">
            <node concept="2GrKxI" id="4ZDpIZbYzO2" role="2Gsz3X">
              <property role="TrG5h" value="ty" />
            </node>
            <node concept="2OqwBi" id="4ZDpIZbY$OM" role="2GsD0m">
              <node concept="2OqwBi" id="4ZDpIZbY$fx" role="2Oq$k0">
                <node concept="EsrRn" id="4ZDpIZbY$2s" role="2Oq$k0" />
                <node concept="1mfA1w" id="4ZDpIZbY$ui" role="2OqNvi" />
              </node>
              <node concept="32TBzR" id="4ZDpIZbY_c8" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="4ZDpIZbYzO4" role="2LFqv$">
              <node concept="3clFbJ" id="4ZDpIZbY_lb" role="3cqZAp">
                <node concept="2ZW3vV" id="4ZDpIZbY_P5" role="3clFbw">
                  <node concept="3Tqbb2" id="4ZDpIZbYA1b" role="2ZW6by">
                    <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                  </node>
                  <node concept="2GrUjf" id="4ZDpIZbY_ug" role="2ZW6bz">
                    <ref role="2Gs0qQ" node="4ZDpIZbYzO2" resolve="ty" />
                  </node>
                </node>
                <node concept="3clFbS" id="4ZDpIZbY_ld" role="3clFbx">
                  <node concept="3cpWs8" id="4ZDpIZbYAmC" role="3cqZAp">
                    <node concept="3cpWsn" id="4ZDpIZbYAmF" role="3cpWs9">
                      <property role="TrG5h" value="temp" />
                      <node concept="3Tqbb2" id="4ZDpIZbYAmB" role="1tU5fm">
                        <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                      </node>
                      <node concept="1PxgMI" id="4ZDpIZbYBxj" role="33vP2m">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="4ZDpIZbYBI8" role="3oSUPX">
                          <ref role="cht4Q" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                        </node>
                        <node concept="2GrUjf" id="4ZDpIZbYB8r" role="1m5AlR">
                          <ref role="2Gs0qQ" node="4ZDpIZbYzO2" resolve="ty" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="4ZDpIZbYC7M" role="3cqZAp">
                    <node concept="3clFbS" id="4ZDpIZbYC7O" role="3clFbx">
                      <node concept="3cpWs6" id="4ZDpIZbYEfF" role="3cqZAp">
                        <node concept="3clFbT" id="4ZDpIZbYEfS" role="3cqZAk">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="4ZDpIZbYCQz" role="3clFbw">
                      <node concept="2OqwBi" id="4ZDpIZbYDbE" role="3uHU7w">
                        <node concept="37vLTw" id="4ZDpIZbYCQH" role="2Oq$k0">
                          <ref role="3cqZAo" node="4ZDpIZbYAmF" resolve="temp" />
                        </node>
                        <node concept="2qgKlT" id="4ZDpIZbYDQG" role="2OqNvi">
                          <ref role="37wK5l" to="2n2r:4ZDpIZbNHXS" resolve="getName" />
                        </node>
                      </node>
                      <node concept="1Wqviy" id="4ZDpIZbYCkQ" role="3uHU7B" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4ZDpIZbYF2o" role="3cqZAp">
            <node concept="3clFbT" id="4ZDpIZbYFs7" role="3cqZAk">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9SLcT" id="4NGxdIp7FZy" role="9SGkU">
      <node concept="3clFbS" id="4NGxdIp7FZz" role="2VODD2">
        <node concept="3clFbF" id="4NGxdIp7GU6" role="3cqZAp">
          <node concept="2OqwBi" id="4NGxdIp7HaD" role="3clFbG">
            <node concept="2H4GUG" id="4NGxdIp7GU5" role="2Oq$k0" />
            <node concept="1mIQ4w" id="4NGxdIp7Hxw" role="2OqNvi">
              <node concept="chp4Y" id="4NGxdIp7HHW" role="cj9EA">
                <ref role="cht4Q" to="aw7t:24XvQ732hTQ" resolve="Producer" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

