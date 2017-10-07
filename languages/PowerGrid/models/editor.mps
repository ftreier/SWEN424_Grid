<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5a8ea039-0432-4fb0-883f-92690104bf9e(PowerGrid.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="-1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="aw7t" ref="r:2a8ae552-038d-4f4d-a413-89014cd6b087(PowerGrid.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="2n2r" ref="r:962bfeb6-6039-41c3-a510-88073d6ca721(PowerGrid.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1160493135005" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyValues_GetValues" flags="in" index="MLZmj" />
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1164833692343" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyValues" flags="ng" index="PvTIS">
        <child id="1164833692344" name="valuesFunction" index="PvTIR" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="nn" index="3GMtW1" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
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
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="2565736246230036150" name="jetbrains.mps.lang.core.structure.ExportScopePublic" flags="ig" index="24uvON" />
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
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="24kQdi" id="2K_vMQvWbJa">
    <ref role="1XX52x" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
    <node concept="3EZMnI" id="2K_vMQvWbJf" role="2wV5jI">
      <node concept="l2Vlx" id="2K_vMQvWbJg" role="2iSdaV" />
      <node concept="3F0ifn" id="2K_vMQvWbJh" role="3EZMnx">
        <property role="3F0ifm" value="transformer" />
      </node>
      <node concept="3F0A7n" id="2K_vMQvWbJi" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2K_vMQvWbJj" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11L4FC" id="2K_vMQvWbJk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3mYdg7" id="2K_vMQvWbJl" role="3F10Kt">
          <property role="1413C4" value="body-paren" />
        </node>
        <node concept="11LMrY" id="2K_vMQvWbJm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2K_vMQvWbJn" role="3EZMnx">
        <property role="3F0ifm" value="max capacity" />
      </node>
      <node concept="3F0ifn" id="2K_vMQvWbJo" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="2K_vMQvWbJp" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="2K_vMQvWbJT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2K_vMQvWbJq" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:7rDXPBEWeTt" resolve="MaxCapacity" />
        <node concept="lj46D" id="2K_vMQvWqJP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2K_vMQvWbJr" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="11L4FC" id="2K_vMQvWbJs" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2K_vMQvWbJt" role="3EZMnx">
        <property role="3F0ifm" value="efficiency" />
      </node>
      <node concept="3F0ifn" id="2K_vMQvWbJu" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="2K_vMQvWbJv" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2K_vMQvWbJw" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:7rDXPBEWeTx" resolve="Efficiency" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2n_zr" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0ifn" id="1G90Zx2n__m" role="3EZMnx">
        <property role="3F0ifm" value="Left Net Level" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2n_BS" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="1G90Zx2n_$$" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:7rDXPBEWeTo" resolve="LeftNetLevel" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2n_Aa" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0ifn" id="1G90Zx2n_B0" role="3EZMnx">
        <property role="3F0ifm" value="Right Net Level" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2n_CM" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="1G90Zx2n_Ed" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:7rDXPBEWeTq" resolve="RightNetLevel" />
      </node>
      <node concept="3F0ifn" id="2K_vMQvWbJx" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="2K_vMQvWbJy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3mYdg7" id="2K_vMQvWbJz" role="3F10Kt">
          <property role="1413C4" value="body-paren" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="15nlfvPiBM8">
    <ref role="1XX52x" to="aw7t:50o97QFMYra" resolve="Consumer" />
    <node concept="3EZMnI" id="3nJJ606NoXy" role="2wV5jI">
      <node concept="l2Vlx" id="3nJJ606NoXz" role="2iSdaV" />
      <node concept="3F0ifn" id="3nJJ606NoX$" role="3EZMnx">
        <property role="3F0ifm" value="consumer" />
      </node>
      <node concept="3F0ifn" id="3nJJ606NoXA" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="3mYdg7" id="3nJJ606NoXB" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
        <node concept="ljvvj" id="3nJJ606NoXC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="3nJJ606NoXD" role="3EZMnx">
        <node concept="3F0ifn" id="3nJJ606NoYq" role="3EZMnx">
          <property role="3F0ifm" value="name:" />
        </node>
        <node concept="3F0A7n" id="3nJJ606NoYO" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="ljvvj" id="3nJJ606NoZs" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="3nJJ606NzjI" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="3nJJ606Nzkx" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:gOOYy9I" resolve="alias" />
          <node concept="ljvvj" id="3nJJ606Nzli" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="3nJJ606NoXE" role="2iSdaV" />
        <node concept="lj46D" id="3nJJ606NoXF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="3nJJ606NoXG" role="3EZMnx">
          <property role="3F0ifm" value="min consumption" />
        </node>
        <node concept="3F0ifn" id="3nJJ606NoXH" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="11L4FC" id="3nJJ606NoXI" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="3nJJ606NoXJ" role="3EZMnx">
          <ref role="1NtTu8" to="aw7t:50o97QFMYs3" resolve="MinConsumption" />
          <node concept="ljvvj" id="3nJJ606NoXK" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3nJJ606NoXL" role="3EZMnx">
          <property role="3F0ifm" value="max consumption" />
        </node>
        <node concept="3F0ifn" id="3nJJ606NoXM" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="11L4FC" id="3nJJ606NoXN" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="3nJJ606NoXO" role="3EZMnx">
          <ref role="1NtTu8" to="aw7t:50o97QFMYs5" resolve="MaxConsumption" />
          <node concept="ljvvj" id="3nJJ606NoXP" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="4qWfsD8Ryi3" role="3EZMnx">
          <property role="3F0ifm" value="Connected Transformer Name" />
        </node>
        <node concept="3F0ifn" id="4qWfsD8RyiP" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F0A7n" id="4qWfsD8RyjD" role="3EZMnx">
          <ref role="1NtTu8" to="aw7t:4qWfsD8P0vX" resolve="TransName" />
          <node concept="OXEIz" id="4ZDpIZbSYdU" role="P5bDN">
            <node concept="PvTIS" id="4ZDpIZbT0Hb" role="OY2wv">
              <node concept="MLZmj" id="4ZDpIZbT0Hd" role="PvTIR">
                <node concept="3clFbS" id="4ZDpIZbT0Hf" role="2VODD2">
                  <node concept="3cpWs8" id="4ZDpIZbT0Xl" role="3cqZAp">
                    <node concept="3cpWsn" id="4ZDpIZbT0Xo" role="3cpWs9">
                      <property role="TrG5h" value="ret" />
                      <node concept="_YKpA" id="4ZDpIZbT0Xj" role="1tU5fm">
                        <node concept="17QB3L" id="4ZDpIZbT1dy" role="_ZDj9" />
                      </node>
                      <node concept="2ShNRf" id="4ZDpIZbT1Yb" role="33vP2m">
                        <node concept="Tc6Ow" id="4ZDpIZbT2n7" role="2ShVmc">
                          <node concept="17QB3L" id="4ZDpIZbT39u" role="HW$YZ" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="4ZDpIZbVSQS" role="3cqZAp">
                    <node concept="2GrKxI" id="4ZDpIZbVSQU" role="2Gsz3X">
                      <property role="TrG5h" value="ty" />
                    </node>
                    <node concept="2OqwBi" id="4ZDpIZbVVgT" role="2GsD0m">
                      <node concept="2OqwBi" id="4ZDpIZbVTZW" role="2Oq$k0">
                        <node concept="3GMtW1" id="4ZDpIZbVTFS" role="2Oq$k0" />
                        <node concept="1mfA1w" id="4ZDpIZbVUzB" role="2OqNvi" />
                      </node>
                      <node concept="32TBzR" id="4ZDpIZbVVVa" role="2OqNvi" />
                    </node>
                    <node concept="3clFbS" id="4ZDpIZbVSQY" role="2LFqv$">
                      <node concept="3clFbJ" id="4ZDpIZbVZ2Y" role="3cqZAp">
                        <node concept="2ZW3vV" id="4ZDpIZbWnUO" role="3clFbw">
                          <node concept="2GrUjf" id="4ZDpIZbW1yc" role="2ZW6bz">
                            <ref role="2Gs0qQ" node="4ZDpIZbVSQU" resolve="ty" />
                          </node>
                          <node concept="3Tqbb2" id="4ZDpIZbWqlo" role="2ZW6by">
                            <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="4ZDpIZbVZ30" role="3clFbx">
                          <node concept="3cpWs8" id="4ZDpIZbWGJw" role="3cqZAp">
                            <node concept="3cpWsn" id="4ZDpIZbWGJz" role="3cpWs9">
                              <property role="TrG5h" value="temp" />
                              <node concept="3Tqbb2" id="4ZDpIZbWGJu" role="1tU5fm">
                                <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                              </node>
                              <node concept="1PxgMI" id="4ZDpIZbWK2H" role="33vP2m">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="4ZDpIZbWKzs" role="3oSUPX">
                                  <ref role="cht4Q" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                                </node>
                                <node concept="2GrUjf" id="4ZDpIZbWILy" role="1m5AlR">
                                  <ref role="2Gs0qQ" node="4ZDpIZbVSQU" resolve="ty" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="4ZDpIZbW_Y3" role="3cqZAp">
                            <node concept="2OqwBi" id="4ZDpIZbWANN" role="3clFbG">
                              <node concept="37vLTw" id="4ZDpIZbW_Y1" role="2Oq$k0">
                                <ref role="3cqZAo" node="4ZDpIZbT0Xo" resolve="ret" />
                              </node>
                              <node concept="TSZUe" id="4ZDpIZbWChu" role="2OqNvi">
                                <node concept="2OqwBi" id="4ZDpIZbWQnE" role="25WWJ7">
                                  <node concept="37vLTw" id="4ZDpIZbWPJt" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4ZDpIZbWGJz" resolve="temp" />
                                  </node>
                                  <node concept="2qgKlT" id="4ZDpIZbWRmL" role="2OqNvi">
                                    <ref role="37wK5l" to="2n2r:4ZDpIZbNHXS" resolve="getName" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="4ZDpIZbTaTz" role="3cqZAp">
                    <node concept="37vLTw" id="4ZDpIZbTaUc" role="3cqZAk">
                      <ref role="3cqZAo" node="4ZDpIZbT0Xo" resolve="ret" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3nJJ606NoXQ" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="3mYdg7" id="3nJJ606NoXR" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
      </node>
    </node>
    <node concept="24uvON" id="3nJJ606NslN" role="lGtFl" />
  </node>
  <node concept="24kQdi" id="1G90Zx2pnfh">
    <ref role="1XX52x" to="aw7t:4NGxdIp910w" resolve="PowerGrid" />
    <node concept="3EZMnI" id="1G90Zx2pnfz" role="2wV5jI">
      <node concept="3F0ifn" id="1G90Zx2pnfE" role="3EZMnx">
        <property role="3F0ifm" value="PowerGrid:" />
      </node>
      <node concept="3F0A7n" id="1G90Zx2pnfK" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pnfS" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2png2" role="3EZMnx">
        <property role="3F0ifm" value="max capacity" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pnge" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="1G90Zx2png$" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:4NGxdIp910z" resolve="maxCapacity" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pngO" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pnh6" role="3EZMnx">
        <property role="3F0ifm" value="percent usage" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pnhq" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="1G90Zx2pnhW" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:4NGxdIp910_" resolve="percentusage" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pnik" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pnj4" role="3EZMnx">
        <property role="3F0ifm" value="efficiency" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pnjw" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="1G90Zx2pnke" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:4NGxdIp910C" resolve="efficiency" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pnkI" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pnlg" role="3EZMnx">
        <property role="3F0ifm" value="voltage" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pnlO" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="1G90Zx2pnmI" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:4NGxdIp910G" resolve="voltage" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pnnm" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pno0" role="3EZMnx">
        <property role="3F0ifm" value="sector" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pnoG" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="1G90Zx2pnqw" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:4NGxdIp910L" resolve="sector" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pnrg" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0ifn" id="4qWfsD8RykC" role="3EZMnx">
        <property role="3F0ifm" value="Connected Transformer 1 Name" />
      </node>
      <node concept="3F0ifn" id="4qWfsD8RylM" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="4qWfsD8RymY" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:4qWfsD8PBjw" resolve="ConnectTransName1" />
        <node concept="OXEIz" id="4ZDpIZbXRV0" role="P5bDN">
          <node concept="PvTIS" id="4ZDpIZbXRV2" role="OY2wv">
            <node concept="MLZmj" id="4ZDpIZbXRV3" role="PvTIR">
              <node concept="3clFbS" id="4ZDpIZbXRV4" role="2VODD2">
                <node concept="3cpWs8" id="4ZDpIZbXSb9" role="3cqZAp">
                  <node concept="3cpWsn" id="4ZDpIZbXSbc" role="3cpWs9">
                    <property role="TrG5h" value="ret" />
                    <node concept="_YKpA" id="4ZDpIZbXSb7" role="1tU5fm">
                      <node concept="17QB3L" id="4ZDpIZbXSrm" role="_ZDj9" />
                    </node>
                    <node concept="2ShNRf" id="4ZDpIZbXTbZ" role="33vP2m">
                      <node concept="Tc6Ow" id="4ZDpIZbXT$V" role="2ShVmc">
                        <node concept="17QB3L" id="4ZDpIZbXTZ6" role="HW$YZ" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="4ZDpIZbXUvD" role="3cqZAp">
                  <node concept="2GrKxI" id="4ZDpIZbXUvF" role="2Gsz3X">
                    <property role="TrG5h" value="ty" />
                  </node>
                  <node concept="2OqwBi" id="4ZDpIZbXW7Q" role="2GsD0m">
                    <node concept="2OqwBi" id="4ZDpIZbXVhA" role="2Oq$k0">
                      <node concept="3GMtW1" id="4ZDpIZbXV00" role="2Oq$k0" />
                      <node concept="1mfA1w" id="4ZDpIZbXVGP" role="2OqNvi" />
                    </node>
                    <node concept="32TBzR" id="4ZDpIZbXWC6" role="2OqNvi" />
                  </node>
                  <node concept="3clFbS" id="4ZDpIZbXUvJ" role="2LFqv$">
                    <node concept="3clFbJ" id="4ZDpIZbXWU3" role="3cqZAp">
                      <node concept="2ZW3vV" id="4ZDpIZbXXFO" role="3clFbw">
                        <node concept="3Tqbb2" id="4ZDpIZbXY0O" role="2ZW6by">
                          <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                        </node>
                        <node concept="2GrUjf" id="4ZDpIZbXXc2" role="2ZW6bz">
                          <ref role="2Gs0qQ" node="4ZDpIZbXUvF" resolve="ty" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4ZDpIZbXWU5" role="3clFbx">
                        <node concept="3cpWs8" id="4ZDpIZbXYC5" role="3cqZAp">
                          <node concept="3cpWsn" id="4ZDpIZbXYC8" role="3cpWs9">
                            <property role="TrG5h" value="temp" />
                            <node concept="3Tqbb2" id="4ZDpIZbXYC4" role="1tU5fm">
                              <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                            </node>
                            <node concept="1PxgMI" id="4ZDpIZbY0vl" role="33vP2m">
                              <property role="1BlNFB" value="true" />
                              <node concept="chp4Y" id="4ZDpIZbY0P4" role="3oSUPX">
                                <ref role="cht4Q" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                              </node>
                              <node concept="2GrUjf" id="4ZDpIZbXZXw" role="1m5AlR">
                                <ref role="2Gs0qQ" node="4ZDpIZbXUvF" resolve="ty" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4ZDpIZbY1wz" role="3cqZAp">
                          <node concept="2OqwBi" id="4ZDpIZbY2jT" role="3clFbG">
                            <node concept="37vLTw" id="4ZDpIZbY1wx" role="2Oq$k0">
                              <ref role="3cqZAo" node="4ZDpIZbXSbc" resolve="ret" />
                            </node>
                            <node concept="TSZUe" id="4ZDpIZbY3BN" role="2OqNvi">
                              <node concept="2OqwBi" id="4ZDpIZbY3Y6" role="25WWJ7">
                                <node concept="37vLTw" id="4ZDpIZbY3BZ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4ZDpIZbXYC8" resolve="temp" />
                                </node>
                                <node concept="2qgKlT" id="4ZDpIZbY4V9" role="2OqNvi">
                                  <ref role="37wK5l" to="2n2r:4ZDpIZbNHXS" resolve="getName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="4ZDpIZbY5Qc" role="3cqZAp">
                  <node concept="37vLTw" id="4ZDpIZbY5R6" role="3cqZAk">
                    <ref role="3cqZAo" node="4ZDpIZbXSbc" resolve="ret" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4qWfsD8Ryps" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0ifn" id="4qWfsD8RyqI" role="3EZMnx">
        <property role="3F0ifm" value="Connected Transformer 2 Name" />
      </node>
      <node concept="3F0ifn" id="4qWfsD8Rytk" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="4qWfsD8RyuE" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:4qWfsD8PBjB" resolve="ConnectTransName2" />
        <node concept="OXEIz" id="4ZDpIZbY6l0" role="P5bDN">
          <node concept="PvTIS" id="4ZDpIZbY6l2" role="OY2wv">
            <node concept="MLZmj" id="4ZDpIZbY6l3" role="PvTIR">
              <node concept="3clFbS" id="4ZDpIZbY6l4" role="2VODD2">
                <node concept="3cpWs8" id="4ZDpIZbY6_9" role="3cqZAp">
                  <node concept="3cpWsn" id="4ZDpIZbY6_c" role="3cpWs9">
                    <property role="TrG5h" value="ret" />
                    <node concept="_YKpA" id="4ZDpIZbY6_7" role="1tU5fm">
                      <node concept="17QB3L" id="4ZDpIZbY6Pm" role="_ZDj9" />
                    </node>
                    <node concept="2ShNRf" id="4ZDpIZbY7_Z" role="33vP2m">
                      <node concept="Tc6Ow" id="4ZDpIZbY7YV" role="2ShVmc">
                        <node concept="17QB3L" id="4ZDpIZbY8Li" role="HW$YZ" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="4ZDpIZbY9hP" role="3cqZAp">
                  <node concept="2GrKxI" id="4ZDpIZbY9hR" role="2Gsz3X">
                    <property role="TrG5h" value="ty" />
                  </node>
                  <node concept="2OqwBi" id="4ZDpIZbYaU2" role="2GsD0m">
                    <node concept="2OqwBi" id="4ZDpIZbYa3M" role="2Oq$k0">
                      <node concept="3GMtW1" id="4ZDpIZbY9Mc" role="2Oq$k0" />
                      <node concept="1mfA1w" id="4ZDpIZbYav1" role="2OqNvi" />
                    </node>
                    <node concept="32TBzR" id="4ZDpIZbYbqi" role="2OqNvi" />
                  </node>
                  <node concept="3clFbS" id="4ZDpIZbY9hV" role="2LFqv$">
                    <node concept="3clFbJ" id="4ZDpIZbYbGf" role="3cqZAp">
                      <node concept="2ZW3vV" id="4ZDpIZbYcu1" role="3clFbw">
                        <node concept="3Tqbb2" id="4ZDpIZbYcN1" role="2ZW6by">
                          <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                        </node>
                        <node concept="2GrUjf" id="4ZDpIZbYbYe" role="2ZW6bz">
                          <ref role="2Gs0qQ" node="4ZDpIZbY9hR" resolve="ty" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4ZDpIZbYbGh" role="3clFbx">
                        <node concept="3cpWs8" id="4ZDpIZbYdqi" role="3cqZAp">
                          <node concept="3cpWsn" id="4ZDpIZbYdql" role="3cpWs9">
                            <property role="TrG5h" value="temp" />
                            <node concept="3Tqbb2" id="4ZDpIZbYdqh" role="1tU5fm">
                              <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                            </node>
                            <node concept="1PxgMI" id="4ZDpIZbYfhy" role="33vP2m">
                              <property role="1BlNFB" value="true" />
                              <node concept="chp4Y" id="4ZDpIZbYfBh" role="3oSUPX">
                                <ref role="cht4Q" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                              </node>
                              <node concept="2GrUjf" id="4ZDpIZbYeJH" role="1m5AlR">
                                <ref role="2Gs0qQ" node="4ZDpIZbY9hR" resolve="ty" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4ZDpIZbYgiK" role="3cqZAp">
                          <node concept="2OqwBi" id="4ZDpIZbYh66" role="3clFbG">
                            <node concept="37vLTw" id="4ZDpIZbYgiI" role="2Oq$k0">
                              <ref role="3cqZAo" node="4ZDpIZbY6_c" resolve="ret" />
                            </node>
                            <node concept="TSZUe" id="4ZDpIZbYiwm" role="2OqNvi">
                              <node concept="2OqwBi" id="4ZDpIZbYj6w" role="25WWJ7">
                                <node concept="37vLTw" id="4ZDpIZbYiwy" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4ZDpIZbYdql" resolve="temp" />
                                </node>
                                <node concept="2qgKlT" id="4ZDpIZbYk5m" role="2OqNvi">
                                  <ref role="37wK5l" to="2n2r:4ZDpIZbNHXS" resolve="getName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="4ZDpIZbYkWU" role="3cqZAp">
                  <node concept="37vLTw" id="4ZDpIZbYljr" role="3cqZAk">
                    <ref role="3cqZAo" node="4ZDpIZbY6_c" resolve="ret" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="1G90Zx2pnfA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1G90Zx2snSu">
    <ref role="1XX52x" to="aw7t:24XvQ732hTQ" resolve="Producer" />
    <node concept="3EZMnI" id="1G90Zx2snSw" role="2wV5jI">
      <node concept="3F0ifn" id="1G90Zx2snSL" role="3EZMnx">
        <property role="3F0ifm" value="producer" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2snSR" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2snSZ" role="3EZMnx">
        <property role="3F0ifm" value="min production" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2snT9" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="1G90Zx2snTs" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:24XvQ732hTT" resolve="MinProduction" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2snTE" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0ifn" id="1G90Zx2snTU" role="3EZMnx">
        <property role="3F0ifm" value="max production" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2snUc" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="1G90Zx2snUF" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:24XvQ732kGm" resolve="MaxProduction" />
      </node>
      <node concept="3F0ifn" id="7Erv4TlUNCM" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0ifn" id="7Erv4TlUNDm" role="3EZMnx">
        <property role="3F0ifm" value="production type" />
      </node>
      <node concept="3F0ifn" id="7Erv4TlUNDW" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="7Erv4TlUNE$" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:7Erv4TlTI1p" resolve="ProductionMethode" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2snVl" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0ifn" id="4qWfsD8Ryfb" role="3EZMnx">
        <property role="3F0ifm" value="Connected Transformer Name" />
      </node>
      <node concept="3F0ifn" id="4qWfsD8RyfR" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="4qWfsD8Ryg_" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:4qWfsD8PyNN" resolve="TransName" />
        <node concept="OXEIz" id="4ZDpIZbXrNX" role="P5bDN">
          <node concept="PvTIS" id="4ZDpIZbXrNZ" role="OY2wv">
            <node concept="MLZmj" id="4ZDpIZbXrO0" role="PvTIR">
              <node concept="3clFbS" id="4ZDpIZbXrO1" role="2VODD2">
                <node concept="3cpWs8" id="4ZDpIZbXt1z" role="3cqZAp">
                  <node concept="3cpWsn" id="4ZDpIZbXt1A" role="3cpWs9">
                    <property role="TrG5h" value="ret" />
                    <node concept="_YKpA" id="4ZDpIZbXt1x" role="1tU5fm">
                      <node concept="17QB3L" id="4ZDpIZbXthK" role="_ZDj9" />
                    </node>
                    <node concept="2ShNRf" id="4ZDpIZbXuin" role="33vP2m">
                      <node concept="Tc6Ow" id="4ZDpIZbXuFj" role="2ShVmc">
                        <node concept="17QB3L" id="4ZDpIZbXvlE" role="HW$YZ" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="4ZDpIZbXvYp" role="3cqZAp">
                  <node concept="2GrKxI" id="4ZDpIZbXvYr" role="2Gsz3X">
                    <property role="TrG5h" value="ty" />
                  </node>
                  <node concept="2OqwBi" id="4ZDpIZbXxQ_" role="2GsD0m">
                    <node concept="2OqwBi" id="4ZDpIZbXx0l" role="2Oq$k0">
                      <node concept="3GMtW1" id="4ZDpIZbXwIJ" role="2Oq$k0" />
                      <node concept="1mfA1w" id="4ZDpIZbXxr$" role="2OqNvi" />
                    </node>
                    <node concept="32TBzR" id="4ZDpIZbXymP" role="2OqNvi" />
                  </node>
                  <node concept="3clFbS" id="4ZDpIZbXvYv" role="2LFqv$">
                    <node concept="3clFbJ" id="4ZDpIZbXyLe" role="3cqZAp">
                      <node concept="2ZW3vV" id="4ZDpIZbXzyZ" role="3clFbw">
                        <node concept="3Tqbb2" id="4ZDpIZbXzRZ" role="2ZW6by">
                          <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                        </node>
                        <node concept="2GrUjf" id="4ZDpIZbXz3d" role="2ZW6bz">
                          <ref role="2Gs0qQ" node="4ZDpIZbXvYr" resolve="ty" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4ZDpIZbXyLg" role="3clFbx">
                        <node concept="3cpWs8" id="4ZDpIZbX$CU" role="3cqZAp">
                          <node concept="3cpWsn" id="4ZDpIZbX$CX" role="3cpWs9">
                            <property role="TrG5h" value="temp" />
                            <node concept="3Tqbb2" id="4ZDpIZbX$CT" role="1tU5fm">
                              <ref role="ehGHo" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                            </node>
                            <node concept="1PxgMI" id="4ZDpIZbXAwa" role="33vP2m">
                              <property role="1BlNFB" value="true" />
                              <node concept="chp4Y" id="4ZDpIZbXAPT" role="3oSUPX">
                                <ref role="cht4Q" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
                              </node>
                              <node concept="2GrUjf" id="4ZDpIZbX_Yl" role="1m5AlR">
                                <ref role="2Gs0qQ" node="4ZDpIZbXvYr" resolve="ty" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4ZDpIZbXBxo" role="3cqZAp">
                          <node concept="2OqwBi" id="4ZDpIZbXCkI" role="3clFbG">
                            <node concept="37vLTw" id="4ZDpIZbXBxm" role="2Oq$k0">
                              <ref role="3cqZAo" node="4ZDpIZbXt1A" resolve="ret" />
                            </node>
                            <node concept="TSZUe" id="4ZDpIZbXDCC" role="2OqNvi">
                              <node concept="2OqwBi" id="4ZDpIZbXEqJ" role="25WWJ7">
                                <node concept="37vLTw" id="4ZDpIZbXDCO" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4ZDpIZbX$CX" resolve="temp" />
                                </node>
                                <node concept="2qgKlT" id="4ZDpIZbXFqj" role="2OqNvi">
                                  <ref role="37wK5l" to="2n2r:4ZDpIZbNHXS" resolve="getName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="4ZDpIZbXGhK" role="3cqZAp">
                  <node concept="37vLTw" id="4ZDpIZbXGiE" role="3cqZAk">
                    <ref role="3cqZAo" node="4ZDpIZbXt1A" resolve="ret" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="1G90Zx2snSz" role="2iSdaV" />
    </node>
  </node>
</model>

