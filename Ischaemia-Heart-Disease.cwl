cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ischaemia-heart-disease-preinfarction---primary:
    run: ischaemia-heart-disease-preinfarction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  ischaemia-heart-disease-insufficiency---primary:
    run: ischaemia-heart-disease-insufficiency---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-preinfarction---primary/output
  ischaemia-heart-disease-vessel---primary:
    run: ischaemia-heart-disease-vessel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-insufficiency---primary/output
  ischaemia-heart-disease-dressler's---primary:
    run: ischaemia-heart-disease-dressler's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-vessel---primary/output
  ischaemia-heart-disease-decubitus---primary:
    run: ischaemia-heart-disease-decubitus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-dressler's---primary/output
  subendocardial-ischaemia-heart-disease---primary:
    run: subendocardial-ischaemia-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-decubitus---primary/output
  ischaemia-heart-disease-attack---primary:
    run: ischaemia-heart-disease-attack---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: subendocardial-ischaemia-heart-disease---primary/output
  chronic-ischaemia-heart-disease---primary:
    run: chronic-ischaemia-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-attack---primary/output
  ischaemia-heart-disease-anginosus---primary:
    run: ischaemia-heart-disease-anginosus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: chronic-ischaemia-heart-disease---primary/output
  ischaemia-heart-disease---primary:
    run: ischaemia-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-anginosus---primary/output
  ischaemia-heart-disease-subacute---primary:
    run: ischaemia-heart-disease-subacute---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease---primary/output
  ischaemia-heart-disease-angina---primary:
    run: ischaemia-heart-disease-angina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-subacute---primary/output
  ischaemia-heart-disease-posterior---primary:
    run: ischaemia-heart-disease-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-angina---primary/output
  current-ischaemia-heart-disease---primary:
    run: current-ischaemia-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-posterior---primary/output
  ischaemia-heart-disease-thrombosis---primary:
    run: ischaemia-heart-disease-thrombosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: current-ischaemia-heart-disease---primary/output
  coronary-ischaemia-heart-disease---primary:
    run: coronary-ischaemia-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-thrombosis---primary/output
  heart---primary:
    run: heart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: coronary-ischaemia-heart-disease---primary/output
  ischaemia-heart-disease-muscle---primary:
    run: ischaemia-heart-disease-muscle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: heart---primary/output
  ischaemia-heart-disease-pectoris---primary:
    run: ischaemia-heart-disease-pectoris---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-muscle---primary/output
  ischaemia-heart-disease-aborted---primary:
    run: ischaemia-heart-disease-aborted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-pectoris---primary/output
  transmural-ischaemia-heart-disease---primary:
    run: transmural-ischaemia-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-aborted---primary/output
  myocardal-ischaemia-heart-disease---primary:
    run: myocardal-ischaemia-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: transmural-ischaemia-heart-disease---primary/output
  unstable-ischaemia-heart-disease---primary:
    run: unstable-ischaemia-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: myocardal-ischaemia-heart-disease---primary/output
  ischaemia-heart-disease-rupture---primary:
    run: ischaemia-heart-disease-rupture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: unstable-ischaemia-heart-disease---primary/output
  ischaemia-heart-disease-unspecified---primary:
    run: ischaemia-heart-disease-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-rupture---primary/output
  ischaemia-heart-disease-infarction---primary:
    run: ischaemia-heart-disease-infarction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-unspecified---primary/output
  ischaemia-heart-disease-artery---primary:
    run: ischaemia-heart-disease-artery---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-infarction---primary/output
  atherosclerotic-ischaemia-heart-disease---primary:
    run: atherosclerotic-ischaemia-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-artery---primary/output
  ischaemia-heart-disease-stenocardia---primary:
    run: ischaemia-heart-disease-stenocardia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: atherosclerotic-ischaemia-heart-disease---primary/output
  silent-ischaemia-heart-disease---primary:
    run: silent-ischaemia-heart-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: ischaemia-heart-disease-stenocardia---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: silent-ischaemia-heart-disease---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
