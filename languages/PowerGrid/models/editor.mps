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
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404574412" name="jetbrains.mps.lang.editor.structure.BackgroundColorStyleClassItem" flags="ln" index="Veino" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
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
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
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
  <node concept="24kQdi" id="2K_vMQvWbJa">
    <ref role="1XX52x" to="aw7t:7rDXPBEWeTn" resolve="Transformer" />
    <node concept="3EZMnI" id="2K_vMQvWbJf" role="2wV5jI">
      <node concept="l2Vlx" id="2K_vMQvWbJg" role="2iSdaV" />
      <node concept="3F0ifn" id="1I0oeEpzrOE" role="3EZMnx">
        <property role="3F0ifm" value="Name" />
      </node>
      <node concept="3F0ifn" id="1I0oeEp$0nK" role="3EZMnx" />
      <node concept="3F0ifn" id="1I0oeEp$otW" role="3EZMnx" />
      <node concept="3F0ifn" id="1I0oeEp$rFt" role="3EZMnx" />
      <node concept="3F0ifn" id="1I0oeEp$rGd" role="3EZMnx" />
      <node concept="3F0ifn" id="1I0oeEp$pxT" role="3EZMnx">
        <property role="3F0ifm" value="  " />
      </node>
      <node concept="3F0ifn" id="1I0oeEp$qAo" role="3EZMnx">
        <property role="3F0ifm" value="  " />
      </node>
      <node concept="3F0A7n" id="4YW2CXVUOWf" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="1I0oeEp$6Pk" role="3EZMnx">
        <property role="3F0ifm" value=" " />
      </node>
      <node concept="3F0ifn" id="1I0oeEp$6PW" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="ljvvj" id="1I0oeEp$6Qh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1I0oeEpzrOW" role="3EZMnx">
        <property role="3F0ifm" value="Max Capacity" />
      </node>
      <node concept="3F0ifn" id="1I0oeEp$0oA" role="3EZMnx" />
      <node concept="3F0ifn" id="1I0oeEp$2w8" role="3EZMnx">
        <property role="3F0ifm" value=" " />
      </node>
      <node concept="3F0A7n" id="4YW2CXVUOTw" role="3EZMnx">
        <ref role="1NtTu8" to="aw7t:7rDXPBEWeTt" resolve="MaxCapacity" />
        <node concept="ljvvj" id="1I0oeEpzrPg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1I0oeEpzrPi" role="3EZMnx">
        <property role="3F0ifm" value="Efficiency" />
      </node>
      <node concept="3F0ifn" id="1I0oeEp$0p4" role="3EZMnx" />
      <node concept="3F0ifn" id="1I0oeEp$1qn" role="3EZMnx">
        <property role="3F0ifm" value=" " />
      </node>
      <node concept="3F0ifn" id="1I0oeEp$1qT" role="3EZMnx">
        <property role="3F0ifm" value=" " />
      </node>
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
      </node>
      <node concept="3F0ifn" id="1I0oeEp$tR_" role="3EZMnx" />
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
        <property role="3F0ifm" value="{" />
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
        <node concept="3F0ifn" id="NibI7nzWt0" role="3EZMnx">
          <property role="3F0ifm" value="weather" />
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
        <node concept="3F0ifn" id="NibI7nzWt9" role="3EZMnx">
          <node concept="ljvvj" id="NibI7nzWta" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="NibI7nzWtb" role="3EZMnx">
          <property role="3F0ifm" value="producers" />
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
        </node>
        <node concept="3F0ifn" id="NibI7nzWtk" role="3EZMnx">
          <node concept="ljvvj" id="NibI7nzWtl" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="NibI7nzWtm" role="3EZMnx">
          <property role="3F0ifm" value="grids" />
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
        </node>
        <node concept="3F0ifn" id="NibI7nzWtE" role="3EZMnx">
          <node concept="ljvvj" id="NibI7nzWtF" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="NibI7nzWtG" role="3EZMnx">
          <property role="3F0ifm" value="consumers" />
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
        </node>
      </node>
      <node concept="3F0ifn" id="NibI7nzWtP" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="3mYdg7" id="NibI7nzWtQ" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
      </node>
    </node>
  </node>
</model>

