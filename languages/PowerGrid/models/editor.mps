<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5a8ea039-0432-4fb0-883f-92690104bf9e(PowerGrid.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="aw7t" ref="r:2a8ae552-038d-4f4d-a413-89014cd6b087(PowerGrid.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
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
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
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
        <ref role="1NtTu8" to="aw7t:7rDXPBEWeTx" resolve="efficiency" />
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
</model>

