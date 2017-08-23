<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c1ed82f3-bfb1-46e4-a5d4-5cd54c6af72a(main@generator)">
  <persistence version="9" />
  <languages>
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="aw7t" ref="r:2a8ae552-038d-4f4d-a413-89014cd6b087(PowerGrid.structure)" />
    <import index="66tq" ref="r:b4263613-04e2-445e-bee6-d68be65f39c8(PowerGrid.Runtime.Utils)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
  </node>
  <node concept="13MO4I" id="6Lad368QiXz">
    <property role="TrG5h" value="reduce_Producer" />
    <ref role="3gUMe" to="aw7t:24XvQ732hTQ" resolve="Producer" />
    <node concept="2ShNRf" id="6Lad368Qt6v" role="13RCb5">
      <node concept="1pGfFk" id="6Lad368Qt6E" role="2ShVmc">
        <ref role="37wK5l" to="66tq:6Lad368QfJp" resolve="ElProducer" />
        <node concept="3cmrfG" id="6Lad368Qt6F" role="37wK5m">
          <property role="3cmrfH" value="10" />
          <node concept="17Uvod" id="6Lad368QufO" role="lGtFl">
            <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
            <property role="2qtEX9" value="value" />
            <node concept="3zFVjK" id="6Lad368QufR" role="3zH0cK">
              <node concept="3clFbS" id="6Lad368QufS" role="2VODD2">
                <node concept="3clFbF" id="6Lad368QufY" role="3cqZAp">
                  <node concept="2OqwBi" id="6Lad368QufT" role="3clFbG">
                    <node concept="3TrcHB" id="6Lad368QufW" role="2OqNvi">
                      <ref role="3TsBF5" to="aw7t:24XvQ732hTT" resolve="MinProduction" />
                    </node>
                    <node concept="30H73N" id="6Lad368QufX" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cmrfG" id="6Lad368Qt6G" role="37wK5m">
          <property role="3cmrfH" value="10" />
          <node concept="17Uvod" id="6Lad368QuGJ" role="lGtFl">
            <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
            <property role="2qtEX9" value="value" />
            <node concept="3zFVjK" id="6Lad368QuGM" role="3zH0cK">
              <node concept="3clFbS" id="6Lad368QuGN" role="2VODD2">
                <node concept="3clFbF" id="6Lad368QuGT" role="3cqZAp">
                  <node concept="2OqwBi" id="6Lad368QuGO" role="3clFbG">
                    <node concept="3TrcHB" id="6Lad368QuGR" role="2OqNvi">
                      <ref role="3TsBF5" to="aw7t:24XvQ732kGm" resolve="MaxProduction" />
                    </node>
                    <node concept="30H73N" id="6Lad368QuGS" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="6Lad368Qt7I" role="lGtFl" />
    </node>
  </node>
  <node concept="312cEu" id="6Lad368Qz3Q">
    <property role="TrG5h" value="PowerGridSimulator" />
    <node concept="3clFbW" id="6Lad368Qz4z" role="jymVt">
      <node concept="3cqZAl" id="6Lad368Qz4$" role="3clF45" />
      <node concept="3clFbS" id="6Lad368Qz4A" role="3clF47">
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
      </node>
      <node concept="3Tm1VV" id="6Lad368Qz4n" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="6Lad368Qz3R" role="1B3o_S" />
    <node concept="n94m4" id="6Lad368Qz3S" role="lGtFl">
      <ref role="n9lRv" to="aw7t:3pcEwkEWqD2" resolve="PowerGridSimulator" />
    </node>
  </node>
</model>

