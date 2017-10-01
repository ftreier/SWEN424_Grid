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
    <import index="ykoa" ref="06938a7a-d23b-45e2-95a4-0d0c6d8a569c/java:nz.ac.victoria.swen424.weather(ExternalCode/)" />
    <import index="mgvq" ref="06938a7a-d23b-45e2-95a4-0d0c6d8a569c/java:nz.ac.victoria.swen424.mainTypes(ExternalCode/)" />
    <import index="91n3" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.xml.stream(JDK/)" />
    <import index="na6w" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.xml.stream.events(JDK/)" />
    <import index="e82u" ref="06938a7a-d23b-45e2-95a4-0d0c6d8a569c/java:javanet.staxutils(ExternalCode/)" />
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
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
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
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
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
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
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
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
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
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX" />
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="937236280924494202" name="jetbrains.mps.baseLanguageInternal.structure.ExtractStaticInnerClassConcept" flags="ig" index="267m8k" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138676077309" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="nn" index="uoxfO">
        <reference id="1138676095763" name="enumMember" index="uo_Cq" />
      </concept>
      <concept id="1146171026731" name="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum" flags="nn" index="3t7uKx">
        <child id="1146171026732" name="value" index="3t7uKA" />
      </concept>
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
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
    </language>
  </registry>
  <node concept="bUwia" id="2YPL$eqX1lq">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="5zwZig_0Iwx" role="3acgRq">
      <ref role="30HIoZ" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
      <node concept="j$656" id="5zwZig_0IBo" role="1lVwrX">
        <ref role="v9R2y" node="5zwZig_0IBk" resolve="reduce_Weather" />
      </node>
    </node>
    <node concept="3aamgX" id="6gi3O$9nYbh" role="3acgRq">
      <ref role="30HIoZ" to="aw7t:6gi3O$9nB7M" resolve="WeatherList" />
      <node concept="j$656" id="6gi3O$9nYbr" role="1lVwrX">
        <ref role="v9R2y" node="6gi3O$9nYbp" resolve="reduce_WeatherList" />
      </node>
    </node>
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
    <node concept="3aamgX" id="1G90Zx2m8nC" role="3acgRq">
      <ref role="30HIoZ" to="aw7t:4NGxdIp910w" resolve="PowerGrid" />
      <node concept="j$656" id="1G90Zx2nkE$" role="1lVwrX">
        <ref role="v9R2y" node="1G90Zx2m8ny" resolve="reduce_Grid" />
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
                <node concept="3uibUv" id="4MpnXkSGVZj" role="_ZDj9">
                  <ref role="3uigEE" to="mgvq:~ElProducer" resolve="ElProducer" />
                </node>
              </node>
              <node concept="2ShNRf" id="6Lad368Upwd" role="33vP2m">
                <node concept="2Jqq0_" id="6Lad368UpFn" role="2ShVmc">
                  <node concept="3uibUv" id="4MpnXkSGZAY" role="HW$YZ">
                    <ref role="3uigEE" to="mgvq:~ElProducer" resolve="ElProducer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1G90Zx2sr8e" role="3cqZAp">
            <node concept="3cpWsn" id="1G90Zx2sr8f" role="3cpWs9">
              <property role="TrG5h" value="producer" />
              <node concept="3uibUv" id="1G90Zx2sr8g" role="1tU5fm">
                <ref role="3uigEE" to="mgvq:~ElProducer" resolve="ElProducer" />
              </node>
              <node concept="2ShNRf" id="1G90Zx2sr_U" role="33vP2m">
                <node concept="1pGfFk" id="1G90Zx2srNs" role="2ShVmc">
                  <ref role="37wK5l" to="mgvq:~ElProducer.&lt;init&gt;(java.lang.String,int,int)" resolve="ElProducer" />
                  <node concept="Xl_RD" id="1G90Zx2srNT" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                    <node concept="17Uvod" id="1G90Zx2srOn" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1G90Zx2srOq" role="3zH0cK">
                        <node concept="3clFbS" id="1G90Zx2srOr" role="2VODD2">
                          <node concept="3clFbF" id="1G90Zx2srOx" role="3cqZAp">
                            <node concept="2OqwBi" id="1G90Zx2srOs" role="3clFbG">
                              <node concept="3TrcHB" id="1G90Zx2srOv" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                              <node concept="30H73N" id="1G90Zx2srOw" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="1G90Zx2ssb0" role="37wK5m">
                    <property role="3cmrfH" value="10" />
                    <node concept="17Uvod" id="1G90Zx2ssmb" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1G90Zx2ssme" role="3zH0cK">
                        <node concept="3clFbS" id="1G90Zx2ssmf" role="2VODD2">
                          <node concept="3clFbF" id="1G90Zx2ssml" role="3cqZAp">
                            <node concept="2OqwBi" id="1G90Zx2ssmg" role="3clFbG">
                              <node concept="3TrcHB" id="1G90Zx2ssmj" role="2OqNvi">
                                <ref role="3TsBF5" to="aw7t:24XvQ732hTT" resolve="MinProduction" />
                              </node>
                              <node concept="30H73N" id="1G90Zx2ssmk" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="1G90Zx2stfv" role="37wK5m">
                    <property role="3cmrfH" value="10" />
                    <node concept="17Uvod" id="1G90Zx2su8i" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1G90Zx2su8l" role="3zH0cK">
                        <node concept="3clFbS" id="1G90Zx2su8m" role="2VODD2">
                          <node concept="3clFbF" id="1G90Zx2su8s" role="3cqZAp">
                            <node concept="2OqwBi" id="1G90Zx2su8n" role="3clFbG">
                              <node concept="3TrcHB" id="1G90Zx2su8q" role="2OqNvi">
                                <ref role="3TsBF5" to="aw7t:24XvQ732kGm" resolve="MaxProduction" />
                              </node>
                              <node concept="30H73N" id="1G90Zx2su8r" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="1G90Zx2su__" role="lGtFl" />
          </node>
          <node concept="3clFbF" id="6Lad368UiJZ" role="3cqZAp">
            <node concept="2OqwBi" id="6Lad368Ujth" role="3clFbG">
              <node concept="37vLTw" id="6Lad368Uq3P" role="2Oq$k0">
                <ref role="3cqZAo" node="6Lad368Upjw" resolve="_producers" />
              </node>
              <node concept="TSZUe" id="1G90Zx2sv$l" role="2OqNvi">
                <node concept="37vLTw" id="1G90Zx2sv_R" role="25WWJ7">
                  <ref role="3cqZAo" node="1G90Zx2sr8f" resolve="producer" />
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
    <node concept="312cEg" id="6gi3O$9o8_V" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="_weather" />
      <property role="3TUv4t" value="false" />
      <node concept="_YKpA" id="6gi3O$9o7PY" role="1tU5fm">
        <node concept="3uibUv" id="6gi3O$9o8_R" role="_ZDj9">
          <ref role="3uigEE" to="ykoa:~WeatherValues" resolve="WeatherValues" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6Lad368R4N5" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="_producers" />
      <property role="3TUv4t" value="false" />
      <node concept="_YKpA" id="6Lad368R4DF" role="1tU5fm">
        <node concept="3uibUv" id="4MpnXkSGVSf" role="_ZDj9">
          <ref role="3uigEE" to="mgvq:~ElProducer" resolve="ElProducer" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="Kb51drnOYO" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="_transformers" />
      <property role="3TUv4t" value="false" />
      <node concept="_YKpA" id="Kb51drnMMv" role="1tU5fm">
        <node concept="3uibUv" id="6zE2twpyzYn" role="_ZDj9">
          <ref role="3uigEE" to="mgvq:~ElTransformer" resolve="ElTransformer" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7IoK3S59rx8" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="_consumers" />
      <property role="3TUv4t" value="false" />
      <node concept="_YKpA" id="7IoK3S59r9E" role="1tU5fm">
        <node concept="3uibUv" id="4HjWx5jKXeP" role="_ZDj9">
          <ref role="3uigEE" to="mgvq:~ElConsumer" resolve="ElConsumer" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1G90Zx2mVDV" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="_grids" />
      <property role="3TUv4t" value="false" />
      <node concept="_YKpA" id="1G90Zx2mUN6" role="1tU5fm">
        <node concept="3uibUv" id="1G90Zx2nbc3" role="_ZDj9">
          <ref role="3uigEE" to="mgvq:~ElGrid" resolve="ElGrid" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4HjWx5jKtF9" role="jymVt" />
    <node concept="2tJIrI" id="5n4GHB4fUu8" role="jymVt" />
    <node concept="3clFbW" id="6Lad368Qz4z" role="jymVt">
      <node concept="3cqZAl" id="6Lad368Qz4$" role="3clF45" />
      <node concept="3clFbS" id="6Lad368Qz4A" role="3clF47">
        <node concept="3cpWs8" id="4qE1Afm99jH" role="3cqZAp">
          <node concept="3cpWsn" id="4qE1Afm99jI" role="3cpWs9">
            <property role="TrG5h" value="wv" />
            <node concept="3uibUv" id="4qE1Afm99jJ" role="1tU5fm">
              <ref role="3uigEE" to="ykoa:~WeatherValues" resolve="WeatherValues" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gi3O$9obaY" role="3cqZAp">
          <node concept="37vLTI" id="6gi3O$9ofDJ" role="3clFbG">
            <node concept="2ShNRf" id="6gi3O$9ofLj" role="37vLTx">
              <node concept="2Jqq0_" id="6gi3O$9og2z" role="2ShVmc">
                <node concept="3uibUv" id="6gi3O$9ogmk" role="HW$YZ">
                  <ref role="3uigEE" to="ykoa:~WeatherValues" resolve="WeatherValues" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6gi3O$9obaW" role="37vLTJ">
              <ref role="3cqZAo" node="6gi3O$9o8_V" resolve="_weather" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gi3O$9ogVW" role="3cqZAp">
          <node concept="2OqwBi" id="6gi3O$9ohLd" role="3clFbG">
            <node concept="10M0yZ" id="6gi3O$9ohqD" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6gi3O$9oisI" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="6gi3O$9oiEj" role="37wK5m">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
          <node concept="2b32R4" id="6gi3O$9oiLJ" role="lGtFl">
            <node concept="3JmXsc" id="6gi3O$9oiLM" role="2P8S$">
              <node concept="3clFbS" id="6gi3O$9oiLN" role="2VODD2">
                <node concept="3clFbF" id="6gi3O$9oiLT" role="3cqZAp">
                  <node concept="2OqwBi" id="6gi3O$9oiLO" role="3clFbG">
                    <node concept="3Tsc0h" id="6gi3O$9oiLR" role="2OqNvi">
                      <ref role="3TtcxE" to="aw7t:6gi3O$9nB8n" resolve="Weather" />
                    </node>
                    <node concept="30H73N" id="6gi3O$9oiLS" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6gi3O$9oaMV" role="3cqZAp" />
        <node concept="3clFbF" id="6Lad368R56e" role="3cqZAp">
          <node concept="37vLTI" id="6Lad368R8JF" role="3clFbG">
            <node concept="2ShNRf" id="6Lad368R8QY" role="37vLTx">
              <node concept="2Jqq0_" id="6Lad368R8QM" role="2ShVmc">
                <node concept="3uibUv" id="4MpnXkSGV$t" role="HW$YZ">
                  <ref role="3uigEE" to="mgvq:~ElProducer" resolve="ElProducer" />
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
                <node concept="3uibUv" id="6zE2twpy$Rl" role="HW$YZ">
                  <ref role="3uigEE" to="mgvq:~ElTransformer" resolve="ElTransformer" />
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
        <node concept="3cpWs8" id="1k1HPbVDDvG" role="3cqZAp">
          <node concept="3cpWsn" id="1k1HPbVDDvH" role="3cpWs9">
            <property role="TrG5h" value="consumer" />
            <node concept="3uibUv" id="1k1HPbVDStG" role="1tU5fm">
              <ref role="3uigEE" to="mgvq:~ElConsumer" resolve="ElConsumer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7IoK3S59xJu" role="3cqZAp">
          <node concept="37vLTI" id="7IoK3S59_07" role="3clFbG">
            <node concept="2ShNRf" id="7IoK3S59_7F" role="37vLTx">
              <node concept="2Jqq0_" id="7IoK3S59BsG" role="2ShVmc">
                <node concept="3uibUv" id="4HjWx5jKXy1" role="HW$YZ">
                  <ref role="3uigEE" to="mgvq:~ElConsumer" resolve="ElConsumer" />
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
          <node concept="2b32R4" id="3nJJ606NPKg" role="lGtFl">
            <node concept="3JmXsc" id="3nJJ606NPKo" role="2P8S$">
              <node concept="3clFbS" id="3nJJ606NPKw" role="2VODD2">
                <node concept="3clFbF" id="3nJJ606NQfe" role="3cqZAp">
                  <node concept="2OqwBi" id="3nJJ606NQr9" role="3clFbG">
                    <node concept="30H73N" id="3nJJ606NQfd" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="3nJJ606NUIR" role="2OqNvi">
                      <ref role="3TtcxE" to="aw7t:3nJJ606NQBJ" resolve="Consumers" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1G90Zx2t0c7" role="3cqZAp" />
        <node concept="2Gpval" id="1G90Zx2t1Rk" role="3cqZAp">
          <node concept="2GrKxI" id="1G90Zx2t1Rm" role="2Gsz3X">
            <property role="TrG5h" value="consumer_" />
          </node>
          <node concept="37vLTw" id="1G90Zx2t3au" role="2GsD0m">
            <ref role="3cqZAo" node="7IoK3S59rx8" resolve="_consumers" />
          </node>
          <node concept="3clFbS" id="1G90Zx2t1Rq" role="2LFqv$">
            <node concept="3clFbF" id="1G90Zx2t3q6" role="3cqZAp">
              <node concept="2OqwBi" id="1G90Zx2t3yt" role="3clFbG">
                <node concept="2GrUjf" id="1G90Zx2t3q5" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1G90Zx2t1Rm" resolve="consumer_" />
                </node>
                <node concept="liA8E" id="1G90Zx2t3UT" role="2OqNvi">
                  <ref role="37wK5l" to="mgvq:~ElConsumer.connectTransformer(nz.ac.victoria.swen424.mainTypes.ElTransformer):void" resolve="connectTransformer" />
                  <node concept="2OqwBi" id="1G90Zx2t5zh" role="37wK5m">
                    <node concept="37vLTw" id="1G90Zx2t47Y" role="2Oq$k0">
                      <ref role="3cqZAo" node="Kb51drnOYO" resolve="_transformers" />
                    </node>
                    <node concept="34jXtK" id="1G90Zx2t7oE" role="2OqNvi">
                      <node concept="3cmrfG" id="1G90Zx2t7vY" role="25WWJ7">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1G90Zx2shTx" role="3cqZAp" />
        <node concept="3clFbF" id="1G90Zx2mXQM" role="3cqZAp">
          <node concept="37vLTI" id="1G90Zx2mZcc" role="3clFbG">
            <node concept="2ShNRf" id="1G90Zx2mZjz" role="37vLTx">
              <node concept="2Jqq0_" id="1G90Zx2mZAu" role="2ShVmc">
                <node concept="3uibUv" id="1G90Zx2mZZN" role="HW$YZ">
                  <ref role="3uigEE" to="mgvq:~ElGrid" resolve="ElGrid" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1G90Zx2mXQK" role="37vLTJ">
              <ref role="3cqZAo" node="1G90Zx2mVDV" resolve="_grids" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1G90Zx2n3fR" role="3cqZAp">
          <node concept="2OqwBi" id="1G90Zx2n4xG" role="3clFbG">
            <node concept="10M0yZ" id="1G90Zx2n3hq" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="1G90Zx2n4SH" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="1G90Zx2n4Ty" role="37wK5m" />
            </node>
          </node>
          <node concept="2b32R4" id="1G90Zx2n5xm" role="lGtFl">
            <node concept="3JmXsc" id="1G90Zx2n5xp" role="2P8S$">
              <node concept="3clFbS" id="1G90Zx2n5xq" role="2VODD2">
                <node concept="3clFbF" id="1G90Zx2n5xw" role="3cqZAp">
                  <node concept="2OqwBi" id="1G90Zx2n5xr" role="3clFbG">
                    <node concept="3Tsc0h" id="1G90Zx2n5xu" role="2OqNvi">
                      <ref role="3TtcxE" to="aw7t:4NGxdIp9v2e" resolve="Grids" />
                    </node>
                    <node concept="30H73N" id="1G90Zx2n5xv" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1G90Zx2s9WL" role="3cqZAp">
          <node concept="2OqwBi" id="1G90Zx2saZp" role="3clFbG">
            <node concept="10M0yZ" id="1G90Zx2s9YF" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="1G90Zx2sbt6" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="1G90Zx2sbtV" role="37wK5m">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1G90Zx2sUfH" role="3cqZAp" />
        <node concept="2Gpval" id="1G90Zx2sFQO" role="3cqZAp">
          <node concept="2GrKxI" id="1G90Zx2sFQQ" role="2Gsz3X">
            <property role="TrG5h" value="grid_" />
          </node>
          <node concept="37vLTw" id="1G90Zx2sGFp" role="2GsD0m">
            <ref role="3cqZAo" node="1G90Zx2mVDV" resolve="_grids" />
          </node>
          <node concept="3clFbS" id="1G90Zx2sFQU" role="2LFqv$">
            <node concept="3clFbF" id="1G90Zx2sGN$" role="3cqZAp">
              <node concept="2OqwBi" id="1G90Zx2sGT9" role="3clFbG">
                <node concept="2GrUjf" id="1G90Zx2sGNz" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1G90Zx2sFQQ" resolve="grid_" />
                </node>
                <node concept="liA8E" id="1G90Zx2sH7m" role="2OqNvi">
                  <ref role="37wK5l" to="mgvq:~ElGrid.connectTransformer(nz.ac.victoria.swen424.mainTypes.ElTransformer):void" resolve="connectTransformer" />
                  <node concept="2OqwBi" id="1G90Zx2sIJG" role="37wK5m">
                    <node concept="37vLTw" id="1G90Zx2sHkq" role="2Oq$k0">
                      <ref role="3cqZAo" node="Kb51drnOYO" resolve="_transformers" />
                    </node>
                    <node concept="34jXtK" id="1G90Zx2sK3I" role="2OqNvi">
                      <node concept="3cmrfG" id="1G90Zx2sZRm" role="25WWJ7">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1G90Zx2sVbS" role="3cqZAp">
              <node concept="2OqwBi" id="1G90Zx2sVnB" role="3clFbG">
                <node concept="2GrUjf" id="1G90Zx2sVbQ" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1G90Zx2sFQQ" resolve="grid_" />
                </node>
                <node concept="liA8E" id="1G90Zx2sVMg" role="2OqNvi">
                  <ref role="37wK5l" to="mgvq:~ElGrid.connectTransformer(nz.ac.victoria.swen424.mainTypes.ElTransformer):void" resolve="connectTransformer" />
                  <node concept="2OqwBi" id="1G90Zx2sXD2" role="37wK5m">
                    <node concept="37vLTw" id="1G90Zx2sWbs" role="2Oq$k0">
                      <ref role="3cqZAo" node="Kb51drnOYO" resolve="_transformers" />
                    </node>
                    <node concept="34jXtK" id="1G90Zx2sZz2" role="2OqNvi">
                      <node concept="3cmrfG" id="1G90Zx2t04n" role="25WWJ7">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1G90Zx2thgR" role="3cqZAp" />
        <node concept="2Gpval" id="1G90Zx2tj5e" role="3cqZAp">
          <node concept="2GrKxI" id="1G90Zx2tj5g" role="2Gsz3X">
            <property role="TrG5h" value="producer_" />
          </node>
          <node concept="37vLTw" id="1G90Zx2tk8e" role="2GsD0m">
            <ref role="3cqZAo" node="6Lad368R4N5" resolve="_producers" />
          </node>
          <node concept="3clFbS" id="1G90Zx2tj5k" role="2LFqv$">
            <node concept="3clFbF" id="1G90Zx2tkpj" role="3cqZAp">
              <node concept="2OqwBi" id="1G90Zx2tk$C" role="3clFbG">
                <node concept="2GrUjf" id="1G90Zx2tkpi" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1G90Zx2tj5g" resolve="producer_" />
                </node>
                <node concept="liA8E" id="1G90Zx2tlcL" role="2OqNvi">
                  <ref role="37wK5l" to="mgvq:~ElProducer.connectTransformer(nz.ac.victoria.swen424.mainTypes.ElTransformer):void" resolve="connectTransformer" />
                  <node concept="2OqwBi" id="1G90Zx2tmPb" role="37wK5m">
                    <node concept="37vLTw" id="1G90Zx2tlpR" role="2Oq$k0">
                      <ref role="3cqZAo" node="Kb51drnOYO" resolve="_transformers" />
                    </node>
                    <node concept="34jXtK" id="1G90Zx2to9f" role="2OqNvi">
                      <node concept="3cmrfG" id="1G90Zx2tog$" role="25WWJ7">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
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
    <node concept="3clFb_" id="4qE1Afm7k62" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="writeXML" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4qE1Afm7k65" role="3clF47">
        <node concept="3cpWs8" id="4qE1Afm7nMY" role="3cqZAp">
          <node concept="3cpWsn" id="4qE1Afm7nMZ" role="3cpWs9">
            <property role="TrG5h" value="outputFactory" />
            <node concept="3uibUv" id="4qE1Afm7nN0" role="1tU5fm">
              <ref role="3uigEE" to="91n3:~XMLOutputFactory" resolve="XMLOutputFactory" />
            </node>
            <node concept="2YIFZM" id="4qE1Afm7nQk" role="33vP2m">
              <ref role="37wK5l" to="91n3:~XMLOutputFactory.newInstance():javax.xml.stream.XMLOutputFactory" resolve="newInstance" />
              <ref role="1Pybhc" to="91n3:~XMLOutputFactory" resolve="XMLOutputFactory" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4qE1Afm7nTQ" role="3cqZAp">
          <node concept="3cpWsn" id="4qE1Afm7nTR" role="3cpWs9">
            <property role="TrG5h" value="xmlWriter" />
            <node concept="3uibUv" id="4qE1Afm7nTS" role="1tU5fm">
              <ref role="3uigEE" to="91n3:~XMLEventWriter" resolve="XMLEventWriter" />
            </node>
            <node concept="2OqwBi" id="4qE1Afm7o25" role="33vP2m">
              <node concept="37vLTw" id="4qE1Afm7nWh" role="2Oq$k0">
                <ref role="3cqZAo" node="4qE1Afm7nMZ" resolve="outputFactory" />
              </node>
              <node concept="liA8E" id="4qE1Afm7osf" role="2OqNvi">
                <ref role="37wK5l" to="91n3:~XMLOutputFactory.createXMLEventWriter(java.io.OutputStream):javax.xml.stream.XMLEventWriter" resolve="createXMLEventWriter" />
                <node concept="2ShNRf" id="4qE1Afm7oyK" role="37wK5m">
                  <node concept="1pGfFk" id="4qE1Afm7qZk" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~FileOutputStream.&lt;init&gt;(java.lang.String)" resolve="FileOutputStream" />
                    <node concept="Xl_RD" id="4qE1Afm7r0W" role="37wK5m">
                      <property role="Xl_RC" value="C:/Data/output.xml" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qE1Afm7OdL" role="3cqZAp">
          <node concept="37vLTI" id="4qE1Afm7Pyh" role="3clFbG">
            <node concept="2ShNRf" id="4qE1Afm7PEF" role="37vLTx">
              <node concept="1pGfFk" id="4qE1Afm7Tvh" role="2ShVmc">
                <ref role="37wK5l" to="e82u:~IndentingXMLEventWriter.&lt;init&gt;(javax.xml.stream.XMLEventWriter)" resolve="IndentingXMLEventWriter" />
                <node concept="37vLTw" id="4qE1Afm7Tzc" role="37wK5m">
                  <ref role="3cqZAo" node="4qE1Afm7nTR" resolve="xmlWriter" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4qE1Afm7OdJ" role="37vLTJ">
              <ref role="3cqZAo" node="4qE1Afm7nTR" resolve="xmlWriter" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4qE1Afm7u3$" role="3cqZAp">
          <node concept="3cpWsn" id="4qE1Afm7u3_" role="3cpWs9">
            <property role="TrG5h" value="eventFactory" />
            <node concept="3uibUv" id="4qE1Afm7u3A" role="1tU5fm">
              <ref role="3uigEE" to="91n3:~XMLEventFactory" resolve="XMLEventFactory" />
            </node>
            <node concept="2YIFZM" id="4qE1Afm7ueM" role="33vP2m">
              <ref role="37wK5l" to="91n3:~XMLEventFactory.newInstance():javax.xml.stream.XMLEventFactory" resolve="newInstance" />
              <ref role="1Pybhc" to="91n3:~XMLEventFactory" resolve="XMLEventFactory" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4qE1Afm7v2e" role="3cqZAp" />
        <node concept="3clFbF" id="4qE1Afm7vfB" role="3cqZAp">
          <node concept="2OqwBi" id="4qE1Afm7vui" role="3clFbG">
            <node concept="37vLTw" id="4qE1Afm7vf_" role="2Oq$k0">
              <ref role="3cqZAo" node="4qE1Afm7nTR" resolve="xmlWriter" />
            </node>
            <node concept="liA8E" id="4qE1Afm7w7U" role="2OqNvi">
              <ref role="37wK5l" to="91n3:~XMLEventWriter.add(javax.xml.stream.events.XMLEvent):void" resolve="add" />
              <node concept="2OqwBi" id="4qE1Afm7wn0" role="37wK5m">
                <node concept="37vLTw" id="4qE1Afm7wcI" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qE1Afm7u3_" resolve="eventFactory" />
                </node>
                <node concept="liA8E" id="4qE1Afm7wCK" role="2OqNvi">
                  <ref role="37wK5l" to="91n3:~XMLEventFactory.createStartDocument():javax.xml.stream.events.StartDocument" resolve="createStartDocument" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qE1Afm7wNY" role="3cqZAp">
          <node concept="2OqwBi" id="4qE1Afm7x3T" role="3clFbG">
            <node concept="37vLTw" id="4qE1Afm7wNW" role="2Oq$k0">
              <ref role="3cqZAo" node="4qE1Afm7nTR" resolve="xmlWriter" />
            </node>
            <node concept="liA8E" id="4qE1Afm7xfO" role="2OqNvi">
              <ref role="37wK5l" to="91n3:~XMLEventWriter.add(javax.xml.stream.events.XMLEvent):void" resolve="add" />
              <node concept="2OqwBi" id="4qE1Afm7xuW" role="37wK5m">
                <node concept="37vLTw" id="4qE1Afm7xkE" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qE1Afm7u3_" resolve="eventFactory" />
                </node>
                <node concept="liA8E" id="4qE1Afm7xKG" role="2OqNvi">
                  <ref role="37wK5l" to="91n3:~XMLEventFactory.createStartElement(java.lang.String,java.lang.String,java.lang.String):javax.xml.stream.events.StartElement" resolve="createStartElement" />
                  <node concept="Xl_RD" id="4qE1Afm7xO7" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="4qE1Afm7xUK" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="4qE1Afm7y2s" role="37wK5m">
                    <property role="Xl_RC" value="powerGridSimulator" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4qE1Afm7CkW" role="3cqZAp" />
        <node concept="3clFbF" id="4qE1Afm7GB1" role="3cqZAp">
          <node concept="1rXfSq" id="4qE1Afm7GAZ" role="3clFbG">
            <ref role="37wK5l" node="4qE1Afm7m7Z" resolve="writeLayoutXML" />
            <node concept="37vLTw" id="4qE1Afm7GOD" role="37wK5m">
              <ref role="3cqZAo" node="4qE1Afm7nTR" resolve="xmlWriter" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4qE1Afm7Hv2" role="3cqZAp" />
        <node concept="3clFbF" id="4qE1Afm8yJ9" role="3cqZAp">
          <node concept="1rXfSq" id="4qE1Afm8yJ7" role="3clFbG">
            <ref role="37wK5l" node="4qE1Afm8ujS" resolve="simulateAndExport" />
            <node concept="37vLTw" id="4qE1Afm8yYk" role="37wK5m">
              <ref role="3cqZAo" node="4qE1Afm7nTR" resolve="xmlWriter" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4qE1Afm7z5_" role="3cqZAp" />
        <node concept="3clFbF" id="4qE1Afm7zp2" role="3cqZAp">
          <node concept="2OqwBi" id="4qE1Afm7zEY" role="3clFbG">
            <node concept="37vLTw" id="4qE1Afm7zp0" role="2Oq$k0">
              <ref role="3cqZAo" node="4qE1Afm7nTR" resolve="xmlWriter" />
            </node>
            <node concept="liA8E" id="4qE1Afm7zSB" role="2OqNvi">
              <ref role="37wK5l" to="91n3:~XMLEventWriter.add(javax.xml.stream.events.XMLEvent):void" resolve="add" />
              <node concept="2OqwBi" id="4qE1Afm7$7N" role="37wK5m">
                <node concept="37vLTw" id="4qE1Afm7zXx" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qE1Afm7u3_" resolve="eventFactory" />
                </node>
                <node concept="liA8E" id="4qE1Afm7$pz" role="2OqNvi">
                  <ref role="37wK5l" to="91n3:~XMLEventFactory.createEndElement(java.lang.String,java.lang.String,java.lang.String):javax.xml.stream.events.EndElement" resolve="createEndElement" />
                  <node concept="Xl_RD" id="4qE1Afm7_9s" role="37wK5m" />
                  <node concept="Xl_RD" id="4qE1Afm7__Y" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="4qE1Afm7_ZW" role="37wK5m">
                    <property role="Xl_RC" value="powerGridSimulator" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qE1Afm7Bc7" role="3cqZAp">
          <node concept="2OqwBi" id="4qE1Afm7Bw3" role="3clFbG">
            <node concept="37vLTw" id="4qE1Afm7Bc5" role="2Oq$k0">
              <ref role="3cqZAo" node="4qE1Afm7nTR" resolve="xmlWriter" />
            </node>
            <node concept="liA8E" id="4qE1Afm7BJp" role="2OqNvi">
              <ref role="37wK5l" to="91n3:~XMLEventWriter.add(javax.xml.stream.events.XMLEvent):void" resolve="add" />
              <node concept="2OqwBi" id="4qE1Afm7BYD" role="37wK5m">
                <node concept="37vLTw" id="4qE1Afm7BOn" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qE1Afm7u3_" resolve="eventFactory" />
                </node>
                <node concept="liA8E" id="4qE1Afm7Cgp" role="2OqNvi">
                  <ref role="37wK5l" to="91n3:~XMLEventFactory.createEndDocument():javax.xml.stream.events.EndDocument" resolve="createEndDocument" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qE1Afm868E" role="3cqZAp">
          <node concept="2OqwBi" id="4qE1Afm86v6" role="3clFbG">
            <node concept="37vLTw" id="4qE1Afm868C" role="2Oq$k0">
              <ref role="3cqZAo" node="4qE1Afm7nTR" resolve="xmlWriter" />
            </node>
            <node concept="liA8E" id="4qE1Afm86QH" role="2OqNvi">
              <ref role="37wK5l" to="91n3:~XMLEventWriter.close():void" resolve="close" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4qE1Afm7jrk" role="1B3o_S" />
      <node concept="3cqZAl" id="4qE1Afm7k5X" role="3clF45" />
      <node concept="3uibUv" id="4qE1Afm7tbw" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="2tJIrI" id="4qE1Afm7kKQ" role="jymVt" />
    <node concept="3clFb_" id="4qE1Afm7m7Z" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="writeLayoutXML" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4qE1Afm7m82" role="3clF47">
        <node concept="3cpWs8" id="4qE1Afm83zi" role="3cqZAp">
          <node concept="3cpWsn" id="4qE1Afm83zj" role="3cpWs9">
            <property role="TrG5h" value="eventFactory" />
            <node concept="3uibUv" id="4qE1Afm83zk" role="1tU5fm">
              <ref role="3uigEE" to="91n3:~XMLEventFactory" resolve="XMLEventFactory" />
            </node>
            <node concept="2YIFZM" id="4qE1Afm83OX" role="33vP2m">
              <ref role="37wK5l" to="91n3:~XMLEventFactory.newInstance():javax.xml.stream.XMLEventFactory" resolve="newInstance" />
              <ref role="1Pybhc" to="91n3:~XMLEventFactory" resolve="XMLEventFactory" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qE1Afm7E9p" role="3cqZAp">
          <node concept="2OqwBi" id="4qE1Afm7EhR" role="3clFbG">
            <node concept="37vLTw" id="4qE1Afm7E9o" role="2Oq$k0">
              <ref role="3cqZAo" node="4qE1Afm7n8z" resolve="xmlWriter" />
            </node>
            <node concept="liA8E" id="4qE1Afm7EpX" role="2OqNvi">
              <ref role="37wK5l" to="91n3:~XMLEventWriter.add(javax.xml.stream.events.XMLEvent):void" resolve="add" />
              <node concept="2OqwBi" id="4qE1Afm7Eyj" role="37wK5m">
                <node concept="37vLTw" id="4qE1Afm83R0" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qE1Afm83zj" resolve="eventFactory" />
                </node>
                <node concept="liA8E" id="4qE1Afm7EHC" role="2OqNvi">
                  <ref role="37wK5l" to="91n3:~XMLEventFactory.createStartElement(java.lang.String,java.lang.String,java.lang.String):javax.xml.stream.events.StartElement" resolve="createStartElement" />
                  <node concept="Xl_RD" id="4qE1Afm7EJC" role="37wK5m" />
                  <node concept="Xl_RD" id="4qE1Afm7ERg" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="4qE1Afm7ETs" role="37wK5m">
                    <property role="Xl_RC" value="modelDefinition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4qE1Afm7Icg" role="3cqZAp" />
        <node concept="3SKdUt" id="4qE1Afm8$cy" role="3cqZAp">
          <node concept="3SKdUq" id="4qE1Afm8$cz" role="3SKWNk">
            <property role="3SKdUp" value="Export Producers" />
          </node>
        </node>
        <node concept="3clFbF" id="4qE1Afm8$c$" role="3cqZAp">
          <node concept="2OqwBi" id="4qE1Afm8$c_" role="3clFbG">
            <node concept="37vLTw" id="4qE1Afm8$cA" role="2Oq$k0">
              <ref role="3cqZAo" node="4qE1Afm7n8z" resolve="xmlWriter" />
            </node>
            <node concept="liA8E" id="4qE1Afm8$cB" role="2OqNvi">
              <ref role="37wK5l" to="91n3:~XMLEventWriter.add(javax.xml.stream.events.XMLEvent):void" resolve="add" />
              <node concept="2OqwBi" id="4qE1Afm8$cC" role="37wK5m">
                <node concept="37vLTw" id="4qE1Afm8$cD" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qE1Afm83zj" resolve="eventFactory" />
                </node>
                <node concept="liA8E" id="4qE1Afm8$cE" role="2OqNvi">
                  <ref role="37wK5l" to="91n3:~XMLEventFactory.createStartElement(java.lang.String,java.lang.String,java.lang.String):javax.xml.stream.events.StartElement" resolve="createStartElement" />
                  <node concept="Xl_RD" id="4qE1Afm8$cF" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="4qE1Afm8$cG" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="4qE1Afm8$cH" role="37wK5m">
                    <property role="Xl_RC" value="weatherList" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4qE1Afm8$cI" role="3cqZAp">
          <node concept="2GrKxI" id="4qE1Afm8$cJ" role="2Gsz3X">
            <property role="TrG5h" value="weather" />
          </node>
          <node concept="37vLTw" id="4qE1Afm8_4n" role="2GsD0m">
            <ref role="3cqZAo" node="6gi3O$9o8_V" resolve="_weather" />
          </node>
          <node concept="3clFbS" id="4qE1Afm8$cL" role="2LFqv$">
            <node concept="3clFbF" id="4qE1Afm8$cM" role="3cqZAp">
              <node concept="2OqwBi" id="4qE1Afm8$cN" role="3clFbG">
                <node concept="2GrUjf" id="4qE1Afm8$cO" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4qE1Afm8$cJ" resolve="weather" />
                </node>
                <node concept="liA8E" id="4qE1Afm8$cP" role="2OqNvi">
                  <ref role="37wK5l" to="ykoa:~WeatherValues.writeHeaderData(javax.xml.stream.XMLEventWriter):void" resolve="writeHeaderData" />
                  <node concept="37vLTw" id="4qE1Afm8$cQ" role="37wK5m">
                    <ref role="3cqZAo" node="4qE1Afm7n8z" resolve="xmlWriter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qE1Afm8$cR" role="3cqZAp">
          <node concept="2OqwBi" id="4qE1Afm8$cS" role="3clFbG">
            <node concept="37vLTw" id="4qE1Afm8$cT" role="2Oq$k0">
              <ref role="3cqZAo" node="4qE1Afm7n8z" resolve="xmlWriter" />
            </node>
            <node concept="liA8E" id="4qE1Afm8$cU" role="2OqNvi">
              <ref role="37wK5l" to="91n3:~XMLEventWriter.add(javax.xml.stream.events.XMLEvent):void" resolve="add" />
              <node concept="2OqwBi" id="4qE1Afm8$cV" role="37wK5m">
                <node concept="37vLTw" id="4qE1Afm8$cW" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qE1Afm83zj" resolve="eventFactory" />
                </node>
                <node concept="liA8E" id="4qE1Afm8$cX" role="2OqNvi">
                  <ref role="37wK5l" to="91n3:~XMLEventFactory.createEndElement(java.lang.String,java.lang.String,java.lang.String):javax.xml.stream.events.EndElement" resolve="createEndElement" />
                  <node concept="Xl_RD" id="4qE1Afm8$cY" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="4qE1Afm8$cZ" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="4qE1Afm8$d0" role="37wK5m">
                    <property role="Xl_RC" value="weatherList" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4qE1Afm8zXw" role="3cqZAp" />
        <node concept="3SKdUt" id="4qE1Afm8zIt" role="3cqZAp">
          <node concept="3SKdUq" id="4qE1Afm8zIv" role="3SKWNk">
            <property role="3SKdUp" value="Export Producers" />
          </node>
        </node>
        <node concept="3clFbF" id="4qE1Afm8784" role="3cqZAp">
          <node concept="2OqwBi" id="4qE1Afm87tb" role="3clFbG">
            <node concept="37vLTw" id="4qE1Afm8782" role="2Oq$k0">
              <ref role="3cqZAo" node="4qE1Afm7n8z" resolve="xmlWriter" />
            </node>
            <node concept="liA8E" id="4qE1Afm87Dv" role="2OqNvi">
              <ref role="37wK5l" to="91n3:~XMLEventWriter.add(javax.xml.stream.events.XMLEvent):void" resolve="add" />
              <node concept="2OqwBi" id="4qE1Afm87NQ" role="37wK5m">
                <node concept="37vLTw" id="4qE1Afm87G6" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qE1Afm83zj" resolve="eventFactory" />
                </node>
                <node concept="liA8E" id="4qE1Afm880$" role="2OqNvi">
                  <ref role="37wK5l" to="91n3:~XMLEventFactory.createStartElement(java.lang.String,java.lang.String,java.lang.String):javax.xml.stream.events.StartElement" resolve="createStartElement" />
                  <node concept="Xl_RD" id="4qE1Afm8846" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="4qE1Afm88eI" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="4qE1Afm88j1" role="37wK5m">
                    <property role="Xl_RC" value="producers" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4qE1Afm7K2e" role="3cqZAp">
          <node concept="2GrKxI" id="4qE1Afm7K2g" role="2Gsz3X">
            <property role="TrG5h" value="producer" />
          </node>
          <node concept="37vLTw" id="4qE1Afm7KrU" role="2GsD0m">
            <ref role="3cqZAo" node="6Lad368R4N5" resolve="_producers" />
          </node>
          <node concept="3clFbS" id="4qE1Afm7K2k" role="2LFqv$">
            <node concept="3clFbF" id="4qE1Afm88LG" role="3cqZAp">
              <node concept="2OqwBi" id="4qE1Afm88UI" role="3clFbG">
                <node concept="2GrUjf" id="4qE1Afm88LF" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4qE1Afm7K2g" resolve="producer" />
                </node>
                <node concept="liA8E" id="4qE1Afm89ss" role="2OqNvi">
                  <ref role="37wK5l" to="mgvq:~ElProducer.writeHeaderData(javax.xml.stream.XMLEventWriter):void" resolve="writeHeaderData" />
                  <node concept="37vLTw" id="4qE1Afm89Iw" role="37wK5m">
                    <ref role="3cqZAo" node="4qE1Afm7n8z" resolve="xmlWriter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qE1Afm88rk" role="3cqZAp">
          <node concept="2OqwBi" id="4qE1Afm88rl" role="3clFbG">
            <node concept="37vLTw" id="4qE1Afm88rm" role="2Oq$k0">
              <ref role="3cqZAo" node="4qE1Afm7n8z" resolve="xmlWriter" />
            </node>
            <node concept="liA8E" id="4qE1Afm88rn" role="2OqNvi">
              <ref role="37wK5l" to="91n3:~XMLEventWriter.add(javax.xml.stream.events.XMLEvent):void" resolve="add" />
              <node concept="2OqwBi" id="4qE1Afm88ro" role="37wK5m">
                <node concept="37vLTw" id="4qE1Afm88rp" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qE1Afm83zj" resolve="eventFactory" />
                </node>
                <node concept="liA8E" id="4qE1Afm88rq" role="2OqNvi">
                  <ref role="37wK5l" to="91n3:~XMLEventFactory.createEndElement(java.lang.String,java.lang.String,java.lang.String):javax.xml.stream.events.EndElement" resolve="createEndElement" />
                  <node concept="Xl_RD" id="4qE1Afm88rr" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="4qE1Afm88rs" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="4qE1Afm88rt" role="37wK5m">
                    <property role="Xl_RC" value="producers" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4qE1Afm8a1Z" role="3cqZAp" />
        <node concept="3SKdUt" id="4qE1Afm8aw4" role="3cqZAp">
          <node concept="3SKdUq" id="4qE1Afm8aw6" role="3SKWNk">
            <property role="3SKdUp" value="TODO For all the types" />
          </node>
        </node>
        <node concept="3clFbH" id="4qE1Afm7Icy" role="3cqZAp" />
        <node concept="3clFbF" id="4qE1Afm7IjB" role="3cqZAp">
          <node concept="2OqwBi" id="4qE1Afm7Iuz" role="3clFbG">
            <node concept="37vLTw" id="4qE1Afm7Ij_" role="2Oq$k0">
              <ref role="3cqZAo" node="4qE1Afm7n8z" resolve="xmlWriter" />
            </node>
            <node concept="liA8E" id="4qE1Afm7IDM" role="2OqNvi">
              <ref role="37wK5l" to="91n3:~XMLEventWriter.add(javax.xml.stream.events.XMLEvent):void" resolve="add" />
              <node concept="2OqwBi" id="4qE1Afm7IOi" role="37wK5m">
                <node concept="37vLTw" id="4qE1Afm83Ug" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qE1Afm83zj" resolve="eventFactory" />
                </node>
                <node concept="liA8E" id="4qE1Afm7J12" role="2OqNvi">
                  <ref role="37wK5l" to="91n3:~XMLEventFactory.createEndElement(java.lang.String,java.lang.String,java.lang.String):javax.xml.stream.events.EndElement" resolve="createEndElement" />
                  <node concept="Xl_RD" id="4qE1Afm7J4l" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="4qE1Afm7JaW" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="4qE1Afm7Jeb" role="37wK5m">
                    <property role="Xl_RC" value="modelDefinition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4qE1Afm7ltc" role="1B3o_S" />
      <node concept="3cqZAl" id="4qE1Afm7m7U" role="3clF45" />
      <node concept="37vLTG" id="4qE1Afm7n8z" role="3clF46">
        <property role="TrG5h" value="xmlWriter" />
        <node concept="3uibUv" id="4qE1Afm7n8y" role="1tU5fm">
          <ref role="3uigEE" to="91n3:~XMLEventWriter" resolve="XMLEventWriter" />
        </node>
      </node>
      <node concept="3uibUv" id="4qE1Afm7FTd" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="2tJIrI" id="4qE1Afm7hiJ" role="jymVt" />
    <node concept="3clFb_" id="4qE1Afm8ujS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="simulateAndExport" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4qE1Afm8ujV" role="3clF47">
        <node concept="3cpWs8" id="4qE1Afm8vY8" role="3cqZAp">
          <node concept="3cpWsn" id="4qE1Afm8vY9" role="3cpWs9">
            <property role="TrG5h" value="eventFactory" />
            <node concept="3uibUv" id="4qE1Afm8vYa" role="1tU5fm">
              <ref role="3uigEE" to="91n3:~XMLEventFactory" resolve="XMLEventFactory" />
            </node>
            <node concept="2YIFZM" id="4qE1Afm8vYb" role="33vP2m">
              <ref role="1Pybhc" to="91n3:~XMLEventFactory" resolve="XMLEventFactory" />
              <ref role="37wK5l" to="91n3:~XMLEventFactory.newInstance():javax.xml.stream.XMLEventFactory" resolve="newInstance" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qE1Afm8vYc" role="3cqZAp">
          <node concept="2OqwBi" id="4qE1Afm8vYd" role="3clFbG">
            <node concept="37vLTw" id="4qE1Afm8vYe" role="2Oq$k0">
              <ref role="3cqZAo" node="4qE1Afm8vao" resolve="xmlWriter" />
            </node>
            <node concept="liA8E" id="4qE1Afm8vYf" role="2OqNvi">
              <ref role="37wK5l" to="91n3:~XMLEventWriter.add(javax.xml.stream.events.XMLEvent):void" resolve="add" />
              <node concept="2OqwBi" id="4qE1Afm8vYg" role="37wK5m">
                <node concept="37vLTw" id="4qE1Afm8vYh" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qE1Afm8vY9" resolve="eventFactory" />
                </node>
                <node concept="liA8E" id="4qE1Afm8vYi" role="2OqNvi">
                  <ref role="37wK5l" to="91n3:~XMLEventFactory.createStartElement(java.lang.String,java.lang.String,java.lang.String):javax.xml.stream.events.StartElement" resolve="createStartElement" />
                  <node concept="Xl_RD" id="4qE1Afm8vYj" role="37wK5m" />
                  <node concept="Xl_RD" id="4qE1Afm8vYk" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="4qE1Afm8vYl" role="37wK5m">
                    <property role="Xl_RC" value="simulation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4qE1Afm8vXW" role="3cqZAp" />
        <node concept="3SKdUt" id="4qE1Afm8vXK" role="3cqZAp">
          <node concept="3SKdUq" id="4qE1Afm8vXL" role="3SKWNk">
            <property role="3SKdUp" value="TODO The fun stuff comes in here" />
          </node>
        </node>
        <node concept="3clFbH" id="4qE1Afm8zpe" role="3cqZAp" />
        <node concept="3clFbF" id="4qE1Afm8z9D" role="3cqZAp">
          <node concept="2OqwBi" id="4qE1Afm8z9E" role="3clFbG">
            <node concept="37vLTw" id="4qE1Afm8z9F" role="2Oq$k0">
              <ref role="3cqZAo" node="4qE1Afm8vao" resolve="xmlWriter" />
            </node>
            <node concept="liA8E" id="4qE1Afm8z9G" role="2OqNvi">
              <ref role="37wK5l" to="91n3:~XMLEventWriter.add(javax.xml.stream.events.XMLEvent):void" resolve="add" />
              <node concept="2OqwBi" id="4qE1Afm8z9H" role="37wK5m">
                <node concept="37vLTw" id="4qE1Afm8z9I" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qE1Afm8vY9" resolve="eventFactory" />
                </node>
                <node concept="liA8E" id="4qE1Afm8z9J" role="2OqNvi">
                  <ref role="37wK5l" to="91n3:~XMLEventFactory.createEndElement(java.lang.String,java.lang.String,java.lang.String):javax.xml.stream.events.EndElement" resolve="createEndElement" />
                  <node concept="Xl_RD" id="4qE1Afm8z9K" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="4qE1Afm8z9L" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="4qE1Afm8z9M" role="37wK5m">
                    <property role="Xl_RC" value="modelDefinition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4qE1Afm8ttr" role="1B3o_S" />
      <node concept="3cqZAl" id="4qE1Afm8ujJ" role="3clF45" />
      <node concept="37vLTG" id="4qE1Afm8vao" role="3clF46">
        <property role="TrG5h" value="xmlWriter" />
        <node concept="3uibUv" id="4qE1Afm8van" role="1tU5fm">
          <ref role="3uigEE" to="91n3:~XMLEventWriter" resolve="XMLEventWriter" />
        </node>
      </node>
      <node concept="3uibUv" id="4qE1Afm8xtH" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="2tJIrI" id="4qE1Afm8rKU" role="jymVt" />
    <node concept="3clFb_" id="6Lad368RTxH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="Test" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6Lad368RTxK" role="3clF47" />
      <node concept="3Tm1VV" id="6Lad368RTfK" role="1B3o_S" />
      <node concept="3cqZAl" id="6Lad368RTxB" role="3clF45" />
      <node concept="37vLTG" id="6Lad368RTPA" role="3clF46">
        <property role="TrG5h" value="i" />
        <node concept="10Oyi0" id="6Lad368RTP_" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4qR36XftTgq" role="jymVt" />
    <node concept="2YIFZL" id="4qR36Xfu4gq" role="jymVt">
      <property role="TrG5h" value="main" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4qR36Xfu4gs" role="3clF47">
        <node concept="3clFbF" id="4qR36XfuEdl" role="3cqZAp">
          <node concept="2ShNRf" id="4qR36XfuEdj" role="3clFbG">
            <node concept="1pGfFk" id="4qR36XfuEqM" role="2ShVmc">
              <ref role="37wK5l" node="6Lad368Qz4z" resolve="PowerGridSimulator" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4qR36Xfu4gu" role="3clF45" />
      <node concept="37vLTG" id="4qR36Xfu4gv" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="4qR36XfuE6A" role="1tU5fm">
          <node concept="3uibUv" id="4qR36Xfu4gw" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4qR36Xfu4gt" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="6Lad368Qz3R" role="1B3o_S" />
    <node concept="n94m4" id="6Lad368Qz3S" role="lGtFl">
      <ref role="n9lRv" to="aw7t:3pcEwkEWqD2" resolve="PowerGridSimulator" />
    </node>
  </node>
  <node concept="13MO4I" id="Kb51dro4y0">
    <property role="TrG5h" value="reduce_Transformer" />
    <ref role="3gUMe" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
    <node concept="312cEu" id="Kb51dro660" role="13RCb5">
      <property role="TrG5h" value="Foo" />
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
                <node concept="3uibUv" id="6zE2twpyGqF" role="_ZDj9">
                  <ref role="3uigEE" to="mgvq:~ElTransformer" resolve="ElTransformer" />
                </node>
              </node>
              <node concept="2ShNRf" id="Kb51dro6a_" role="33vP2m">
                <node concept="2Jqq0_" id="Kb51dro6gA" role="2ShVmc">
                  <node concept="3uibUv" id="6zE2twpyDsE" role="HW$YZ">
                    <ref role="3uigEE" to="mgvq:~ElTransformer" resolve="ElTransformer" />
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
                    <ref role="37wK5l" to="mgvq:~ElTransformer.&lt;init&gt;(java.lang.String,int,int,int,int,int)" resolve="ElTransformer" />
                    <node concept="Xl_RD" id="6zE2twpzmSn" role="37wK5m">
                      <property role="Xl_RC" value="10" />
                      <node concept="17Uvod" id="6zE2twpz_CI" role="lGtFl">
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <property role="2qtEX9" value="value" />
                        <node concept="3zFVjK" id="6zE2twpz_CL" role="3zH0cK">
                          <node concept="3clFbS" id="6zE2twpz_CM" role="2VODD2">
                            <node concept="3clFbF" id="6zE2twpz_CS" role="3cqZAp">
                              <node concept="2OqwBi" id="6zE2twpz_CN" role="3clFbG">
                                <node concept="3TrcHB" id="6zE2twpz_CQ" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                                <node concept="30H73N" id="6zE2twpz_CR" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="4qR36XfvJKM" role="37wK5m">
                      <property role="3cmrfH" value="10" />
                      <node concept="17Uvod" id="4qR36XfvKi5" role="lGtFl">
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                        <property role="2qtEX9" value="value" />
                        <node concept="3zFVjK" id="4qR36XfvKi8" role="3zH0cK">
                          <node concept="3clFbS" id="4qR36XfvKi9" role="2VODD2">
                            <node concept="3clFbF" id="4qR36XfvKif" role="3cqZAp">
                              <node concept="2OqwBi" id="4qR36XfvKia" role="3clFbG">
                                <node concept="3TrcHB" id="4qR36XfvKid" role="2OqNvi">
                                  <ref role="3TsBF5" to="aw7t:7rDXPBEWeTt" resolve="MaxCapacity" />
                                </node>
                                <node concept="30H73N" id="4qR36XfvKie" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="4qR36XfvLMf" role="37wK5m">
                      <property role="3cmrfH" value="10" />
                      <node concept="17Uvod" id="4qR36XfvMM$" role="lGtFl">
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                        <property role="2qtEX9" value="value" />
                        <node concept="3zFVjK" id="4qR36XfvMMB" role="3zH0cK">
                          <node concept="3clFbS" id="4qR36XfvMMC" role="2VODD2">
                            <node concept="3clFbF" id="4qR36XfvMMI" role="3cqZAp">
                              <node concept="2OqwBi" id="4qR36XfvMMD" role="3clFbG">
                                <node concept="3TrcHB" id="4qR36XfvMMG" role="2OqNvi">
                                  <ref role="3TsBF5" to="aw7t:7rDXPBEWeTA" resolve="Usage" />
                                </node>
                                <node concept="30H73N" id="4qR36XfvMMH" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="4qR36XfvNNt" role="37wK5m">
                      <property role="3cmrfH" value="10" />
                      <node concept="17Uvod" id="4qR36XfvOkv" role="lGtFl">
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                        <property role="2qtEX9" value="value" />
                        <node concept="3zFVjK" id="4qR36XfvOky" role="3zH0cK">
                          <node concept="3clFbS" id="4qR36XfvOkz" role="2VODD2">
                            <node concept="3clFbF" id="4qR36XfvOkD" role="3cqZAp">
                              <node concept="2OqwBi" id="4qR36XfvOk$" role="3clFbG">
                                <node concept="3TrcHB" id="4qR36XfvOkB" role="2OqNvi">
                                  <ref role="3TsBF5" to="aw7t:7rDXPBEWeTx" resolve="Efficiency" />
                                </node>
                                <node concept="30H73N" id="4qR36XfvOkC" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="1G90Zx2ozsk" role="37wK5m">
                      <property role="3cmrfH" value="10" />
                      <node concept="17Uvod" id="1G90Zx2ozWg" role="lGtFl">
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                        <property role="2qtEX9" value="value" />
                        <node concept="3zFVjK" id="1G90Zx2ozWj" role="3zH0cK">
                          <node concept="3clFbS" id="1G90Zx2ozWk" role="2VODD2">
                            <node concept="3clFbF" id="1G90Zx2ozWq" role="3cqZAp">
                              <node concept="2OqwBi" id="1G90Zx2ozWl" role="3clFbG">
                                <node concept="3TrcHB" id="1G90Zx2ozWo" role="2OqNvi">
                                  <ref role="3TsBF5" to="aw7t:7rDXPBEWeTo" resolve="LeftNetLevel" />
                                </node>
                                <node concept="30H73N" id="1G90Zx2ozWp" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="1G90Zx2o$UN" role="37wK5m">
                      <property role="3cmrfH" value="10" />
                      <node concept="17Uvod" id="1G90Zx2o_rv" role="lGtFl">
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                        <property role="2qtEX9" value="value" />
                        <node concept="3zFVjK" id="1G90Zx2o_ry" role="3zH0cK">
                          <node concept="3clFbS" id="1G90Zx2o_rz" role="2VODD2">
                            <node concept="3clFbF" id="1G90Zx2o_rD" role="3cqZAp">
                              <node concept="2OqwBi" id="1G90Zx2o_r$" role="3clFbG">
                                <node concept="3TrcHB" id="1G90Zx2o_rB" role="2OqNvi">
                                  <ref role="3TsBF5" to="aw7t:7rDXPBEWeTq" resolve="RightNetLevel" />
                                </node>
                                <node concept="30H73N" id="1G90Zx2o_rC" role="2Oq$k0" />
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
  <node concept="13MO4I" id="6gi3O$9nYbp">
    <property role="TrG5h" value="reduce_WeatherList" />
    <ref role="3gUMe" to="aw7t:6gi3O$9nB7M" resolve="WeatherList" />
    <node concept="312cEu" id="6gi3O$9nYEn" role="13RCb5">
      <property role="TrG5h" value="Foo" />
      <node concept="3clFb_" id="6gi3O$9nZul" role="jymVt">
        <property role="TrG5h" value="Bar" />
        <node concept="3cqZAl" id="6gi3O$9nZun" role="3clF45" />
        <node concept="3Tm1VV" id="6gi3O$9nZuo" role="1B3o_S" />
        <node concept="3clFbS" id="6gi3O$9nZup" role="3clF47">
          <node concept="3cpWs8" id="6gi3O$9nZvR" role="3cqZAp">
            <node concept="3cpWsn" id="6gi3O$9nZvU" role="3cpWs9">
              <property role="TrG5h" value="_weather" />
              <node concept="_YKpA" id="6gi3O$9nZvP" role="1tU5fm">
                <node concept="3uibUv" id="6gi3O$9o98B" role="_ZDj9">
                  <ref role="3uigEE" to="ykoa:~WeatherValues" resolve="WeatherValues" />
                </node>
              </node>
              <node concept="2ShNRf" id="6gi3O$9o6sW" role="33vP2m">
                <node concept="Tc6Ow" id="6gi3O$9o6sI" role="2ShVmc">
                  <node concept="3uibUv" id="6gi3O$9o9rA" role="HW$YZ">
                    <ref role="3uigEE" to="ykoa:~WeatherValues" resolve="WeatherValues" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4qE1Afm9bpj" role="3cqZAp">
            <node concept="3cpWsn" id="4qE1Afm9bpk" role="3cpWs9">
              <property role="TrG5h" value="wv" />
              <node concept="3uibUv" id="4qE1Afm9bpl" role="1tU5fm">
                <ref role="3uigEE" to="ykoa:~WeatherValues" resolve="WeatherValues" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4qE1Afm9cxU" role="3cqZAp">
            <node concept="37vLTI" id="4qE1Afm9gUd" role="3clFbG">
              <node concept="2ShNRf" id="4qE1Afm9gVo" role="37vLTx">
                <node concept="1pGfFk" id="4qE1Afm9h8W" role="2ShVmc">
                  <ref role="37wK5l" to="ykoa:~WeatherValues.&lt;init&gt;(java.lang.String,boolean)" resolve="WeatherValues" />
                  <node concept="Xl_RD" id="4qE1Afm9h9y" role="37wK5m">
                    <property role="Xl_RC" value="asdf" />
                    <node concept="17Uvod" id="4qE1Afm9hLq" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="4qE1Afm9hLt" role="3zH0cK">
                        <node concept="3clFbS" id="4qE1Afm9hLu" role="2VODD2">
                          <node concept="3clFbF" id="4qE1Afm9hL$" role="3cqZAp">
                            <node concept="2OqwBi" id="4qE1Afm9hLv" role="3clFbG">
                              <node concept="3TrcHB" id="4qE1Afm9hLy" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                              <node concept="30H73N" id="4qE1Afm9hLz" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbT" id="4qE1Afm9haK" role="37wK5m">
                    <property role="3clFbU" value="false" />
                    <node concept="17Uvod" id="4qE1Afm9hYV" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123137/1068580123138" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="4qE1Afm9hYY" role="3zH0cK">
                        <node concept="3clFbS" id="4qE1Afm9hYZ" role="2VODD2">
                          <node concept="3clFbF" id="4qE1Afm9hZ5" role="3cqZAp">
                            <node concept="2OqwBi" id="4qE1Afm9hZ0" role="3clFbG">
                              <node concept="3TrcHB" id="4qE1Afm9hZ3" role="2OqNvi">
                                <ref role="3TsBF5" to="aw7t:6gi3O$9nJX8" resolve="IsRandom" />
                              </node>
                              <node concept="30H73N" id="4qE1Afm9hZ4" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="4qE1Afm9cxS" role="37vLTJ">
                <ref role="3cqZAo" node="4qE1Afm9bpk" resolve="wv" />
              </node>
            </node>
            <node concept="raruj" id="4qE1Afm9hIP" role="lGtFl" />
          </node>
          <node concept="3clFbF" id="5zwZig_0$Sp" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_0_os" role="3clFbG">
              <node concept="10M0yZ" id="5zwZig_0_2n" role="2Oq$k0">
                <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              </node>
              <node concept="liA8E" id="5zwZig_0A3i" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                <node concept="Xl_RD" id="5zwZig_0A47" role="37wK5m">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
            <node concept="raruj" id="5zwZig_0Abm" role="lGtFl" />
            <node concept="2b32R4" id="5zwZig_0Abo" role="lGtFl">
              <node concept="3JmXsc" id="5zwZig_0Abr" role="2P8S$">
                <node concept="3clFbS" id="5zwZig_0Abs" role="2VODD2">
                  <node concept="3clFbF" id="5zwZig_0Aby" role="3cqZAp">
                    <node concept="2OqwBi" id="5zwZig_0Abt" role="3clFbG">
                      <node concept="3Tsc0h" id="5zwZig_0Abw" role="2OqNvi">
                        <ref role="3TtcxE" to="aw7t:6gi3O$9nJX4" resolve="Weather" />
                      </node>
                      <node concept="30H73N" id="5zwZig_0Abx" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5zwZig_0Yee" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_0YY7" role="3clFbG">
              <node concept="37vLTw" id="5zwZig_0Yec" role="2Oq$k0">
                <ref role="3cqZAo" node="6gi3O$9nZvU" resolve="_weather" />
              </node>
              <node concept="TSZUe" id="5zwZig_101B" role="2OqNvi">
                <node concept="37vLTw" id="4qE1Afm9n5b" role="25WWJ7">
                  <ref role="3cqZAo" node="4qE1Afm9bpk" resolve="wv" />
                </node>
              </node>
            </node>
            <node concept="raruj" id="5zwZig_10cU" role="lGtFl" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gi3O$9nYEo" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="5zwZig_0IBk">
    <property role="TrG5h" value="reduce_Weather" />
    <ref role="3gUMe" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
    <node concept="312cEu" id="5zwZig_0IBr" role="13RCb5">
      <property role="TrG5h" value="Foo" />
      <node concept="3clFb_" id="5zwZig_0IBP" role="jymVt">
        <property role="TrG5h" value="Bar" />
        <node concept="3cqZAl" id="5zwZig_0IBR" role="3clF45" />
        <node concept="3Tm1VV" id="5zwZig_0IBS" role="1B3o_S" />
        <node concept="3clFbS" id="5zwZig_0IBT" role="3clF47">
          <node concept="3cpWs8" id="5zwZig_0Xjy" role="3cqZAp">
            <node concept="3cpWsn" id="5zwZig_0Xjz" role="3cpWs9">
              <property role="TrG5h" value="wv" />
              <node concept="3uibUv" id="5zwZig_0Xj$" role="1tU5fm">
                <ref role="3uigEE" to="ykoa:~WeatherValues" resolve="WeatherValues" />
              </node>
              <node concept="2ShNRf" id="5zwZig_0XkO" role="33vP2m">
                <node concept="1pGfFk" id="5zwZig_0Xwh" role="2ShVmc">
                  <ref role="37wK5l" to="ykoa:~WeatherValues.&lt;init&gt;(java.lang.String,boolean)" resolve="WeatherValues" />
                  <node concept="Xl_RD" id="4qE1Afm8LuY" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="3clFbT" id="4qE1Afm8Lqh" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5zwZig_3mBf" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_3mHV" role="3clFbG">
              <node concept="37vLTw" id="5zwZig_3mBd" role="2Oq$k0">
                <ref role="3cqZAo" node="5zwZig_0Xjz" resolve="wv" />
              </node>
              <node concept="liA8E" id="5zwZig_3mT3" role="2OqNvi">
                <ref role="37wK5l" to="ykoa:~WeatherValues.AppendWeather(nz.ac.victoria.swen424.weather.Weather):void" resolve="AppendWeather" />
                <node concept="2ShNRf" id="5zwZig_3mUJ" role="37wK5m">
                  <node concept="1pGfFk" id="5zwZig_3n7F" role="2ShVmc">
                    <ref role="37wK5l" to="ykoa:~Weather.&lt;init&gt;(nz.ac.victoria.swen424.weather.WeatherEnum,nz.ac.victoria.swen424.weather.WindSpeedEnum)" resolve="Weather" />
                    <node concept="10Nm6u" id="5zwZig_3n8$" role="37wK5m">
                      <node concept="1sPUBX" id="5zwZig_3nfJ" role="lGtFl">
                        <ref role="v9R2y" node="5zwZig_1zDN" resolve="ReduceWeatherEnum" />
                      </node>
                    </node>
                    <node concept="10Nm6u" id="5zwZig_4ESZ" role="37wK5m">
                      <node concept="1sPUBX" id="5zwZig_4EX2" role="lGtFl">
                        <ref role="v9R2y" node="5zwZig_3Ark" resolve="ReduceWindSpeedEnum" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="5zwZig_3ndm" role="lGtFl" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5zwZig_0IBs" role="1B3o_S" />
    </node>
  </node>
  <node concept="jVnub" id="5zwZig_1zDN">
    <property role="TrG5h" value="ReduceWeatherEnum" />
    <node concept="3aamgX" id="5zwZig_1zE9" role="3aUrZf">
      <ref role="30HIoZ" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
      <node concept="30G5F_" id="5zwZig_1zEw" role="30HLyM">
        <node concept="3clFbS" id="5zwZig_1zEx" role="2VODD2">
          <node concept="3clFbF" id="5zwZig_1zLG" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_1_oE" role="3clFbG">
              <node concept="2OqwBi" id="5zwZig_1$1y" role="2Oq$k0">
                <node concept="30H73N" id="5zwZig_1zLF" role="2Oq$k0" />
                <node concept="3TrcHB" id="5zwZig_1$eW" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:6gi3O$9nB8g" resolve="Type" />
                </node>
              </node>
              <node concept="3t7uKx" id="5zwZig_1_WE" role="2OqNvi">
                <node concept="uoxfO" id="5zwZig_1_WG" role="3t7uKA">
                  <ref role="uo_Cq" to="aw7t:6gi3O$9nB7R" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="5zwZig_1DN6" role="1lVwrX">
        <node concept="Rm8GO" id="5zwZig_1DN4" role="gfFT$">
          <ref role="Rm8GQ" to="ykoa:~WeatherEnum.ClearSky" resolve="ClearSky" />
          <ref role="1Px2BO" to="ykoa:~WeatherEnum" resolve="WeatherEnum" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5zwZig_1DWu" role="3aUrZf">
      <ref role="30HIoZ" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
      <node concept="gft3U" id="5zwZig_1GXD" role="1lVwrX">
        <node concept="Rm8GO" id="5zwZig_1GXB" role="gfFT$">
          <ref role="Rm8GQ" to="ykoa:~WeatherEnum.Overcast" resolve="Overcast" />
          <ref role="1Px2BO" to="ykoa:~WeatherEnum" resolve="WeatherEnum" />
        </node>
      </node>
      <node concept="30G5F_" id="5zwZig_1Ek$" role="30HLyM">
        <node concept="3clFbS" id="5zwZig_1Ek_" role="2VODD2">
          <node concept="3clFbF" id="5zwZig_1ErK" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_1G0h" role="3clFbG">
              <node concept="2OqwBi" id="5zwZig_1EFA" role="2Oq$k0">
                <node concept="30H73N" id="5zwZig_1ErJ" role="2Oq$k0" />
                <node concept="3TrcHB" id="5zwZig_1EYV" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:6gi3O$9nB8g" resolve="Type" />
                </node>
              </node>
              <node concept="3t7uKx" id="5zwZig_1G$h" role="2OqNvi">
                <node concept="uoxfO" id="5zwZig_1G$j" role="3t7uKA">
                  <ref role="uo_Cq" to="aw7t:6gi3O$9nB86" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5zwZig_1H71" role="3aUrZf">
      <ref role="30HIoZ" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
      <node concept="gft3U" id="5zwZig_1JY$" role="1lVwrX">
        <node concept="Rm8GO" id="5zwZig_1K8J" role="gfFT$">
          <ref role="Rm8GQ" to="ykoa:~WeatherEnum.Rain" resolve="Rain" />
          <ref role="1Px2BO" to="ykoa:~WeatherEnum" resolve="WeatherEnum" />
        </node>
      </node>
      <node concept="30G5F_" id="5zwZig_1Hrd" role="30HLyM">
        <node concept="3clFbS" id="5zwZig_1Hre" role="2VODD2">
          <node concept="3clFbF" id="5zwZig_1Hyp" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_1IS5" role="3clFbG">
              <node concept="2OqwBi" id="5zwZig_1HI$" role="2Oq$k0">
                <node concept="30H73N" id="5zwZig_1Hyo" role="2Oq$k0" />
                <node concept="3TrcHB" id="5zwZig_1HW6" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:6gi3O$9nB8g" resolve="Type" />
                </node>
              </node>
              <node concept="3t7uKx" id="5zwZig_1Js5" role="2OqNvi">
                <node concept="uoxfO" id="5zwZig_1Js7" role="3t7uKA">
                  <ref role="uo_Cq" to="aw7t:6gi3O$9nB7U" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
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
                <node concept="3uibUv" id="5n4GHB4fMh4" role="_ZDj9">
                  <ref role="3uigEE" to="mgvq:~ElConsumer" resolve="ElConsumer" />
                </node>
              </node>
              <node concept="2ShNRf" id="50o97QFNT6F" role="33vP2m">
                <node concept="2Jqq0_" id="50o97QFNTcA" role="2ShVmc">
                  <node concept="3uibUv" id="5n4GHB4fMWM" role="HW$YZ">
                    <ref role="3uigEE" to="mgvq:~ElConsumer" resolve="ElConsumer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1k1HPbVDwid" role="3cqZAp">
            <node concept="3cpWsn" id="1k1HPbVDwie" role="3cpWs9">
              <property role="TrG5h" value="consumer" />
              <node concept="3uibUv" id="1k1HPbVDQUq" role="1tU5fm">
                <ref role="3uigEE" to="mgvq:~ElConsumer" resolve="ElConsumer" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1k1HPbVDy9o" role="3cqZAp">
            <node concept="37vLTI" id="1k1HPbVDyVa" role="3clFbG">
              <node concept="2ShNRf" id="1k1HPbVDyVK" role="37vLTx">
                <node concept="1pGfFk" id="1k1HPbVD_$e" role="2ShVmc">
                  <ref role="37wK5l" to="mgvq:~ElConsumer.&lt;init&gt;(java.lang.String,int,int)" resolve="ElConsumer" />
                  <node concept="Xl_RD" id="1k1HPbVD_$H" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                    <node concept="17Uvod" id="1k1HPbVD_Gu" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1k1HPbVD_Gx" role="3zH0cK">
                        <node concept="3clFbS" id="1k1HPbVD_Gy" role="2VODD2">
                          <node concept="3clFbF" id="1k1HPbVD_GC" role="3cqZAp">
                            <node concept="2OqwBi" id="1k1HPbVD_Gz" role="3clFbG">
                              <node concept="3TrcHB" id="1k1HPbVD_GA" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                              <node concept="30H73N" id="1k1HPbVD_GB" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="1k1HPbVD_Al" role="37wK5m">
                    <property role="3cmrfH" value="5" />
                    <node concept="17Uvod" id="1k1HPbVD_Tn" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1k1HPbVD_Tq" role="3zH0cK">
                        <node concept="3clFbS" id="1k1HPbVD_Tr" role="2VODD2">
                          <node concept="3clFbF" id="1k1HPbVD_Tx" role="3cqZAp">
                            <node concept="2OqwBi" id="1k1HPbVD_Ts" role="3clFbG">
                              <node concept="3TrcHB" id="1k1HPbVD_Tv" role="2OqNvi">
                                <ref role="3TsBF5" to="aw7t:50o97QFMYs3" resolve="MinConsumption" />
                              </node>
                              <node concept="30H73N" id="1k1HPbVD_Tw" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="1k1HPbVD_BH" role="37wK5m">
                    <property role="3cmrfH" value="5" />
                    <node concept="17Uvod" id="1k1HPbVDAns" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1k1HPbVDAnv" role="3zH0cK">
                        <node concept="3clFbS" id="1k1HPbVDAnw" role="2VODD2">
                          <node concept="3clFbF" id="1k1HPbVDAnA" role="3cqZAp">
                            <node concept="2OqwBi" id="1k1HPbVDAnx" role="3clFbG">
                              <node concept="3TrcHB" id="1k1HPbVDAn$" role="2OqNvi">
                                <ref role="3TsBF5" to="aw7t:50o97QFMYs5" resolve="MaxConsumption" />
                              </node>
                              <node concept="30H73N" id="1k1HPbVDAn_" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1k1HPbVDy9m" role="37vLTJ">
                <ref role="3cqZAo" node="1k1HPbVDwie" resolve="consumer" />
              </node>
            </node>
            <node concept="raruj" id="1k1HPbVD_EY" role="lGtFl" />
          </node>
          <node concept="3clFbF" id="15nlfvPiJYr" role="3cqZAp">
            <node concept="2OqwBi" id="15nlfvPiM9u" role="3clFbG">
              <node concept="37vLTw" id="15nlfvPiKAf" role="2Oq$k0">
                <ref role="3cqZAo" node="50o97QFNT4V" resolve="_consumers" />
              </node>
              <node concept="TSZUe" id="15nlfvPiNcH" role="2OqNvi">
                <node concept="37vLTw" id="1k1HPbVDKfZ" role="25WWJ7">
                  <ref role="3cqZAo" node="1k1HPbVDwie" resolve="consumer" />
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
  <node concept="jVnub" id="5zwZig_3Ark">
    <property role="TrG5h" value="ReduceWindSpeedEnum" />
    <node concept="3aamgX" id="5zwZig_3Art" role="3aUrZf">
      <ref role="30HIoZ" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
      <node concept="gft3U" id="5zwZig_3AxY" role="1lVwrX">
        <node concept="Rm8GO" id="5zwZig_4Jsc" role="gfFT$">
          <ref role="Rm8GQ" to="ykoa:~WindSpeedEnum.Flat" resolve="Flat" />
          <ref role="1Px2BO" to="ykoa:~WindSpeedEnum" resolve="WindSpeedEnum" />
        </node>
      </node>
      <node concept="30G5F_" id="5zwZig_3Ayj" role="30HLyM">
        <node concept="3clFbS" id="5zwZig_3Ayk" role="2VODD2">
          <node concept="3clFbF" id="5zwZig_3ADv" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_3Ce0" role="3clFbG">
              <node concept="2OqwBi" id="5zwZig_3ATl" role="2Oq$k0">
                <node concept="30H73N" id="5zwZig_3ADu" role="2Oq$k0" />
                <node concept="3TrcHB" id="5zwZig_3BcE" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:6gi3O$9nB8j" resolve="Wind" />
                </node>
              </node>
              <node concept="3t7uKx" id="5zwZig_3CM0" role="2OqNvi">
                <node concept="uoxfO" id="5zwZig_3CM2" role="3t7uKA">
                  <ref role="uo_Cq" to="aw7t:6gi3O$9nOmm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5zwZig_3Dbm" role="3aUrZf">
      <ref role="30HIoZ" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
      <node concept="gft3U" id="5zwZig_3Hpp" role="1lVwrX">
        <node concept="Rm8GO" id="5zwZig_4Jth" role="gfFT$">
          <ref role="Rm8GQ" to="ykoa:~WindSpeedEnum.LightAir" resolve="LightAir" />
          <ref role="1Px2BO" to="ykoa:~WindSpeedEnum" resolve="WindSpeedEnum" />
        </node>
      </node>
      <node concept="30G5F_" id="5zwZig_3DtU" role="30HLyM">
        <node concept="3clFbS" id="5zwZig_3DtV" role="2VODD2">
          <node concept="3clFbF" id="5zwZig_3D_6" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_3F64" role="3clFbG">
              <node concept="2OqwBi" id="5zwZig_3DLh" role="2Oq$k0">
                <node concept="30H73N" id="5zwZig_3D_5" role="2Oq$k0" />
                <node concept="3TrcHB" id="5zwZig_3E4I" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:6gi3O$9nB8j" resolve="Wind" />
                </node>
              </node>
              <node concept="3t7uKx" id="5zwZig_3FE4" role="2OqNvi">
                <node concept="uoxfO" id="5zwZig_3FE6" role="3t7uKA">
                  <ref role="uo_Cq" to="aw7t:6gi3O$9nOmn" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5zwZig_3HzR" role="3aUrZf">
      <ref role="30HIoZ" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
      <node concept="gft3U" id="5zwZig_3Kri" role="1lVwrX">
        <node concept="Rm8GO" id="5zwZig_4JtV" role="gfFT$">
          <ref role="Rm8GQ" to="ykoa:~WindSpeedEnum.LightBreeze" resolve="LightBreeze" />
          <ref role="1Px2BO" to="ykoa:~WindSpeedEnum" resolve="WindSpeedEnum" />
        </node>
      </node>
      <node concept="30G5F_" id="5zwZig_3HRV" role="30HLyM">
        <node concept="3clFbS" id="5zwZig_3HRW" role="2VODD2">
          <node concept="3clFbF" id="5zwZig_3HZ7" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_3JkN" role="3clFbG">
              <node concept="2OqwBi" id="5zwZig_3Ibi" role="2Oq$k0">
                <node concept="30H73N" id="5zwZig_3HZ6" role="2Oq$k0" />
                <node concept="3TrcHB" id="5zwZig_3IoO" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:6gi3O$9nB8j" resolve="Wind" />
                </node>
              </node>
              <node concept="3t7uKx" id="5zwZig_3JSN" role="2OqNvi">
                <node concept="uoxfO" id="5zwZig_3JSP" role="3t7uKA">
                  <ref role="uo_Cq" to="aw7t:6gi3O$9nOmq" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5zwZig_3K_K" role="3aUrZf">
      <ref role="30HIoZ" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
      <node concept="gft3U" id="5zwZig_3NuF" role="1lVwrX">
        <node concept="Rm8GO" id="5zwZig_4Ju_" role="gfFT$">
          <ref role="Rm8GQ" to="ykoa:~WindSpeedEnum.GentleBreeze" resolve="GentleBreeze" />
          <ref role="1Px2BO" to="ykoa:~WindSpeedEnum" resolve="WindSpeedEnum" />
        </node>
      </node>
      <node concept="30G5F_" id="5zwZig_3KVk" role="30HLyM">
        <node concept="3clFbS" id="5zwZig_3KVl" role="2VODD2">
          <node concept="3clFbF" id="5zwZig_3L2w" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_3Moc" role="3clFbG">
              <node concept="2OqwBi" id="5zwZig_3LeF" role="2Oq$k0">
                <node concept="30H73N" id="5zwZig_3L2v" role="2Oq$k0" />
                <node concept="3TrcHB" id="5zwZig_3Lsd" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:6gi3O$9nB8j" resolve="Wind" />
                </node>
              </node>
              <node concept="3t7uKx" id="5zwZig_3MWc" role="2OqNvi">
                <node concept="uoxfO" id="5zwZig_3MWe" role="3t7uKA">
                  <ref role="uo_Cq" to="aw7t:6gi3O$9nOmu" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5zwZig_3ND9" role="3aUrZf">
      <ref role="30HIoZ" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
      <node concept="gft3U" id="5zwZig_3R2j" role="1lVwrX">
        <node concept="Rm8GO" id="5zwZig_4Jvf" role="gfFT$">
          <ref role="Rm8GQ" to="ykoa:~WindSpeedEnum.ModerateBreeze" resolve="ModerateBreeze" />
          <ref role="1Px2BO" to="ykoa:~WindSpeedEnum" resolve="WindSpeedEnum" />
        </node>
      </node>
      <node concept="30G5F_" id="5zwZig_3O0d" role="30HLyM">
        <node concept="3clFbS" id="5zwZig_3O0e" role="2VODD2">
          <node concept="3clFbF" id="5zwZig_3O7p" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_3PCn" role="3clFbG">
              <node concept="2OqwBi" id="5zwZig_3Oj$" role="2Oq$k0">
                <node concept="30H73N" id="5zwZig_3O7o" role="2Oq$k0" />
                <node concept="3TrcHB" id="5zwZig_3OB1" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:6gi3O$9nB8j" resolve="Wind" />
                </node>
              </node>
              <node concept="3t7uKx" id="5zwZig_3Qcn" role="2OqNvi">
                <node concept="uoxfO" id="5zwZig_3Qcp" role="3t7uKA">
                  <ref role="uo_Cq" to="aw7t:6gi3O$9nOmz" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5zwZig_3RcL" role="3aUrZf">
      <ref role="30HIoZ" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
      <node concept="gft3U" id="5zwZig_3Uc7" role="1lVwrX">
        <node concept="Rm8GO" id="5zwZig_4JvT" role="gfFT$">
          <ref role="Rm8GQ" to="ykoa:~WindSpeedEnum.FreshBreeze" resolve="FreshBreeze" />
          <ref role="1Px2BO" to="ykoa:~WindSpeedEnum" resolve="WindSpeedEnum" />
        </node>
      </node>
      <node concept="30G5F_" id="5zwZig_3R_l" role="30HLyM">
        <node concept="3clFbS" id="5zwZig_3R_m" role="2VODD2">
          <node concept="3clFbF" id="5zwZig_3RGx" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_3T2d" role="3clFbG">
              <node concept="2OqwBi" id="5zwZig_3RSG" role="2Oq$k0">
                <node concept="30H73N" id="5zwZig_3RGw" role="2Oq$k0" />
                <node concept="3TrcHB" id="5zwZig_3S6e" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:6gi3O$9nB8j" resolve="Wind" />
                </node>
              </node>
              <node concept="3t7uKx" id="5zwZig_3TAd" role="2OqNvi">
                <node concept="uoxfO" id="5zwZig_3TAf" role="3t7uKA">
                  <ref role="uo_Cq" to="aw7t:6gi3O$9nOmD" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5zwZig_3Um_" role="3aUrZf">
      <ref role="30HIoZ" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
      <node concept="gft3U" id="5zwZig_3Xt7" role="1lVwrX">
        <node concept="Rm8GO" id="5zwZig_4Jwz" role="gfFT$">
          <ref role="Rm8GQ" to="ykoa:~WindSpeedEnum.StrongBreeze" resolve="StrongBreeze" />
          <ref role="1Px2BO" to="ykoa:~WindSpeedEnum" resolve="WindSpeedEnum" />
        </node>
      </node>
      <node concept="30G5F_" id="5zwZig_3UKD" role="30HLyM">
        <node concept="3clFbS" id="5zwZig_3UKE" role="2VODD2">
          <node concept="3clFbF" id="5zwZig_3URP" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_3Wdx" role="3clFbG">
              <node concept="2OqwBi" id="5zwZig_3V40" role="2Oq$k0">
                <node concept="30H73N" id="5zwZig_3URO" role="2Oq$k0" />
                <node concept="3TrcHB" id="5zwZig_3Vhy" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:6gi3O$9nB8j" resolve="Wind" />
                </node>
              </node>
              <node concept="3t7uKx" id="5zwZig_3WLx" role="2OqNvi">
                <node concept="uoxfO" id="5zwZig_3WLz" role="3t7uKA">
                  <ref role="uo_Cq" to="aw7t:6gi3O$9nOmK" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5zwZig_40wM" role="3aUrZf">
      <ref role="30HIoZ" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
      <node concept="30G5F_" id="5zwZig_40XO" role="30HLyM">
        <node concept="3clFbS" id="5zwZig_40XP" role="2VODD2">
          <node concept="3clFbF" id="5zwZig_4150" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_42w3" role="3clFbG">
              <node concept="2OqwBi" id="5zwZig_41hb" role="2Oq$k0">
                <node concept="30H73N" id="5zwZig_414Z" role="2Oq$k0" />
                <node concept="3TrcHB" id="5zwZig_41uH" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:6gi3O$9nB8j" resolve="Wind" />
                </node>
              </node>
              <node concept="3t7uKx" id="5zwZig_4343" role="2OqNvi">
                <node concept="uoxfO" id="5zwZig_4345" role="3t7uKA">
                  <ref role="uo_Cq" to="aw7t:6gi3O$9nOmS" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="5zwZig_44rf" role="1lVwrX">
        <node concept="Rm8GO" id="5zwZig_4Jxd" role="gfFT$">
          <ref role="Rm8GQ" to="ykoa:~WindSpeedEnum.ModerateGale" resolve="ModerateGale" />
          <ref role="1Px2BO" to="ykoa:~WindSpeedEnum" resolve="WindSpeedEnum" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5zwZig_3XB_" role="3aUrZf">
      <ref role="30HIoZ" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
      <node concept="gft3U" id="5zwZig_44IQ" role="1lVwrX">
        <node concept="Rm8GO" id="5zwZig_4JxR" role="gfFT$">
          <ref role="Rm8GQ" to="ykoa:~WindSpeedEnum.FrshGale" resolve="FrshGale" />
          <ref role="1Px2BO" to="ykoa:~WindSpeedEnum" resolve="WindSpeedEnum" />
        </node>
      </node>
      <node concept="30G5F_" id="5zwZig_3Y39" role="30HLyM">
        <node concept="3clFbS" id="5zwZig_3Y3a" role="2VODD2">
          <node concept="3clFbF" id="5zwZig_3Yal" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_3Zw1" role="3clFbG">
              <node concept="2OqwBi" id="5zwZig_3Ymw" role="2Oq$k0">
                <node concept="30H73N" id="5zwZig_3Yak" role="2Oq$k0" />
                <node concept="3TrcHB" id="5zwZig_3Y$2" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:6gi3O$9nB8j" resolve="Wind" />
                </node>
              </node>
              <node concept="3t7uKx" id="5zwZig_4041" role="2OqNvi">
                <node concept="uoxfO" id="5zwZig_4043" role="3t7uKA">
                  <ref role="uo_Cq" to="aw7t:6gi3O$9nOn1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5zwZig_44Tk" role="3aUrZf">
      <ref role="30HIoZ" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
      <node concept="gft3U" id="5zwZig_47Xb" role="1lVwrX">
        <node concept="Rm8GO" id="5zwZig_4Jyx" role="gfFT$">
          <ref role="Rm8GQ" to="ykoa:~WindSpeedEnum.StrongGale" resolve="StrongGale" />
          <ref role="1Px2BO" to="ykoa:~WindSpeedEnum" resolve="WindSpeedEnum" />
        </node>
      </node>
      <node concept="30G5F_" id="5zwZig_45nS" role="30HLyM">
        <node concept="3clFbS" id="5zwZig_45nT" role="2VODD2">
          <node concept="3clFbF" id="5zwZig_45v4" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_46U7" role="3clFbG">
              <node concept="2OqwBi" id="5zwZig_45Ff" role="2Oq$k0">
                <node concept="30H73N" id="5zwZig_45v3" role="2Oq$k0" />
                <node concept="3TrcHB" id="5zwZig_45SL" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:6gi3O$9nB8j" resolve="Wind" />
                </node>
              </node>
              <node concept="3t7uKx" id="5zwZig_47u7" role="2OqNvi">
                <node concept="uoxfO" id="5zwZig_47u9" role="3t7uKA">
                  <ref role="uo_Cq" to="aw7t:6gi3O$9nOnb" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5zwZig_48$w" role="3aUrZf">
      <ref role="30HIoZ" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
      <node concept="gft3U" id="5zwZig_4bO8" role="1lVwrX">
        <node concept="Rm8GO" id="5zwZig_4Jzb" role="gfFT$">
          <ref role="Rm8GQ" to="ykoa:~WindSpeedEnum.Storm" resolve="Storm" />
          <ref role="1Px2BO" to="ykoa:~WindSpeedEnum" resolve="WindSpeedEnum" />
        </node>
      </node>
      <node concept="30G5F_" id="5zwZig_494$" role="30HLyM">
        <node concept="3clFbS" id="5zwZig_494_" role="2VODD2">
          <node concept="3clFbF" id="5zwZig_49bK" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_4aAN" role="3clFbG">
              <node concept="2OqwBi" id="5zwZig_49nV" role="2Oq$k0">
                <node concept="30H73N" id="5zwZig_49bJ" role="2Oq$k0" />
                <node concept="3TrcHB" id="5zwZig_49_t" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:6gi3O$9nB8j" resolve="Wind" />
                </node>
              </node>
              <node concept="3t7uKx" id="5zwZig_4baN" role="2OqNvi">
                <node concept="uoxfO" id="5zwZig_4baP" role="3t7uKA">
                  <ref role="uo_Cq" to="aw7t:6gi3O$9nOnm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5zwZig_4bYA" role="3aUrZf">
      <ref role="30HIoZ" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
      <node concept="gft3U" id="5zwZig_4ffT" role="1lVwrX">
        <node concept="Rm8GO" id="5zwZig_4JzP" role="gfFT$">
          <ref role="Rm8GQ" to="ykoa:~WindSpeedEnum.ViolentStorm" resolve="ViolentStorm" />
          <ref role="1Px2BO" to="ykoa:~WindSpeedEnum" resolve="WindSpeedEnum" />
        </node>
      </node>
      <node concept="30G5F_" id="5zwZig_4cwa" role="30HLyM">
        <node concept="3clFbS" id="5zwZig_4cwb" role="2VODD2">
          <node concept="3clFbF" id="5zwZig_4cBm" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_4e8k" role="3clFbG">
              <node concept="2OqwBi" id="5zwZig_4cNx" role="2Oq$k0">
                <node concept="30H73N" id="5zwZig_4cBl" role="2Oq$k0" />
                <node concept="3TrcHB" id="5zwZig_4d6Y" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:6gi3O$9nB8j" resolve="Wind" />
                </node>
              </node>
              <node concept="3t7uKx" id="5zwZig_4eGk" role="2OqNvi">
                <node concept="uoxfO" id="5zwZig_4eGm" role="3t7uKA">
                  <ref role="uo_Cq" to="aw7t:6gi3O$9nOny" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5zwZig_4fqn" role="3aUrZf">
      <ref role="30HIoZ" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
      <node concept="gft3U" id="5zwZig_4jfx" role="1lVwrX">
        <node concept="Rm8GO" id="5zwZig_4J$v" role="gfFT$">
          <ref role="Rm8GQ" to="ykoa:~WindSpeedEnum.HurricaneForce" resolve="HurricaneForce" />
          <ref role="1Px2BO" to="ykoa:~WindSpeedEnum" resolve="WindSpeedEnum" />
        </node>
      </node>
      <node concept="30G5F_" id="5zwZig_4fXr" role="30HLyM">
        <node concept="3clFbS" id="5zwZig_4fXs" role="2VODD2">
          <node concept="3clFbF" id="5zwZig_4g4B" role="3cqZAp">
            <node concept="2OqwBi" id="5zwZig_4hvE" role="3clFbG">
              <node concept="2OqwBi" id="5zwZig_4ggM" role="2Oq$k0">
                <node concept="30H73N" id="5zwZig_4g4A" role="2Oq$k0" />
                <node concept="3TrcHB" id="5zwZig_4guk" role="2OqNvi">
                  <ref role="3TsBF5" to="aw7t:6gi3O$9nB8j" resolve="Wind" />
                </node>
              </node>
              <node concept="3t7uKx" id="5zwZig_4i3E" role="2OqNvi">
                <node concept="uoxfO" id="5zwZig_4i3G" role="3t7uKA">
                  <ref role="uo_Cq" to="aw7t:6gi3O$9nOnJ" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="5zwZig_4435">
    <property role="TrG5h" value="case_Weather" />
    <ref role="3gUMe" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
    <node concept="312cEu" id="5zwZig_44ce" role="13RCb5">
      <property role="TrG5h" value="Foo" />
      <node concept="3clFb_" id="5zwZig_44cA" role="jymVt">
        <property role="TrG5h" value="Bar" />
        <node concept="3cqZAl" id="5zwZig_44cC" role="3clF45" />
        <node concept="3Tm1VV" id="5zwZig_44cD" role="1B3o_S" />
        <node concept="3clFbS" id="5zwZig_44cE" role="3clF47">
          <node concept="3cpWs8" id="5zwZig_44ej" role="3cqZAp">
            <node concept="3cpWsn" id="5zwZig_44ek" role="3cpWs9">
              <property role="TrG5h" value="ws" />
              <node concept="3uibUv" id="5zwZig_4NMi" role="1tU5fm">
                <ref role="3uigEE" to="ykoa:~WindSpeedEnum" resolve="WindSpeedEnum" />
              </node>
              <node concept="Rm8GO" id="5zwZig_4NOI" role="33vP2m">
                <ref role="Rm8GQ" to="ykoa:~WindSpeedEnum.Flat" resolve="Flat" />
                <ref role="1Px2BO" to="ykoa:~WindSpeedEnum" resolve="WindSpeedEnum" />
                <node concept="raruj" id="5zwZig_4NPf" role="lGtFl" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5zwZig_44cf" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="1G90Zx2m8ny">
    <property role="TrG5h" value="reduce_Grid" />
    <ref role="3gUMe" to="aw7t:4NGxdIp910w" resolve="PowerGrid" />
    <node concept="312cEu" id="1G90Zx2m8o1" role="13RCb5">
      <property role="TrG5h" value="Foo" />
      <node concept="3clFb_" id="1G90Zx2m9cc" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="bar" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="1G90Zx2m9cf" role="3clF47">
          <node concept="3cpWs8" id="1G90Zx2m9cI" role="3cqZAp">
            <node concept="3cpWsn" id="1G90Zx2m9cL" role="3cpWs9">
              <property role="TrG5h" value="_grids" />
              <node concept="_YKpA" id="1G90Zx2m9cG" role="1tU5fm">
                <node concept="3uibUv" id="1G90Zx2n6qN" role="_ZDj9">
                  <ref role="3uigEE" to="mgvq:~ElGrid" resolve="ElGrid" />
                </node>
              </node>
              <node concept="2ShNRf" id="1G90Zx2m9eP" role="33vP2m">
                <node concept="2Jqq0_" id="1G90Zx2mbRD" role="2ShVmc">
                  <node concept="3uibUv" id="1G90Zx2n6V2" role="HW$YZ">
                    <ref role="3uigEE" to="mgvq:~ElGrid" resolve="ElGrid" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1G90Zx2qP9l" role="3cqZAp">
            <node concept="3cpWsn" id="1G90Zx2qP9m" role="3cpWs9">
              <property role="TrG5h" value="grid" />
              <node concept="3uibUv" id="1G90Zx2qP9n" role="1tU5fm">
                <ref role="3uigEE" to="mgvq:~ElGrid" resolve="ElGrid" />
              </node>
              <node concept="2ShNRf" id="1G90Zx2qPJ6" role="33vP2m">
                <node concept="1pGfFk" id="1G90Zx2qPWD" role="2ShVmc">
                  <ref role="37wK5l" to="mgvq:~ElGrid.&lt;init&gt;(int,int,int,int,java.lang.String)" resolve="ElGrid" />
                  <node concept="3cmrfG" id="1G90Zx2qPX7" role="37wK5m">
                    <property role="3cmrfH" value="200" />
                    <node concept="17Uvod" id="1G90Zx2qPX_" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1G90Zx2qPXC" role="3zH0cK">
                        <node concept="3clFbS" id="1G90Zx2qPXD" role="2VODD2">
                          <node concept="3clFbF" id="1G90Zx2qPXJ" role="3cqZAp">
                            <node concept="2OqwBi" id="1G90Zx2qPXE" role="3clFbG">
                              <node concept="3TrcHB" id="1G90Zx2qPXH" role="2OqNvi">
                                <ref role="3TsBF5" to="aw7t:4NGxdIp910z" resolve="maxCapacity" />
                              </node>
                              <node concept="30H73N" id="1G90Zx2qPXI" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="1G90Zx2qRfo" role="37wK5m">
                    <property role="3cmrfH" value="50" />
                    <node concept="17Uvod" id="1G90Zx2qRzd" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1G90Zx2qRzg" role="3zH0cK">
                        <node concept="3clFbS" id="1G90Zx2qRzh" role="2VODD2">
                          <node concept="3clFbF" id="1G90Zx2qRzn" role="3cqZAp">
                            <node concept="2OqwBi" id="1G90Zx2qRzi" role="3clFbG">
                              <node concept="3TrcHB" id="1G90Zx2qRzl" role="2OqNvi">
                                <ref role="3TsBF5" to="aw7t:4NGxdIp910_" resolve="percentusage" />
                              </node>
                              <node concept="30H73N" id="1G90Zx2qRzm" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="1G90Zx2qSQn" role="37wK5m">
                    <property role="3cmrfH" value="100" />
                    <node concept="17Uvod" id="1G90Zx2qTaW" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1G90Zx2qTaZ" role="3zH0cK">
                        <node concept="3clFbS" id="1G90Zx2qTb0" role="2VODD2">
                          <node concept="3clFbF" id="1G90Zx2qTb6" role="3cqZAp">
                            <node concept="2OqwBi" id="1G90Zx2qTb1" role="3clFbG">
                              <node concept="3TrcHB" id="1G90Zx2qTb4" role="2OqNvi">
                                <ref role="3TsBF5" to="aw7t:4NGxdIp910C" resolve="efficiency" />
                              </node>
                              <node concept="30H73N" id="1G90Zx2qTb5" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="1G90Zx2qTPB" role="37wK5m">
                    <property role="3cmrfH" value="4" />
                    <node concept="17Uvod" id="1G90Zx2qUaW" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1G90Zx2qUaZ" role="3zH0cK">
                        <node concept="3clFbS" id="1G90Zx2qUb0" role="2VODD2">
                          <node concept="3clFbF" id="1G90Zx2qUb6" role="3cqZAp">
                            <node concept="2OqwBi" id="1G90Zx2qUb1" role="3clFbG">
                              <node concept="3TrcHB" id="1G90Zx2qUb4" role="2OqNvi">
                                <ref role="3TsBF5" to="aw7t:4NGxdIp910G" resolve="voltage" />
                              </node>
                              <node concept="30H73N" id="1G90Zx2qUb5" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1G90Zx2qXjo" role="37wK5m">
                    <property role="Xl_RC" value="sector" />
                    <node concept="17Uvod" id="1G90Zx2qXYV" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1G90Zx2qXYY" role="3zH0cK">
                        <node concept="3clFbS" id="1G90Zx2qXYZ" role="2VODD2">
                          <node concept="3clFbF" id="1G90Zx2qXZ5" role="3cqZAp">
                            <node concept="2OqwBi" id="1G90Zx2qXZ0" role="3clFbG">
                              <node concept="3TrcHB" id="1G90Zx2qXZ3" role="2OqNvi">
                                <ref role="3TsBF5" to="aw7t:4NGxdIp910L" resolve="sector" />
                              </node>
                              <node concept="30H73N" id="1G90Zx2qXZ4" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="1G90Zx2qYtt" role="lGtFl" />
          </node>
          <node concept="3clFbF" id="1G90Zx2qZ$A" role="3cqZAp">
            <node concept="2OqwBi" id="1G90Zx2r0O8" role="3clFbG">
              <node concept="37vLTw" id="1G90Zx2qZ$$" role="2Oq$k0">
                <ref role="3cqZAo" node="1G90Zx2m9cL" resolve="_grids" />
              </node>
              <node concept="TSZUe" id="1G90Zx2r1m8" role="2OqNvi">
                <node concept="37vLTw" id="1G90Zx2r1nQ" role="25WWJ7">
                  <ref role="3cqZAo" node="1G90Zx2qP9m" resolve="grid" />
                </node>
              </node>
            </node>
            <node concept="raruj" id="1G90Zx2r1rQ" role="lGtFl" />
          </node>
        </node>
        <node concept="3Tm1VV" id="1G90Zx2m9c3" role="1B3o_S" />
        <node concept="3cqZAl" id="1G90Zx2m9c9" role="3clF45" />
      </node>
      <node concept="3Tm1VV" id="1G90Zx2m8o2" role="1B3o_S" />
      <node concept="3uibUv" id="1G90Zx2m9bS" role="1zkMxy">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
  </node>
</model>

