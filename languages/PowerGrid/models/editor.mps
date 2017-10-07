<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5a8ea039-0432-4fb0-883f-92690104bf9e(PowerGrid.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="-1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="aw7t" ref="r:2a8ae552-038d-4f4d-a413-89014cd6b087(PowerGrid.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="7651593722933768974" name="jetbrains.mps.lang.editor.structure.MaxWidthStyleClassItem" flags="ln" index="nf9zX">
        <property id="7651593722933768975" name="value" index="nf9zW" />
      </concept>
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="795210086017940429" name="jetbrains.mps.lang.editor.structure.ReadOnlyStyleClassItem" flags="lg" index="xShMh" />
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186404574412" name="jetbrains.mps.lang.editor.structure.BackgroundColorStyleClassItem" flags="ln" index="Veino" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186414976055" name="jetbrains.mps.lang.editor.structure.DrawBorderStyleClassItem" flags="ln" index="VPXOz" />
      <concept id="1186414999511" name="jetbrains.mps.lang.editor.structure.UnderlinedStyleClassItem" flags="ln" index="VQ3r3">
        <property id="1214316229833" name="underlined" index="2USNnj" />
      </concept>
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
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
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="2565736246230036150" name="jetbrains.mps.lang.core.structure.ExportScopePublic" flags="ig" index="24uvON" />
    </language>
  </registry>
  <node concept="24kQdi" id="15nlfvPiBM8">
    <ref role="1XX52x" to="aw7t:50o97QFMYra" resolve="Consumer" />
    <node concept="24uvON" id="3nJJ606NslN" role="lGtFl" />
    <node concept="3EZMnI" id="5XqOYe0gkfs" role="2wV5jI">
      <node concept="3F0ifn" id="68AEjYhUDle" role="3EZMnx">
        <node concept="ljvvj" id="68AEjYhUDmd" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="5XqOYe0gkft" role="2iSdaV" />
      <node concept="3F0ifn" id="5XqOYe0gkfu" role="3EZMnx">
        <property role="3F0ifm" value="Name           " />
        <node concept="Veino" id="68AEjYhTTyP" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="68AEjYhTTyU" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="68AEjYhTTz2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhTtkm" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhTtl0" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhTtlG" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhUhbq" role="3EZMnx" />
      <node concept="3F0A7n" id="5XqOYe0gkfv" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="5XqOYe0gkgs" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="68AEjYhUt72" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="5XqOYe0gkfw" role="3EZMnx">
        <property role="3F0ifm" value="Connected Trans" />
        <node concept="Veino" id="68AEjYhTXsL" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="68AEjYhTXsQ" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="68AEjYhTXsY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhTxki" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhT_bs" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhUl4U" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhUp58" role="3EZMnx" />
      <node concept="1iCGBv" id="5XqOYe0gkfx" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:1G90Zx2lQbC" resolve="ConnectedTransformer" />
        <node concept="1sVBvm" id="5XqOYe0gkf$" role="1sWHZn">
          <node concept="3F0A7n" id="5XqOYe0gkfA" role="2wV5jI">
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="Vb9p2" id="68AEjYhUt76" role="3F10Kt">
              <property role="Vbekb" value="BOLD" />
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="5XqOYe0gkgu" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5XqOYe0gkfB" role="3EZMnx">
        <property role="3F0ifm" value="Usage Profile  " />
        <node concept="Veino" id="68AEjYhTXt3" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="68AEjYhTXt8" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="68AEjYhTXtg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhTxlc" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhT_dy" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhUl6q" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhUp6K" role="3EZMnx" />
      <node concept="1iCGBv" id="5XqOYe0gkfC" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:4qWwfGpuBLN" resolve="UsageProfile" />
        <node concept="1sVBvm" id="5XqOYe0gkfF" role="1sWHZn">
          <node concept="3F0A7n" id="5XqOYe0gkfH" role="2wV5jI">
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="Vb9p2" id="68AEjYhUt78" role="3F10Kt">
              <property role="Vbekb" value="BOLD" />
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="5XqOYe0gkgY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5XqOYe0gkfS" role="3EZMnx">
        <property role="3F0ifm" value="Max Consumption" />
        <node concept="Veino" id="68AEjYhTXtB" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="68AEjYhTXtG" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="68AEjYhTXtO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhTtqu" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhTtro" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhUl9w" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhUpa6" role="3EZMnx" />
      <node concept="3F0A7n" id="5XqOYe0gkfV" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:50o97QFMYs5" resolve="MaxConsumption" />
        <node concept="Vb9p2" id="68AEjYhUt7h" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
        <node concept="ljvvj" id="68AEjYhUx6O" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhUx5R" role="3EZMnx">
        <property role="3F0ifm" value="_____________________________" />
        <node concept="xShMh" id="68AEjYhUHmG" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="68AEjYhULnw" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2K_vMQvWbJa">
    <ref role="1XX52x" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
    <node concept="3EZMnI" id="2K_vMQvWbJf" role="2wV5jI">
      <node concept="l2Vlx" id="2K_vMQvWbJg" role="2iSdaV" />
      <node concept="3F0ifn" id="68AEjYhRzv9" role="3EZMnx">
        <node concept="ljvvj" id="68AEjYhRzw4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1I0oeEpzrOE" role="3EZMnx">
        <property role="3F0ifm" value="Name        " />
        <node concept="Veino" id="3J7IQQmy_1" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="5XqOYe0dgJI" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="5XqOYe0dJSk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1I0oeEp$0nK" role="3EZMnx" />
      <node concept="3F0ifn" id="1I0oeEp$otW" role="3EZMnx" />
      <node concept="3F0ifn" id="1I0oeEp$rFt" role="3EZMnx" />
      <node concept="3F0ifn" id="1I0oeEp$rGd" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhU_5L" role="3EZMnx" />
      <node concept="3F0A7n" id="4YW2CXVUOWf" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="Vb9p2" id="5XqOYe0ei7f" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="1I0oeEp$6Pk" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="VPM3Z" id="5XqOYe0fdHB" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="1I0oeEp$6PW" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="ljvvj" id="3J7IQQmrJ2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="5XqOYe0fdHG" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="1I0oeEpzrOW" role="3EZMnx">
        <property role="3F0ifm" value="Max Capacity" />
        <node concept="Veino" id="3J7IQQmy_3" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="5XqOYe0d_$E" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="5XqOYe0dJSb" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1I0oeEp$0oA" role="3EZMnx" />
      <node concept="3F0ifn" id="3J7IQQkB3n" role="3EZMnx" />
      <node concept="3F0ifn" id="3J7IQQkCP0" role="3EZMnx" />
      <node concept="3F0ifn" id="3J7IQQmGMw" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhU_7h" role="3EZMnx" />
      <node concept="3F0A7n" id="4YW2CXVUOTw" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:7rDXPBEWeTt" resolve="MaxCapacity" />
        <node concept="ljvvj" id="1I0oeEpzrPg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="5XqOYe0ei7k" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="1I0oeEpzrPi" role="3EZMnx">
        <property role="3F0ifm" value="Efficiency  " />
        <node concept="Veino" id="3J7IQQmy_5" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="5XqOYe0d_$L" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="5XqOYe0dD0L" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1I0oeEp$0p4" role="3EZMnx" />
      <node concept="3F0ifn" id="3J7IQQkB4n" role="3EZMnx" />
      <node concept="3F0ifn" id="3J7IQQkCQ4" role="3EZMnx" />
      <node concept="3F0ifn" id="3J7IQQmGLm" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhU_8N" role="3EZMnx" />
      <node concept="3F0A7n" id="4YW2CXVUnG3" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:7rDXPBEWeTx" resolve="Efficiency" />
        <node concept="30gYXW" id="NibI7n$ro7" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="nf9zX" id="2axHtHE9cr5" role="3F10Kt">
          <property role="nf9zW" value="1" />
        </node>
        <node concept="ljvvj" id="1I0oeEp$tRZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="5XqOYe0ei7t" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="1I0oeEp$tR_" role="3EZMnx">
        <property role="3F0ifm" value="_________________________" />
        <node concept="xShMh" id="5XqOYe0dJS3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="30gYXW" id="5XqOYe0eAS7" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPM3Z" id="5XqOYe0fafa" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="NibI7nzWsO">
    <ref role="1XX52x" to="aw7t:3pcEwkEWqD2" resolve="PowerGridSimulator" />
    <node concept="3EZMnI" id="NibI7nzWsQ" role="2wV5jI">
      <node concept="l2Vlx" id="NibI7nzWsR" role="2iSdaV" />
      <node concept="3F0ifn" id="NibI7nzWsS" role="3EZMnx">
        <property role="3F0ifm" value="power grid simulator" />
      </node>
      <node concept="3F0A7n" id="NibI7nzWsT" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="NibI7nzWsU" role="3EZMnx">
        <node concept="3mYdg7" id="NibI7nzWsV" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
        <node concept="ljvvj" id="NibI7nzWsW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="NibI7nzWsX" role="3EZMnx">
        <node concept="l2Vlx" id="NibI7nzWsY" role="2iSdaV" />
        <node concept="lj46D" id="NibI7nzWsZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="3J7IQQkIlJ" role="3EZMnx">
          <node concept="ljvvj" id="3J7IQQkKwA" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3J7IQQkKvc" role="3EZMnx" />
        <node concept="3F0ifn" id="3J7IQQkIo9" role="3EZMnx" />
        <node concept="3F0ifn" id="3J7IQQkIq_" role="3EZMnx" />
        <node concept="3F0ifn" id="3J7IQQkIt3" role="3EZMnx" />
        <node concept="3F0ifn" id="NibI7nzWt0" role="3EZMnx">
          <property role="3F0ifm" value="Weather" />
          <node concept="ljvvj" id="3J7IQQkIkx" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Veino" id="3J7IQQkIum" role="3F10Kt">
            <property role="Vb096" value="yellow" />
          </node>
          <node concept="Vb9p2" id="3J7IQQkIuu" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
        </node>
        <node concept="3F0ifn" id="NibI7nzWt1" role="3EZMnx">
          <node concept="11L4FC" id="NibI7nzWt2" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="NibI7nzWt3" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="NibI7nzWt4" role="3EZMnx">
          <ref role="1NtTu8" to="aw7t:6gi3O$9nB8n" resolve="Weather" />
          <node concept="l2Vlx" id="NibI7nzWt5" role="2czzBx" />
          <node concept="pj6Ft" id="NibI7nzWt6" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="NibI7nzWt7" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="NibI7nzWt8" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3X184CBaIIR" role="3EZMnx">
          <property role="3F0ifm" value="" />
          <node concept="ljvvj" id="3X184CBaIMz" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="68AEjYhSHCa" role="3EZMnx" />
        <node concept="3F0ifn" id="68AEjYhVEpZ" role="3EZMnx" />
        <node concept="3F0ifn" id="68AEjYhVEtr" role="3EZMnx" />
        <node concept="3F0ifn" id="68AEjYhVEwT" role="3EZMnx" />
        <node concept="3F0ifn" id="NibI7nzWt9" role="3EZMnx">
          <property role="3F0ifm" value="Usage Profiles" />
          <node concept="ljvvj" id="NibI7nzWta" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Veino" id="68AEjYhVEyG" role="3F10Kt">
            <property role="Vb096" value="yellow" />
          </node>
        </node>
        <node concept="3F0ifn" id="3X184CBaIBx" role="3EZMnx">
          <property role="3F0ifm" value="" />
          <node concept="ljvvj" id="3X184CBaIF9" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="68AEjYhSHxi" role="3EZMnx">
          <property role="3F0ifm" value=" " />
        </node>
        <node concept="3F2HdR" id="68AEjYhSHAA" role="3EZMnx">
          <ref role="1NtTu8" to="aw7t:4qWwfGpuBQz" resolve="UsageProfiles" />
          <node concept="l2Vlx" id="68AEjYhSHAC" role="2czzBx" />
          <node concept="pj6Ft" id="3X184CBatfg" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="3X184CBatfh" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="3X184CBatfi" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPXOz" id="3X184CBatfj" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="68AEjYhVtaN" role="3EZMnx">
          <node concept="ljvvj" id="68AEjYhVtco" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3J7IQQjB0S" role="3EZMnx">
          <node concept="VPM3Z" id="68AEjYhV_Wa" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0ifn" id="3J7IQQjB2S" role="3EZMnx">
          <node concept="VPM3Z" id="68AEjYhV_Wc" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0ifn" id="3J7IQQjB4U" role="3EZMnx">
          <node concept="VPM3Z" id="68AEjYhV_We" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0ifn" id="68AEjYhVEm$" role="3EZMnx">
          <node concept="VPM3Z" id="68AEjYhVEog" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0ifn" id="NibI7nzWtb" role="3EZMnx">
          <property role="3F0ifm" value="Producers" />
          <node concept="ljvvj" id="3J7IQQjAXU" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Veino" id="3J7IQQjBXc" role="3F10Kt">
            <property role="Vb096" value="yellow" />
          </node>
          <node concept="Vb9p2" id="3J7IQQjBXs" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
          <node concept="VQ3r3" id="68AEjYhVx$6" role="3F10Kt">
            <property role="2USNnj" value="2" />
          </node>
        </node>
        <node concept="3F0ifn" id="NibI7nzWtc" role="3EZMnx">
          <node concept="11L4FC" id="NibI7nzWtd" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="NibI7nzWte" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="NibI7nzWtf" role="3EZMnx">
          <ref role="1NtTu8" to="aw7t:24XvQ732kGA" resolve="Producers" />
          <node concept="l2Vlx" id="NibI7nzWtg" role="2czzBx" />
          <node concept="pj6Ft" id="NibI7nzWth" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="NibI7nzWti" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="NibI7nzWtj" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPXOz" id="68AEjYhUYQf" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="NibI7nzWtk" role="3EZMnx">
          <node concept="ljvvj" id="NibI7nzWtl" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3J7IQQkKke" role="3EZMnx" />
        <node concept="3F0ifn" id="3J7IQQkKmQ" role="3EZMnx" />
        <node concept="3F0ifn" id="3J7IQQkKpw" role="3EZMnx" />
        <node concept="3F0ifn" id="3J7IQQkKsc" role="3EZMnx" />
        <node concept="3F0ifn" id="NibI7nzWtm" role="3EZMnx">
          <property role="3F0ifm" value="Grids" />
          <node concept="ljvvj" id="3J7IQQkKiT" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Veino" id="3J7IQQkKtA" role="3F10Kt">
            <property role="Vb096" value="yellow" />
          </node>
          <node concept="Vb9p2" id="3J7IQQkKtI" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
        </node>
        <node concept="3F0ifn" id="NibI7nzWtn" role="3EZMnx">
          <node concept="11L4FC" id="NibI7nzWto" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="NibI7nzWtp" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="NibI7nzWtq" role="3EZMnx">
          <ref role="1NtTu8" to="aw7t:4NGxdIp9v2e" resolve="Grids" />
          <node concept="l2Vlx" id="NibI7nzWtr" role="2czzBx" />
          <node concept="pj6Ft" id="NibI7nzWts" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="NibI7nzWtt" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="NibI7nzWtu" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPXOz" id="68AEjYhVx$h" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="NibI7nzWtv" role="3EZMnx">
          <node concept="ljvvj" id="NibI7nzWtw" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="1I0oeEp$w7p" role="3EZMnx" />
        <node concept="3F0ifn" id="1I0oeEp$w99" role="3EZMnx" />
        <node concept="3F0ifn" id="1I0oeEp$xjh" role="3EZMnx" />
        <node concept="3F0ifn" id="1I0oeEp$ytH" role="3EZMnx" />
        <node concept="3F0ifn" id="4MYZAN8oGn2" role="3EZMnx">
          <property role="3F0ifm" value="Transformer" />
          <node concept="Veino" id="1I0oeEp$wa5" role="3F10Kt">
            <property role="Vb096" value="yellow" />
          </node>
          <node concept="Vb9p2" id="1I0oeEp$wad" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
          <node concept="ljvvj" id="4MYZAN8oGrg" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="1I0oeEp$uYP" role="3EZMnx">
          <node concept="ljvvj" id="1I0oeEp$uZF" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="NibI7nzWt_" role="3EZMnx">
          <ref role="1NtTu8" to="aw7t:7rDXPBEWeTI" resolve="Transformers" />
          <node concept="l2Vlx" id="NibI7nzWtA" role="2czzBx" />
          <node concept="pj6Ft" id="NibI7nzWtB" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="NibI7nzWtC" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="NibI7nzWtD" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPXOz" id="5XqOYe0e0UV" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="NibI7nzWtE" role="3EZMnx">
          <node concept="ljvvj" id="NibI7nzWtF" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Vb9p2" id="3J7IQQm6Rt" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
          <node concept="VechU" id="3J7IQQm6R_" role="3F10Kt">
            <property role="Vb096" value="green" />
          </node>
        </node>
        <node concept="3F0ifn" id="3J7IQQklIP" role="3EZMnx" />
        <node concept="3F0ifn" id="3J7IQQklNb" role="3EZMnx" />
        <node concept="3F0ifn" id="3J7IQQklPp" role="3EZMnx" />
        <node concept="3F0ifn" id="3J7IQQklRD" role="3EZMnx" />
        <node concept="3F0ifn" id="NibI7nzWtG" role="3EZMnx">
          <property role="3F0ifm" value="Consumers" />
          <node concept="ljvvj" id="3J7IQQklHI" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Veino" id="3J7IQQklSP" role="3F10Kt">
            <property role="Vb096" value="yellow" />
          </node>
          <node concept="Vb9p2" id="3J7IQQklSX" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
        </node>
        <node concept="3F0ifn" id="NibI7nzWtH" role="3EZMnx">
          <node concept="11L4FC" id="NibI7nzWtI" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="NibI7nzWtJ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="NibI7nzWtK" role="3EZMnx">
          <ref role="1NtTu8" to="aw7t:3nJJ606NQBJ" resolve="Consumers" />
          <node concept="l2Vlx" id="NibI7nzWtL" role="2czzBx" />
          <node concept="pj6Ft" id="NibI7nzWtM" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="NibI7nzWtN" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="NibI7nzWtO" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPXOz" id="68AEjYhTTyJ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="NibI7nzWtP" role="3EZMnx">
        <node concept="3mYdg7" id="NibI7nzWtQ" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3J7IQQkSUy">
    <ref role="1XX52x" to="aw7t:6gi3O$9nB7N" resolve="Weather" />
    <node concept="3EZMnI" id="3J7IQQkSYY" role="2wV5jI">
      <node concept="l2Vlx" id="3J7IQQkSYZ" role="2iSdaV" />
      <node concept="3F0ifn" id="3J7IQQlqIj" role="3EZMnx">
        <node concept="ljvvj" id="3J7IQQlqIG" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQkSZ5" role="3EZMnx">
        <property role="3F0ifm" value="Day" />
      </node>
      <node concept="3F0ifn" id="3J7IQQkSZ6" role="3EZMnx">
        <node concept="11L4FC" id="3J7IQQkSZ7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlvig" role="3EZMnx" />
      <node concept="3F0ifn" id="3J7IQQlvj6" role="3EZMnx" />
      <node concept="3F0ifn" id="3J7IQQlvjY" role="3EZMnx" />
      <node concept="3F0A7n" id="3J7IQQkSZ8" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:6gi3O$9nB8e" resolve="day" />
      </node>
      <node concept="3F0ifn" id="3J7IQQkSZ9" role="3EZMnx">
        <node concept="11L4FC" id="3J7IQQkSZa" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="3J7IQQkT1m" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQkSZb" role="3EZMnx">
        <property role="3F0ifm" value="Type" />
      </node>
      <node concept="3F0ifn" id="3J7IQQkSZc" role="3EZMnx">
        <node concept="11L4FC" id="3J7IQQkSZd" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlxEg" role="3EZMnx" />
      <node concept="3F0ifn" id="3J7IQQlxFe" role="3EZMnx" />
      <node concept="3F0A7n" id="3J7IQQkSZe" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:6gi3O$9nB8g" resolve="Type" />
      </node>
      <node concept="3F0ifn" id="3J7IQQkSZf" role="3EZMnx">
        <property role="3F0ifm" value="                    " />
        <node concept="11L4FC" id="3J7IQQkSZg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="3J7IQQkT2d" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQkSZh" role="3EZMnx">
        <property role="3F0ifm" value="Wind" />
      </node>
      <node concept="3F0ifn" id="3J7IQQkSZi" role="3EZMnx">
        <node concept="11L4FC" id="3J7IQQkSZj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlxGe" role="3EZMnx" />
      <node concept="3F0ifn" id="3J7IQQlxHg" role="3EZMnx" />
      <node concept="3F0A7n" id="3J7IQQkSZk" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:6gi3O$9nB8j" resolve="Wind" />
        <node concept="ljvvj" id="3J7IQQkT2E" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQkSZl" role="3EZMnx">
        <node concept="11L4FC" id="3J7IQQkSZm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3mYdg7" id="3J7IQQkSZn" role="3F10Kt">
          <property role="1413C4" value="body-paren" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3J7IQQkXpv">
    <ref role="1XX52x" to="aw7t:6gi3O$9nB7M" resolve="WeatherList" />
    <node concept="3EZMnI" id="3J7IQQkXtV" role="2wV5jI">
      <node concept="l2Vlx" id="3J7IQQkXtW" role="2iSdaV" />
      <node concept="3F0ifn" id="3J7IQQkXtX" role="3EZMnx">
        <property role="3F0ifm" value="Weather List" />
      </node>
      <node concept="3F0A7n" id="3J7IQQkXtY" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="3J7IQQljVb" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQkXu3" role="3EZMnx">
        <property role="3F0ifm" value="Is Random" />
      </node>
      <node concept="3F0ifn" id="3J7IQQkXu4" role="3EZMnx">
        <node concept="11L4FC" id="3J7IQQkXu5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="3J7IQQkXu6" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:6gi3O$9nJX8" resolve="IsRandom" />
        <node concept="ljvvj" id="3J7IQQld35" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="3J7IQQkXue" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:6gi3O$9nJX4" resolve="Weather" />
        <node concept="l2Vlx" id="3J7IQQkXuf" role="2czzBx" />
        <node concept="ljvvj" id="3J7IQQlhDO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3J7IQQlIPu">
    <ref role="1XX52x" to="aw7t:24XvQ732hTQ" resolve="Producer" />
    <node concept="3EZMnI" id="3J7IQQlITU" role="2wV5jI">
      <node concept="3F0ifn" id="68AEjYhVbGA" role="3EZMnx">
        <node concept="ljvvj" id="68AEjYhVbHQ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3J7IQQlITV" role="2iSdaV" />
      <node concept="3F0ifn" id="3J7IQQlITW" role="3EZMnx">
        <property role="3F0ifm" value="Name           " />
        <node concept="Veino" id="68AEjYhV36j" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="68AEjYhV36o" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="68AEjYhV7mx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhUPoU" role="3EZMnx">
        <node concept="11L4FC" id="3X184CBbLoy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhUPpY" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhUPr4" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhUPsc" role="3EZMnx" />
      <node concept="3F0A7n" id="3J7IQQlITX" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="3J7IQQlIV6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="68AEjYhVbIQ" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlIUs" role="3EZMnx">
        <property role="3F0ifm" value="Prod Method    " />
        <node concept="Veino" id="68AEjYhV7nI" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="68AEjYhV7nN" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="68AEjYhV7nV" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlIUt" role="3EZMnx">
        <node concept="11L4FC" id="3J7IQQlIUu" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhUQ6o" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhUQaq" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhUQcu" role="3EZMnx" />
      <node concept="3F0A7n" id="3J7IQQlIUv" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:7Erv4TlTI1p" resolve="ProductionMethode" />
        <node concept="ljvvj" id="3J7IQQlM05" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="68AEjYhVbJf" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlITY" role="3EZMnx">
        <property role="3F0ifm" value="Connected Trans" />
        <node concept="Veino" id="68AEjYhV7mA" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="68AEjYhV7mF" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="68AEjYhV7mN" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhUP$W" role="3EZMnx">
        <node concept="11L4FC" id="3X184CBc6wc" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhUPAk" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhUPBI" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhUPDa" role="3EZMnx" />
      <node concept="1iCGBv" id="3J7IQQlITZ" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:4DN6WPtj6wQ" resolve="ConnectedTransformer" />
        <node concept="1sVBvm" id="3J7IQQlIU2" role="1sWHZn">
          <node concept="3F0A7n" id="3J7IQQlIU4" role="2wV5jI">
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="Vb9p2" id="68AEjYhVbIU" role="3F10Kt">
              <property role="Vbekb" value="BOLD" />
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="3J7IQQlIV8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlIU5" role="3EZMnx">
        <property role="3F0ifm" value="Weather        " />
        <node concept="Veino" id="68AEjYhV7mS" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="68AEjYhV7mX" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="68AEjYhV7n5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhUPG8" role="3EZMnx">
        <node concept="11L4FC" id="3X184CBbLo_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhUPHE" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhUPJe" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhUPKO" role="3EZMnx" />
      <node concept="1iCGBv" id="3J7IQQlIU6" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:6gi3O$9ozQy" resolve="Weather" />
        <node concept="1sVBvm" id="3J7IQQlIU9" role="1sWHZn">
          <node concept="3F0A7n" id="3J7IQQlIUb" role="2wV5jI">
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="Vb9p2" id="68AEjYhVbIW" role="3F10Kt">
              <property role="Vbekb" value="BOLD" />
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="3J7IQQlIVa" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlIUg" role="3EZMnx">
        <property role="3F0ifm" value="Min Production " />
        <node concept="Veino" id="68AEjYhV7na" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="68AEjYhV7nf" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="68AEjYhV7nn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="3X184CBbLu2" role="pqm2j">
          <node concept="3clFbS" id="3X184CBbLu3" role="2VODD2">
            <node concept="3clFbF" id="3X184CBbL_e" role="3cqZAp">
              <node concept="2OqwBi" id="3X184CBbQWX" role="3clFbG">
                <node concept="2OqwBi" id="3X184CBbLMb" role="2Oq$k0">
                  <node concept="pncrf" id="3X184CBbL_d" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3X184CBbMjc" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:7Erv4TlTI1p" resolve="ProductionMethode" />
                  </node>
                </node>
                <node concept="3t7uKx" id="3X184CBbRPu" role="2OqNvi">
                  <node concept="uoxfO" id="3X184CBbRPw" role="3t7uKA">
                    <ref role="uo_Cq" to="aw7t:7Erv4TlTGP5" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlIUh" role="3EZMnx">
        <node concept="11L4FC" id="3J7IQQlIUi" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="3X184CBbYaK" role="pqm2j">
          <node concept="3clFbS" id="3X184CBbYaL" role="2VODD2">
            <node concept="3clFbF" id="3X184CBbYhV" role="3cqZAp">
              <node concept="2OqwBi" id="3X184CBbYhW" role="3clFbG">
                <node concept="2OqwBi" id="3X184CBbYhX" role="2Oq$k0">
                  <node concept="pncrf" id="3X184CBbYhY" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3X184CBbYhZ" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:7Erv4TlTI1p" resolve="ProductionMethode" />
                  </node>
                </node>
                <node concept="3t7uKx" id="3X184CBbYi0" role="2OqNvi">
                  <node concept="uoxfO" id="3X184CBbYi1" role="3t7uKA">
                    <ref role="uo_Cq" to="aw7t:7Erv4TlTGP5" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhUPO6" role="3EZMnx">
        <node concept="pkWqt" id="3X184CBbYyR" role="pqm2j">
          <node concept="3clFbS" id="3X184CBbYyS" role="2VODD2">
            <node concept="3clFbF" id="3X184CBbYG6" role="3cqZAp">
              <node concept="2OqwBi" id="3X184CBbYG7" role="3clFbG">
                <node concept="2OqwBi" id="3X184CBbYG8" role="2Oq$k0">
                  <node concept="pncrf" id="3X184CBbYG9" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3X184CBbYGa" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:7Erv4TlTI1p" resolve="ProductionMethode" />
                  </node>
                </node>
                <node concept="3t7uKx" id="3X184CBbYGb" role="2OqNvi">
                  <node concept="uoxfO" id="3X184CBbYGc" role="3t7uKA">
                    <ref role="uo_Cq" to="aw7t:7Erv4TlTGP5" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhUPPM" role="3EZMnx">
        <node concept="pkWqt" id="3X184CBbYX2" role="pqm2j">
          <node concept="3clFbS" id="3X184CBbYX3" role="2VODD2">
            <node concept="3clFbF" id="3X184CBbZ6h" role="3cqZAp">
              <node concept="2OqwBi" id="3X184CBbZ6i" role="3clFbG">
                <node concept="2OqwBi" id="3X184CBbZ6j" role="2Oq$k0">
                  <node concept="pncrf" id="3X184CBbZ6k" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3X184CBbZ6l" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:7Erv4TlTI1p" resolve="ProductionMethode" />
                  </node>
                </node>
                <node concept="3t7uKx" id="3X184CBbZ6m" role="2OqNvi">
                  <node concept="uoxfO" id="3X184CBbZ6n" role="3t7uKA">
                    <ref role="uo_Cq" to="aw7t:7Erv4TlTGP5" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhUPRw" role="3EZMnx">
        <node concept="pkWqt" id="3X184CBbZnd" role="pqm2j">
          <node concept="3clFbS" id="3X184CBbZne" role="2VODD2">
            <node concept="3clFbF" id="3X184CBbZws" role="3cqZAp">
              <node concept="2OqwBi" id="3X184CBbZwt" role="3clFbG">
                <node concept="2OqwBi" id="3X184CBbZwu" role="2Oq$k0">
                  <node concept="pncrf" id="3X184CBbZwv" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3X184CBbZww" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:7Erv4TlTI1p" resolve="ProductionMethode" />
                  </node>
                </node>
                <node concept="3t7uKx" id="3X184CBbZwx" role="2OqNvi">
                  <node concept="uoxfO" id="3X184CBbZwy" role="3t7uKA">
                    <ref role="uo_Cq" to="aw7t:7Erv4TlTGP5" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0A7n" id="3J7IQQlIUj" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:24XvQ732hTT" resolve="MinProduction" />
        <node concept="Vb9p2" id="68AEjYhVbJ1" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
        <node concept="pkWqt" id="3X184CBc0bz" role="pqm2j">
          <node concept="3clFbS" id="3X184CBc0b$" role="2VODD2">
            <node concept="3clFbF" id="3X184CBc0kM" role="3cqZAp">
              <node concept="2OqwBi" id="3X184CBc0kN" role="3clFbG">
                <node concept="2OqwBi" id="3X184CBc0kO" role="2Oq$k0">
                  <node concept="pncrf" id="3X184CBc0kP" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3X184CBc0kQ" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:7Erv4TlTI1p" resolve="ProductionMethode" />
                  </node>
                </node>
                <node concept="3t7uKx" id="3X184CBc0kR" role="2OqNvi">
                  <node concept="uoxfO" id="3X184CBc0kS" role="3t7uKA">
                    <ref role="uo_Cq" to="aw7t:7Erv4TlTGP5" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3X184CBcdlr" role="3EZMnx">
        <property role="3F0ifm" value="MW" />
        <node concept="ljvvj" id="3X184CBcdAH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="3X184CBcueE" role="pqm2j">
          <node concept="3clFbS" id="3X184CBcueF" role="2VODD2">
            <node concept="3clFbF" id="3X184CBculP" role="3cqZAp">
              <node concept="2OqwBi" id="3X184CBculQ" role="3clFbG">
                <node concept="2OqwBi" id="3X184CBculR" role="2Oq$k0">
                  <node concept="pncrf" id="3X184CBculS" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3X184CBculT" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:7Erv4TlTI1p" resolve="ProductionMethode" />
                  </node>
                </node>
                <node concept="3t7uKx" id="3X184CBculU" role="2OqNvi">
                  <node concept="uoxfO" id="3X184CBculV" role="3t7uKA">
                    <ref role="uo_Cq" to="aw7t:7Erv4TlTGP5" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlIUm" role="3EZMnx">
        <property role="3F0ifm" value="Max Production " />
        <node concept="Veino" id="68AEjYhV7ns" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="68AEjYhV7nx" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="68AEjYhV7nD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlIUn" role="3EZMnx">
        <node concept="11L4FC" id="3J7IQQlIUo" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhUPWQ" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhUPYG" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhUQ0$" role="3EZMnx" />
      <node concept="3F0A7n" id="3J7IQQlIUp" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:24XvQ732kGm" resolve="MaxProduction" />
        <node concept="Vb9p2" id="68AEjYhVbJ8" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="3X184CBccMM" role="3EZMnx">
        <property role="3F0ifm" value="MW" />
        <node concept="ljvvj" id="3X184CBcd42" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlLZB" role="3EZMnx">
        <property role="3F0ifm" value="____________________________________" />
        <node concept="VPM3Z" id="68AEjYhVbHS" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="xShMh" id="68AEjYhVbHX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3J7IQQlOVf">
    <ref role="1XX52x" to="aw7t:4NGxdIp910w" resolve="PowerGrid" />
    <node concept="3EZMnI" id="3J7IQQlOVh" role="2wV5jI">
      <node concept="3F0ifn" id="68AEjYhVt8n" role="3EZMnx">
        <node concept="ljvvj" id="68AEjYhVt9d" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3J7IQQlOVi" role="2iSdaV" />
      <node concept="3F0ifn" id="3J7IQQlOVj" role="3EZMnx">
        <property role="3F0ifm" value="Name            " />
        <node concept="Veino" id="68AEjYhVJ51" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="68AEjYhVJ56" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="68AEjYhVJ5e" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhVIYK" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhVJ0w" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhVJ2i" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhVJ46" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhW8Hl" role="3EZMnx" />
      <node concept="3F0A7n" id="3J7IQQlOVk" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="3J7IQQlOX1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="68AEjYhVJ7G" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlOVl" role="3EZMnx">
        <property role="3F0ifm" value="Connected trans1" />
        <node concept="Veino" id="68AEjYhVJ5j" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="68AEjYhVJ5o" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="68AEjYhVJ5w" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhVJ9X" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhVJcX" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhVTH3" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhVTK_" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhW8Lb" role="3EZMnx" />
      <node concept="1iCGBv" id="3J7IQQlOVm" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:4NGxdIp910R" resolve="ConnectedTransformer1" />
        <node concept="1sVBvm" id="3J7IQQlOVp" role="1sWHZn">
          <node concept="3F0A7n" id="3J7IQQlOVr" role="2wV5jI">
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="Vb9p2" id="68AEjYhVJ7K" role="3F10Kt">
              <property role="Vbekb" value="BOLD" />
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="3J7IQQlOX3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlOVs" role="3EZMnx">
        <property role="3F0ifm" value="Connected trans2" />
        <node concept="Veino" id="68AEjYhVJ5_" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="68AEjYhVJ5E" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="68AEjYhVJ5M" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhVJfZ" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhVJj3" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhVTO9" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhVTRJ" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhW8P3" role="3EZMnx" />
      <node concept="1iCGBv" id="3J7IQQlOVt" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:59sIV4z5KwT" resolve="ConnectedTransformer2" />
        <node concept="1sVBvm" id="3J7IQQlOVw" role="1sWHZn">
          <node concept="3F0A7n" id="3J7IQQlOVy" role="2wV5jI">
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="Vb9p2" id="68AEjYhVJ7M" role="3F10Kt">
              <property role="Vbekb" value="BOLD" />
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="3J7IQQlOX5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlOVB" role="3EZMnx">
        <property role="3F0ifm" value="Max Capacity    " />
        <node concept="Veino" id="68AEjYhVJ5R" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="68AEjYhVJ5W" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="68AEjYhVJ6a" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlOVC" role="3EZMnx">
        <node concept="11L4FC" id="3J7IQQlOVD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhVJm9" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhVOlx" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhVOoF" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhW3uH" role="3EZMnx" />
      <node concept="3F0A7n" id="3J7IQQlOVE" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:4NGxdIp910z" resolve="maxCapacity" />
        <node concept="ljvvj" id="3J7IQQlOXV" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="68AEjYhVJ7R" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlOVN" role="3EZMnx">
        <property role="3F0ifm" value="Efficiency      " />
        <node concept="Veino" id="68AEjYhVJ6x" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="68AEjYhVJ6A" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="68AEjYhVJ6I" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlOVO" role="3EZMnx">
        <node concept="11L4FC" id="3J7IQQlOVP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhVJsr" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhVOyl" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhVO_B" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhW3DF" role="3EZMnx" />
      <node concept="3F0A7n" id="3J7IQQlOVQ" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:4NGxdIp910C" resolve="efficiency" />
        <node concept="ljvvj" id="3J7IQQlOZ$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="68AEjYhVJ85" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlOW5" role="3EZMnx">
        <property role="3F0ifm" value="Prob of Failure " />
        <node concept="Veino" id="68AEjYhVJ7n" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="68AEjYhVJ7s" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="68AEjYhVJ7$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlOW6" role="3EZMnx">
        <node concept="11L4FC" id="3J7IQQlOW7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="68AEjYhVJA5" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhVOQv" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhVOTX" role="3EZMnx" />
      <node concept="3F0ifn" id="68AEjYhW3OV" role="3EZMnx" />
      <node concept="3F0A7n" id="3J7IQQlOW8" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:5tZXSE_u3$_" resolve="probabilityOfFailure" />
        <node concept="ljvvj" id="3J7IQQlSC3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="68AEjYhVJ8q" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="3J7IQQlOW9" role="3EZMnx">
        <property role="3F0ifm" value="____________________________________" />
        <node concept="VPM3Z" id="68AEjYhVYFa" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="xShMh" id="68AEjYhVYFf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3X184CB6lcq">
    <ref role="1XX52x" to="aw7t:4qWwfGpuBmX" resolve="UsageProfile" />
    <node concept="3EZMnI" id="3X184CB6rd$" role="2wV5jI">
      <node concept="l2Vlx" id="3X184CB6rd_" role="2iSdaV" />
      <node concept="3F0ifn" id="3X184CB8JMn" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="ljvvj" id="3X184CB8K4s" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3X184CB6rdA" role="3EZMnx">
        <property role="3F0ifm" value="Name       " />
        <node concept="Veino" id="3X184CB7Vui" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="3X184CB7Vuj" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="3X184CB9fSi" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3X184CB7Vcl" role="3EZMnx">
        <node concept="11L4FC" id="3X184CBazcw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3X184CBa9$x" role="3EZMnx">
        <property role="3F0ifm" value="" />
      </node>
      <node concept="3F0ifn" id="3X184CB8C0E" role="3EZMnx">
        <property role="3F0ifm" value="" />
      </node>
      <node concept="3F0ifn" id="3X184CB8C$x" role="3EZMnx">
        <property role="3F0ifm" value="" />
      </node>
      <node concept="3F0A7n" id="3X184CB6rdB" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="3X184CB81j4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3X184CB74jo" role="3EZMnx">
        <property role="3F0ifm" value="Is Random  " />
        <node concept="Veino" id="3X184CB7Uj8" role="3F10Kt">
          <property role="Vb096" value="black" />
        </node>
        <node concept="VechU" id="3X184CB7Ujh" role="3F10Kt">
          <property role="Vb096" value="WHITE" />
        </node>
        <node concept="VPXOz" id="3X184CB9fSa" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3X184CB74m1" role="3EZMnx">
        <node concept="11L4FC" id="3X184CBazcz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3X184CB8D8s" role="3EZMnx">
        <property role="3F0ifm" value="" />
      </node>
      <node concept="3F0ifn" id="3X184CBaaa4" role="3EZMnx">
        <property role="3F0ifm" value="" />
      </node>
      <node concept="3F0ifn" id="3X184CB8DGr" role="3EZMnx">
        <property role="3F0ifm" value="" />
      </node>
      <node concept="3F0A7n" id="3X184CB74oI" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:4qWwfGpuBLQ" resolve="IsRandom" />
        <node concept="ljvvj" id="3X184CB74q6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="3X184CB6rdF" role="3EZMnx">
        <node concept="l2Vlx" id="3X184CB6rdG" role="2iSdaV" />
        <node concept="3F0ifn" id="3X184CB6rdI" role="3EZMnx">
          <property role="3F0ifm" value="Night      " />
          <node concept="Veino" id="3X184CB7Um6" role="3F10Kt">
            <property role="Vb096" value="black" />
          </node>
          <node concept="VechU" id="3X184CB7Um7" role="3F10Kt">
            <property role="Vb096" value="WHITE" />
          </node>
          <node concept="VPXOz" id="3X184CB9fSp" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3X184CB6rdJ" role="3EZMnx">
          <node concept="11L4FC" id="3X184CB6rdK" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3X184CB9lQe" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
        <node concept="3F0ifn" id="3X184CB9moX" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
        <node concept="3F0ifn" id="3X184CBaaIG" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
        <node concept="3F0A7n" id="3X184CB6rdL" role="3EZMnx">
          <ref role="1NtTu8" to="aw7t:4qWwfGpuBH5" resolve="Night" />
        </node>
        <node concept="3F0ifn" id="3X184CB9z3f" role="3EZMnx">
          <property role="3F0ifm" value="%" />
          <node concept="ljvvj" id="3X184CB9zl2" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3X184CB6rdN" role="3EZMnx">
          <property role="3F0ifm" value="Morning    " />
          <node concept="Veino" id="3X184CB7Umi" role="3F10Kt">
            <property role="Vb096" value="black" />
          </node>
          <node concept="VechU" id="3X184CB7Umj" role="3F10Kt">
            <property role="Vb096" value="WHITE" />
          </node>
          <node concept="VPXOz" id="3X184CB9fSw" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3X184CB6rdO" role="3EZMnx">
          <node concept="11L4FC" id="3X184CB6rdP" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3X184CB9mVK" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
        <node concept="3F0ifn" id="3X184CB9nuB" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
        <node concept="3F0ifn" id="3X184CBabij" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
        <node concept="3F0A7n" id="3X184CB6rdQ" role="3EZMnx">
          <ref role="1NtTu8" to="aw7t:4qWwfGpuBH7" resolve="Morning" />
        </node>
        <node concept="3F0ifn" id="3X184CB9yvF" role="3EZMnx">
          <property role="3F0ifm" value="%" />
          <node concept="ljvvj" id="3X184CB9yLq" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3X184CB6rdS" role="3EZMnx">
          <property role="3F0ifm" value="Midday     " />
          <node concept="Veino" id="3X184CB7Umc" role="3F10Kt">
            <property role="Vb096" value="black" />
          </node>
          <node concept="VechU" id="3X184CB7Umd" role="3F10Kt">
            <property role="Vb096" value="WHITE" />
          </node>
          <node concept="VPXOz" id="3X184CB9fSB" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3X184CB9nK4" role="3EZMnx">
          <property role="3F0ifm" value="" />
          <node concept="11L4FC" id="3X184CBa3Eq" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3X184CB9o$p" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
        <node concept="3F0ifn" id="3X184CB9oRj" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
        <node concept="3F0ifn" id="3X184CBabPY" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
        <node concept="3F0A7n" id="3X184CB6rdV" role="3EZMnx">
          <ref role="1NtTu8" to="aw7t:4qWwfGpuBHa" resolve="Midday" />
        </node>
        <node concept="3F0ifn" id="3X184CB9xWf" role="3EZMnx">
          <property role="3F0ifm" value="%" />
          <node concept="ljvvj" id="3X184CB9ydU" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3X184CB6rdX" role="3EZMnx">
          <property role="3F0ifm" value="Afternoon  " />
          <node concept="Veino" id="3X184CB7Umo" role="3F10Kt">
            <property role="Vb096" value="black" />
          </node>
          <node concept="VechU" id="3X184CB7Ump" role="3F10Kt">
            <property role="Vb096" value="WHITE" />
          </node>
          <node concept="VPXOz" id="3X184CB9fSI" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3X184CB6rdY" role="3EZMnx">
          <node concept="11L4FC" id="3X184CB6rdZ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3X184CB9pFN" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
        <node concept="3F0ifn" id="3X184CB9qeQ" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
        <node concept="3F0ifn" id="3X184CBacpH" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
        <node concept="3F0A7n" id="3X184CB6re0" role="3EZMnx">
          <ref role="1NtTu8" to="aw7t:4qWwfGpuBHe" resolve="Afternoon" />
        </node>
        <node concept="3F0ifn" id="3X184CB9xoU" role="3EZMnx">
          <property role="3F0ifm" value="%" />
          <node concept="ljvvj" id="3X184CB6re1" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3X184CB6re2" role="3EZMnx">
          <property role="3F0ifm" value="Evening    " />
          <node concept="Veino" id="3X184CB7Umu" role="3F10Kt">
            <property role="Vb096" value="black" />
          </node>
          <node concept="VechU" id="3X184CB7Umv" role="3F10Kt">
            <property role="Vb096" value="WHITE" />
          </node>
          <node concept="VPXOz" id="3X184CB9fSP" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3X184CB6re3" role="3EZMnx">
          <node concept="11L4FC" id="3X184CB6re4" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3X184CB9qLX" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
        <node concept="3F0ifn" id="3X184CB9rl8" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
        <node concept="3F0ifn" id="3X184CBacXw" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
        <node concept="3F0A7n" id="3X184CB6re5" role="3EZMnx">
          <ref role="1NtTu8" to="aw7t:4qWwfGpuBHj" resolve="Evening" />
        </node>
        <node concept="3F0ifn" id="3X184CB7oKy" role="3EZMnx">
          <property role="3F0ifm" value="%" />
          <node concept="ljvvj" id="3X184CB7CzL" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="pkWqt" id="3X184CB74qc" role="pqm2j">
          <node concept="3clFbS" id="3X184CB74qd" role="2VODD2">
            <node concept="3clFbF" id="3X184CB74xo" role="3cqZAp">
              <node concept="3clFbC" id="3X184CB76a7" role="3clFbG">
                <node concept="3clFbT" id="3X184CB76xF" role="3uHU7w">
                  <property role="3clFbU" value="false" />
                </node>
                <node concept="2OqwBi" id="3X184CB74Il" role="3uHU7B">
                  <node concept="pncrf" id="3X184CB74xn" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3X184CB75fm" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:4qWwfGpuBLQ" resolve="IsRandom" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3X184CB9zBO" role="3EZMnx">
        <property role="3F0ifm" value="____________________________" />
      </node>
      <node concept="ljvvj" id="3X184CB8hO4" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
</model>

