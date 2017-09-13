<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0cd2d400-f339-4f4e-9bcb-4c18a4d45b05(PowerGrid.constraints)">
  <persistence version="9" />
  <languages>
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="aw7t" ref="r:2a8ae552-038d-4f4d-a413-89014cd6b087(PowerGrid.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213098023997" name="property" index="1MhHOB" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
  </registry>
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
  </node>
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
      <ref role="EomxK" to="aw7t:7rDXPBEWeTx" resolve="efficiency" />
      <node concept="QB0g5" id="6qPpZy2sZOu" role="QCWH9">
        <node concept="3clFbS" id="6qPpZy2sZOv" role="2VODD2">
          <node concept="3clFbF" id="6qPpZy2sZVC" role="3cqZAp">
            <node concept="1Wc70l" id="6qPpZy2t5$c" role="3clFbG">
              <node concept="2d3UOw" id="6qPpZy2ttBG" role="3uHU7w">
                <node concept="1Wqviy" id="6qPpZy2t5NS" role="3uHU7B" />
                <node concept="2OqwBi" id="6qPpZy2ts$N" role="3uHU7w">
                  <node concept="EsrRn" id="6qPpZy2ts8Y" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6qPpZy2tsZm" role="2OqNvi">
                    <ref role="3TsBF5" to="aw7t:7rDXPBEWeTx" resolve="efficiency" />
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="6qPpZy2t1KT" role="3uHU7B">
                <node concept="1Wqviy" id="6qPpZy2sZVB" role="3uHU7B" />
                <node concept="3cmrfG" id="6qPpZy2t1Si" role="3uHU7w">
                  <property role="3cmrfH" value="200" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

