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
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
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
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="2565736246230036150" name="jetbrains.mps.lang.core.structure.ExportScopePublic" flags="ig" index="24uvON" />
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
        <node concept="3F0ifn" id="1G90Zx2rOo7" role="3EZMnx">
          <property role="3F0ifm" value="connected transformer" />
        </node>
        <node concept="3F0ifn" id="1G90Zx2rOoH" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="1iCGBv" id="1G90Zx2rOpE" role="3EZMnx">
          <ref role="1NtTu8" to="aw7t:1G90Zx2lQbC" resolve="ConnectedTransformer" />
          <node concept="1sVBvm" id="1G90Zx2rOpG" role="1sWHZn">
            <node concept="3F0A7n" id="1G90Zx2rU2r" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
          <node concept="ljvvj" id="4qWwfGpvDIX" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="4qWwfGpvrXK" role="3EZMnx">
          <property role="3F0ifm" value="Usage Profile" />
        </node>
        <node concept="3F0ifn" id="4qWwfGpvrYx" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="1iCGBv" id="4qWwfGpvrZj" role="3EZMnx">
          <ref role="1NtTu8" to="aw7t:4qWwfGpuBLN" resolve="UsageProfile" />
          <node concept="1sVBvm" id="4qWwfGpvrZl" role="1sWHZn">
            <node concept="3F0A7n" id="4qWwfGpvrZN" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
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
      <node concept="3F0ifn" id="5tZXSE_vGnT" role="3EZMnx">
        <property role="3F0ifm" value="Probability of Failure" />
      </node>
      <node concept="3F0ifn" id="5tZXSE_vGqa" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="5tZXSE_vGsv" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:5tZXSE_u3$_" resolve="probabilityOfFailure" />
      </node>
      <node concept="3F0ifn" id="5tZXSE_vV4g" role="3EZMnx">
        <property role="3F0ifm" value="‰" />
      </node>
      <node concept="3F0ifn" id="5tZXSE_vGuS" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pns2" role="3EZMnx">
        <property role="3F0ifm" value="transformer1" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pnsQ" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="1G90Zx2pnu8" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:4NGxdIp910R" resolve="ConnectedTransformer1" />
        <node concept="1sVBvm" id="1G90Zx2pnua" role="1sWHZn">
          <node concept="3F0A7n" id="1G90Zx2rVpN" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1G90Zx2pnvb" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pnw9" role="3EZMnx">
        <property role="3F0ifm" value="transformer2" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2pnx9" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="1G90Zx2pnyH" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:59sIV4z5KwT" resolve="ConnectedTransformer2" />
        <node concept="1sVBvm" id="1G90Zx2pnyJ" role="1sWHZn">
          <node concept="3F0A7n" id="1G90Zx2rVpQ" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
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
      <node concept="3F0ifn" id="1G90Zx2snVH" role="3EZMnx">
        <property role="3F0ifm" value="Connected Transformer" />
      </node>
      <node concept="3F0ifn" id="1G90Zx2snW7" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="1G90Zx2snWM" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:4DN6WPtj6wQ" resolve="ConnectedTransformer" />
        <node concept="1sVBvm" id="1G90Zx2snWO" role="1sWHZn">
          <node concept="3F0A7n" id="1G90Zx2snX7" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4qWwfGpu6Vs" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0ifn" id="4qWwfGpu6W8" role="3EZMnx">
        <property role="3F0ifm" value="Weather" />
      </node>
      <node concept="3F0ifn" id="4qWwfGpu6WQ" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="4qWwfGpu6XA" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:6gi3O$9ozQy" resolve="Weather" />
        <node concept="1sVBvm" id="4qWwfGpu6XC" role="1sWHZn">
          <node concept="3F0A7n" id="4qWwfGpu6Y8" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="1G90Zx2snSz" role="2iSdaV" />
    </node>
  </node>
</model>

