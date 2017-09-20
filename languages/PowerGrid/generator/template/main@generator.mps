<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c1ed82f3-bfb1-46e4-a5d4-5cd54c6af72a(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="aw7t" ref="r:2a8ae552-038d-4f4d-a413-89014cd6b087(PowerGrid.structure)" />
    <import index="66tq" ref="r:b4263613-04e2-445e-bee6-d68be65f39c8(PowerGrid.Runtime.Utils)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="8t2c" ref="06938a7a-d23b-45e2-95a4-0d0c6d8a569c/java:nz.ac.victoria.swen424(ExternalCode/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="937236280924494202" name="jetbrains.mps.baseLanguageInternal.structure.ExtractStaticInnerClassConcept" flags="ig" index="267m8k" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="bUwia" id="2YPL$eqX1lq">
    <property role="TrG5h" value="main" />
    <node concept="3lhOvk" id="6Lad368QyT1" role="3lj3bC">
      <ref role="30HIoZ" to="aw7t:3pcEwkEWqD2" resolve="PowerGridSimulator" />
      <ref role="3lhOvi" node="6Lad368Qz3Q" resolve="PowerGridSimulator" />
    </node>
    <node concept="3aamgX" id="6Lad368QiX_" role="3acgRq">
      <ref role="30HIoZ" to="aw7t:24XvQ732hTQ" resolve="Producer" />
      <node concept="j$656" id="6Lad368QiXA" role="1lVwrX">
        <ref role="v9R2y" node="6Lad368QiXz" resolve="reduce_Producer" />
      </node>
    </node>
    <node concept="3aamgX" id="Kb51dro4xU" role="3acgRq">
      <ref role="30HIoZ" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
      <node concept="j$656" id="Kb51dro4y2" role="1lVwrX">
        <ref role="v9R2y" node="Kb51dro4y0" resolve="reduce_Transformer" />
      </node>
    </node>
    <node concept="3aamgX" id="7IoK3S59Eck" role="3acgRq">
      <ref role="30HIoZ" to="aw7t:50o97QFMYra" resolve="Consumer" />
      <node concept="j$656" id="7IoK3S59Ecs" role="1lVwrX">
        <ref role="v9R2y" node="50o97QFNQSp" resolve="reduce_Consumer" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="6Lad368QiXz">
    <property role="TrG5h" value="reduce_Producer" />
    <ref role="3gUMe" to="aw7t:24XvQ732hTQ" resolve="Producer" />
    <node concept="267m8k" id="6Lad368Uivr" role="13RCb5">
      <property role="TrG5h" value="Foo" />
      <node concept="3clFb_" id="6Lad368UiJn" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="Bar" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="6Lad368UiJq" role="3clF47">
          <node concept="3cpWs8" id="6Lad368Upjt" role="3cqZAp">
            <node concept="3cpWsn" id="6Lad368Upjw" role="3cpWs9">
              <property role="TrG5h" value="_producers" />
              <node concept="_YKpA" id="6Lad368Upjp" role="1tU5fm">
                <node concept="3uibUv" id="3anGR8rZNUX" role="_ZDj9">
                  <ref role="3uigEE" to="8t2c:~ElProducer" resolve="ElProducer" />
                </node>
              </node>
              <node concept="2ShNRf" id="6Lad368Upwd" role="33vP2m">
                <node concept="2Jqq0_" id="6Lad368UpFn" role="2ShVmc">
                  <node concept="3uibUv" id="3anGR8rZTm7" role="HW$YZ">
                    <ref role="3uigEE" to="8t2c:~ElProducer" resolve="ElProducer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6Lad368UiJZ" role="3cqZAp">
            <node concept="2OqwBi" id="6Lad368Ujth" role="3clFbG">
              <node concept="37vLTw" id="6Lad368Uq3P" role="2Oq$k0">
                <ref role="3cqZAo" node="6Lad368Upjw" resolve="_producers" />
              </node>
              <node concept="TSZUe" id="6Lad368Uk4V" role="2OqNvi">
                <node concept="2ShNRf" id="6Lad368UlAb" role="25WWJ7">
                  <node concept="1pGfFk" id="6Lad368UlTx" role="2ShVmc">
                    <ref role="37wK5l" to="8t2c:~ElProducer.&lt;init&gt;(java.lang.String,int,int)" resolve="ElProducer" />
                    <node concept="Xl_RD" id="6Lad368UvVF" role="37wK5m">
                      <property role="Xl_RC" value="name" />
                      <node concept="17Uvod" id="6Lad368Uysj" role="lGtFl">
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <property role="2qtEX9" value="value" />
                        <node concept="3zFVjK" id="6Lad368Uysm" role="3zH0cK">
                          <node concept="3clFbS" id="6Lad368Uysn" role="2VODD2">
                            <node concept="3clFbF" id="6Lad368Uyst" role="3cqZAp">
                              <node concept="2OqwBi" id="6Lad368Uyso" role="3clFbG">
                                <node concept="3TrcHB" id="6Lad368Uysr" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                                <node concept="30H73N" id="6Lad368Uyss" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="6Lad368Um2B" role="37wK5m">
                      <property role="3cmrfH" value="10" />
                      <node concept="17Uvod" id="6Lad368Uw6M" role="lGtFl">
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                        <property role="2qtEX9" value="value" />
                        <node concept="3zFVjK" id="6Lad368Uw6P" role="3zH0cK">
                          <node concept="3clFbS" id="6Lad368Uw6Q" role="2VODD2">
                            <node concept="3clFbF" id="6Lad368Uw6W" role="3cqZAp">
                              <node concept="2OqwBi" id="6Lad368Uw6R" role="3clFbG">
                                <node concept="3TrcHB" id="6Lad368Uxvp" role="2OqNvi">
                                  <ref role="3TsBF5" to="aw7t:24XvQ732hTT" resolve="MinProduction" />
                                </node>
                                <node concept="30H73N" id="6Lad368Uw6V" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="6Lad368Umje" role="37wK5m">
                      <property role="3cmrfH" value="10" />
                      <node concept="17Uvod" id="6Lad368Uwtw" role="lGtFl">
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                        <property role="2qtEX9" value="value" />
                        <node concept="3zFVjK" id="6Lad368Uwtz" role="3zH0cK">
                          <node concept="3clFbS" id="6Lad368Uwt$" role="2VODD2">
                            <node concept="3clFbF" id="6Lad368UwtE" role="3cqZAp">
                              <node concept="2OqwBi" id="6Lad368Uwt_" role="3clFbG">
                                <node concept="3TrcHB" id="6Lad368UwtC" role="2OqNvi">
                                  <ref role="3TsBF5" to="aw7t:24XvQ732kGm" resolve="MaxProduction" />
                                </node>
                                <node concept="30H73N" id="6Lad368UwtD" role="2Oq$k0" />
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
            <node concept="raruj" id="6Lad368Urjd" role="lGtFl" />
          </node>
        </node>
        <node concept="3Tm1VV" id="6Lad368UiJ5" role="1B3o_S" />
        <node concept="3cqZAl" id="6Lad368UiJj" role="3clF45" />
      </node>
      <node concept="3Tm1VV" id="6Lad368Uivv" role="1B3o_S" />
      <node concept="3uibUv" id="6Lad368Uivw" role="1zkMxy">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6Lad368Qz3Q">
    <property role="TrG5h" value="PowerGridSimulator" />
    <node concept="312cEg" id="6Lad368R4N5" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="_producers" />
      <property role="3TUv4t" value="false" />
      <node concept="_YKpA" id="6Lad368R4DF" role="1tU5fm">
        <node concept="3uibUv" id="3anGR8s0gvj" role="_ZDj9">
          <ref role="3uigEE" to="8t2c:~ElProducer" resolve="ElProducer" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="Kb51drnOYO" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="_transformers" />
      <property role="3TUv4t" value="false" />
      <node concept="_YKpA" id="Kb51drnMMv" role="1tU5fm">
        <node concept="3uibUv" id="69N69d03Phl" role="_ZDj9">
          <ref role="3uigEE" to="66tq:Kb51drnN1a" resolve="ElTransformer" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7IoK3S59rx8" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="_consumers" />
      <property role="3TUv4t" value="false" />
      <node concept="_YKpA" id="7IoK3S59r9E" role="1tU5fm">
        <node concept="3uibUv" id="7IoK3S59rx3" role="_ZDj9">
          <ref role="3uigEE" to="66tq:50o97QFMYjg" resolve="ElConsumer" />
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="6Lad368Qz4z" role="jymVt">
      <node concept="3cqZAl" id="6Lad368Qz4$" role="3clF45" />
      <node concept="3clFbS" id="6Lad368Qz4A" role="3clF47">
        <node concept="3clFbF" id="6Lad368R56e" role="3cqZAp">
          <node concept="37vLTI" id="6Lad368R8JF" role="3clFbG">
            <node concept="2ShNRf" id="6Lad368R8QY" role="37vLTx">
              <node concept="2Jqq0_" id="6Lad368R8QM" role="2ShVmc">
                <node concept="3uibUv" id="3anGR8s0gcd" role="HW$YZ">
                  <ref role="3uigEE" to="8t2c:~ElProducer" resolve="ElProducer" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6Lad368R56c" role="37vLTJ">
              <ref role="3cqZAo" node="6Lad368R4N5" resolve="_producers" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Lad368Q_hw" role="3cqZAp">
          <node concept="2OqwBi" id="6Lad368Q_K0" role="3clFbG">
            <node concept="10M0yZ" id="6Lad368Q_pY" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6Lad368QAqT" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="6Lad368QAss" role="37wK5m">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
          <node concept="2b32R4" id="6Lad368QSPa" role="lGtFl">
            <node concept="3JmXsc" id="6Lad368QSPd" role="2P8S$">
              <node concept="3clFbS" id="6Lad368QSPe" role="2VODD2">
                <node concept="3clFbF" id="6Lad368QSPk" role="3cqZAp">
                  <node concept="2OqwBi" id="6Lad368QSPf" role="3clFbG">
                    <node concept="3Tsc0h" id="6Lad368QSPi" role="2OqNvi">
                      <ref role="3TtcxE" to="aw7t:24XvQ732kGA" resolve="Producers" />
                    </node>
                    <node concept="30H73N" id="6Lad368QSPj" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Kb51drnPeQ" role="3cqZAp" />
        <node concept="3clFbF" id="Kb51drnPG_" role="3cqZAp">
          <node concept="37vLTI" id="Kb51drnUDW" role="3clFbG">
            <node concept="2ShNRf" id="Kb51drnULb" role="37vLTx">
              <node concept="2Jqq0_" id="Kb51drnUKZ" role="2ShVmc">
                <node concept="3uibUv" id="69N69d03P_g" role="HW$YZ">
                  <ref role="3uigEE" to="66tq:Kb51drnN1a" resolve="ElTransformer" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="Kb51drnPGz" role="37vLTJ">
              <ref role="3cqZAo" node="Kb51drnOYO" resolve="_transformers" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Kb51dro0yV" role="3cqZAp">
          <node concept="2OqwBi" id="Kb51dro1f2" role="3clFbG">
            <node concept="10M0yZ" id="Kb51dro0SD" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="Kb51dro1_2" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="Kb51dro1Bv" role="37wK5m">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
          <node concept="2b32R4" id="Kb51dro1Y0" role="lGtFl">
            <node concept="3JmXsc" id="Kb51dro1Y3" role="2P8S$">
              <node concept="3clFbS" id="Kb51dro1Y4" role="2VODD2">
                <node concept="3clFbF" id="Kb51dro1Ya" role="3cqZAp">
                  <node concept="2OqwBi" id="Kb51dro1Y5" role="3clFbG">
                    <node concept="3Tsc0h" id="Kb51dro1Y8" role="2OqNvi">
                      <ref role="3TtcxE" to="aw7t:7rDXPBEWeTI" resolve="Transformers" />
                    </node>
                    <node concept="30H73N" id="Kb51dro1Y9" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7IoK3S59pBg" role="3cqZAp" />
        <node concept="3clFbF" id="7IoK3S59xJu" role="3cqZAp">
          <node concept="37vLTI" id="7IoK3S59_07" role="3clFbG">
            <node concept="2ShNRf" id="7IoK3S59_7F" role="37vLTx">
              <node concept="2Jqq0_" id="7IoK3S59BsG" role="2ShVmc">
                <node concept="3uibUv" id="7IoK3S59BKt" role="HW$YZ">
                  <ref role="3uigEE" to="66tq:50o97QFMYjg" resolve="ElConsumer" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7IoK3S59xJs" role="37vLTJ">
              <ref role="3cqZAo" node="7IoK3S59rx8" resolve="_consumers" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7IoK3S59Cm8" role="3cqZAp">
          <node concept="2OqwBi" id="7IoK3S59DdA" role="3clFbG">
            <node concept="10M0yZ" id="7IoK3S59CQS" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="7IoK3S59DT7" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="7IoK3S59DTW" role="37wK5m">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
          <node concept="2b32R4" id="7IoK3S59E1L" role="lGtFl">
            <node concept="3JmXsc" id="7IoK3S59E1O" role="2P8S$">
              <node concept="3clFbS" id="7IoK3S59E1P" role="2VODD2">
                <node concept="3clFbF" id="7IoK3S59E1V" role="3cqZAp">
                  <node concept="2OqwBi" id="7IoK3S59E1Q" role="3clFbG">
                    <node concept="3Tsc0h" id="7IoK3S59E1T" role="2OqNvi">
                      <ref role="3TtcxE" to="aw7t:7IoK3S59emI" resolve="Consumers" />
                    </node>
                    <node concept="30H73N" id="7IoK3S59E1U" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6Lad368Qz4n" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6Lad368RSEr" role="jymVt" />
    <node concept="3clFb_" id="6Lad368RTxH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="Test" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6Lad368RTxK" role="3clF47">
        <node concept="3clFbH" id="6Lad368RU8r" role="3cqZAp" />
      </node>
      <node concept="3Tm1VV" id="6Lad368RTfK" role="1B3o_S" />
      <node concept="3cqZAl" id="6Lad368RTxB" role="3clF45" />
      <node concept="37vLTG" id="6Lad368RTPA" role="3clF46">
        <property role="TrG5h" value="i" />
        <node concept="10Oyi0" id="6Lad368RTP_" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="6Lad368Qz3R" role="1B3o_S" />
    <node concept="n94m4" id="6Lad368Qz3S" role="lGtFl">
      <ref role="n9lRv" to="aw7t:3pcEwkEWqD2" resolve="PowerGridSimulator" />
    </node>
  </node>
  <node concept="13MO4I" id="50o97QFNQSp">
    <property role="TrG5h" value="reduce_Consumer" />
    <ref role="3gUMe" to="aw7t:50o97QFMYra" resolve="Consumer" />
    <node concept="312cEu" id="50o97QFNT3N" role="13RCb5">
      <property role="TrG5h" value="Foo" />
      <node concept="3clFb_" id="50o97QFNT4x" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="Bar" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="50o97QFNT4$" role="3clF47">
          <node concept="3cpWs8" id="50o97QFNT4S" role="3cqZAp">
            <node concept="3cpWsn" id="50o97QFNT4V" role="3cpWs9">
              <property role="TrG5h" value="_consumers" />
              <node concept="_YKpA" id="50o97QFNT4Q" role="1tU5fm">
                <node concept="3uibUv" id="50o97QFNT5f" role="_ZDj9">
                  <ref role="3uigEE" to="66tq:50o97QFMYjg" resolve="ElConsumer" />
                </node>
              </node>
              <node concept="2ShNRf" id="50o97QFNT6F" role="33vP2m">
                <node concept="2Jqq0_" id="50o97QFNTcA" role="2ShVmc">
                  <node concept="3uibUv" id="50o97QFNTqr" role="HW$YZ">
                    <ref role="3uigEE" to="66tq:50o97QFMYjg" resolve="ElConsumer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="15nlfvPiJYr" role="3cqZAp">
            <node concept="2OqwBi" id="15nlfvPiM9u" role="3clFbG">
              <node concept="37vLTw" id="15nlfvPiKAf" role="2Oq$k0">
                <ref role="3cqZAo" node="50o97QFNT4V" resolve="_consumers" />
              </node>
              <node concept="TSZUe" id="15nlfvPiNcH" role="2OqNvi">
                <node concept="2ShNRf" id="15nlfvPiNey" role="25WWJ7">
                  <node concept="1pGfFk" id="15nlfvPiU0r" role="2ShVmc">
                    <ref role="37wK5l" to="66tq:50o97QFMYxM" resolve="ElConsumer" />
                    <node concept="Xl_RD" id="15nlfvPiVgc" role="37wK5m">
                      <property role="Xl_RC" value="name" />
                      <node concept="17Uvod" id="15nlfvPiZ0p" role="lGtFl">
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <property role="2qtEX9" value="value" />
                        <node concept="3zFVjK" id="15nlfvPiZ0s" role="3zH0cK">
                          <node concept="3clFbS" id="15nlfvPiZ0t" role="2VODD2">
                            <node concept="3clFbF" id="15nlfvPiZ0z" role="3cqZAp">
                              <node concept="2OqwBi" id="15nlfvPiZ0u" role="3clFbG">
                                <node concept="3TrcHB" id="15nlfvPiZ0x" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                                <node concept="30H73N" id="15nlfvPiZ0y" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="15nlfvPiVnh" role="37wK5m">
                      <property role="3cmrfH" value="5" />
                      <node concept="17Uvod" id="15nlfvPiZiA" role="lGtFl">
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                        <property role="2qtEX9" value="value" />
                        <node concept="3zFVjK" id="15nlfvPiZiB" role="3zH0cK">
                          <node concept="3clFbS" id="15nlfvPiZiC" role="2VODD2">
                            <node concept="3clFbF" id="15nlfvPj1vx" role="3cqZAp">
                              <node concept="2OqwBi" id="15nlfvPj1Lr" role="3clFbG">
                                <node concept="30H73N" id="15nlfvPj1vw" role="2Oq$k0" />
                                <node concept="3TrcHB" id="15nlfvPj41_" role="2OqNvi">
                                  <ref role="3TsBF5" to="aw7t:50o97QFMYs3" resolve="MinConsumption" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="15nlfvPiVpj" role="37wK5m">
                      <property role="3cmrfH" value="5" />
                      <node concept="17Uvod" id="15nlfvPj0a8" role="lGtFl">
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                        <property role="2qtEX9" value="value" />
                        <node concept="3zFVjK" id="15nlfvPj0a9" role="3zH0cK">
                          <node concept="3clFbS" id="15nlfvPj0aa" role="2VODD2">
                            <node concept="3clFbF" id="15nlfvPj4LS" role="3cqZAp">
                              <node concept="2OqwBi" id="15nlfvPj53M" role="3clFbG">
                                <node concept="30H73N" id="15nlfvPj4LR" role="2Oq$k0" />
                                <node concept="3TrcHB" id="15nlfvPj5It" role="2OqNvi">
                                  <ref role="3TsBF5" to="aw7t:50o97QFMYs5" resolve="MaxConsumption" />
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
            <node concept="raruj" id="15nlfvPiX_K" role="lGtFl" />
          </node>
        </node>
        <node concept="3Tm1VV" id="50o97QFNT4o" role="1B3o_S" />
        <node concept="3cqZAl" id="50o97QFNT4u" role="3clF45" />
      </node>
      <node concept="3Tm1VV" id="50o97QFNT3O" role="1B3o_S" />
      <node concept="3uibUv" id="50o97QFNT4e" role="1zkMxy">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="Kb51dro4y0">
    <property role="TrG5h" value="reduce_Transformer" />
    <ref role="3gUMe" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
    <node concept="312cEu" id="Kb51dro660" role="13RCb5">
      <property role="TrG5h" value="Foo" />
      <node concept="3uibUv" id="6qPpZy2sHaG" role="1zkMxy">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3clFb_" id="Kb51dro66$" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="Bar" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="Kb51dro66B" role="3clF47">
          <node concept="3cpWs8" id="Kb51dro67F" role="3cqZAp">
            <node concept="3cpWsn" id="Kb51dro67I" role="3cpWs9">
              <property role="TrG5h" value="_transformers" />
              <node concept="_YKpA" id="Kb51dro67D" role="1tU5fm">
                <node concept="3uibUv" id="69N69d03Gk5" role="_ZDj9">
                  <ref role="3uigEE" to="66tq:Kb51drnN1a" resolve="ElTransformer" />
                </node>
              </node>
              <node concept="2ShNRf" id="Kb51dro6a_" role="33vP2m">
                <node concept="2Jqq0_" id="Kb51dro6gA" role="2ShVmc">
                  <node concept="3uibUv" id="69N69d03FC$" role="HW$YZ">
                    <ref role="3uigEE" to="66tq:Kb51drnN1a" resolve="ElTransformer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="Kb51dro6w8" role="3cqZAp">
            <node concept="2OqwBi" id="Kb51dro77P" role="3clFbG">
              <node concept="37vLTw" id="Kb51dro6w6" role="2Oq$k0">
                <ref role="3cqZAo" node="Kb51dro67I" resolve="_transformers" />
              </node>
              <node concept="TSZUe" id="Kb51dro8aC" role="2OqNvi">
                <node concept="2ShNRf" id="Kb51dro8c7" role="25WWJ7">
                  <node concept="1pGfFk" id="Kb51dro8o8" role="2ShVmc">
                    <ref role="37wK5l" to="66tq:Kb51drnN7D" resolve="ElTransformer" />
                    <node concept="Xl_RD" id="6qPpZy2sRaN" role="37wK5m">
                      <property role="Xl_RC" value="name" />
                      <node concept="17Uvod" id="6qPpZy2sRUB" role="lGtFl">
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <property role="2qtEX9" value="value" />
                        <node concept="3zFVjK" id="6qPpZy2sRUE" role="3zH0cK">
                          <node concept="3clFbS" id="6qPpZy2sRUF" role="2VODD2">
                            <node concept="3clFbF" id="6qPpZy2sRUL" role="3cqZAp">
                              <node concept="2OqwBi" id="6qPpZy2sRUG" role="3clFbG">
                                <node concept="3TrcHB" id="6qPpZy2sRUJ" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                                <node concept="30H73N" id="6qPpZy2sRUK" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="6qPpZy2sRBN" role="37wK5m">
                      <property role="3cmrfH" value="10" />
                      <node concept="17Uvod" id="6qPpZy2sSc2" role="lGtFl">
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                        <property role="2qtEX9" value="value" />
                        <node concept="3zFVjK" id="6qPpZy2sSc5" role="3zH0cK">
                          <node concept="3clFbS" id="6qPpZy2sSc6" role="2VODD2">
                            <node concept="3clFbF" id="6qPpZy2sScc" role="3cqZAp">
                              <node concept="2OqwBi" id="6qPpZy2sSc7" role="3clFbG">
                                <node concept="3TrcHB" id="6qPpZy2sSca" role="2OqNvi">
                                  <ref role="3TsBF5" to="aw7t:7rDXPBEWeTt" resolve="MaxCapacity" />
                                </node>
                                <node concept="30H73N" id="6qPpZy2sScb" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="6qPpZy2t_KZ" role="37wK5m">
                      <property role="3cmrfH" value="20" />
                      <node concept="17Uvod" id="6qPpZy2tAP5" role="lGtFl">
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                        <property role="2qtEX9" value="value" />
                        <node concept="3zFVjK" id="6qPpZy2tAP6" role="3zH0cK">
                          <node concept="3clFbS" id="6qPpZy2tAP7" role="2VODD2">
                            <node concept="3clFbF" id="6qPpZy2tBV9" role="3cqZAp">
                              <node concept="2OqwBi" id="6qPpZy2tCd3" role="3clFbG">
                                <node concept="30H73N" id="6qPpZy2tBV8" role="2Oq$k0" />
                                <node concept="3TrcHB" id="6qPpZy2tC_J" role="2OqNvi">
                                  <ref role="3TsBF5" to="aw7t:7rDXPBEWeTx" resolve="efficiency" />
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
            <node concept="raruj" id="Kb51dro8yd" role="lGtFl" />
          </node>
        </node>
        <node concept="3Tm1VV" id="Kb51dro66q" role="1B3o_S" />
        <node concept="3cqZAl" id="Kb51dro66S" role="3clF45" />
      </node>
      <node concept="3Tm1VV" id="Kb51dro661" role="1B3o_S" />
    </node>
  </node>
</model>

