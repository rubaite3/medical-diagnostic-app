// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StartDiagnosisRequest _$StartDiagnosisRequestFromJson(
  Map<String, dynamic> json,
) => _StartDiagnosisRequest(
  gender: json['gender'] as String,
  isSmoker: json['is_smoker'] as bool,
  hasDiabetes: json['has_diabetes'] as bool,
  hasHypertension: json['has_hypertension'] as bool,
  isPregnant: json['is_pregnant'] as bool?,
  activityLevel: json['activity_level'] as String,
  assessmentFor: json['assessment_for'] as String? ?? "myself",
  isAlcoholic: json['is_alcoholic'] as bool?,
  patientJob: json['patient_job'] as String?,
  birthDate: json['birth_date'] as String?,
  bloodType: json['blood_type'] as String?,
  modelName: json['model_name'] as String?,
);

Map<String, dynamic> _$StartDiagnosisRequestToJson(
  _StartDiagnosisRequest instance,
) => <String, dynamic>{
  'gender': instance.gender,
  'is_smoker': instance.isSmoker,
  'has_diabetes': instance.hasDiabetes,
  'has_hypertension': instance.hasHypertension,
  'is_pregnant': instance.isPregnant,
  'activity_level': instance.activityLevel,
  'assessment_for': instance.assessmentFor,
  'is_alcoholic': instance.isAlcoholic,
  'patient_job': instance.patientJob,
  'birth_date': instance.birthDate,
  'blood_type': instance.bloodType,
  'model_name': instance.modelName,
};

_StartDiagnosisResponse _$StartDiagnosisResponseFromJson(
  Map<String, dynamic> json,
) => _StartDiagnosisResponse(sessionId: json['session_id'] as String);

Map<String, dynamic> _$StartDiagnosisResponseToJson(
  _StartDiagnosisResponse instance,
) => <String, dynamic>{'session_id': instance.sessionId};

_Symptom _$SymptomFromJson(Map<String, dynamic> json) => _Symptom(
  id: (json['id'] as num?)?.toInt(),
  nameEn: json['name_en'] as String?,
  nameLocal: json['name_local'] as String?,
  summary: json['summary'] as String?,
  type: json['type'] as String?,
);

Map<String, dynamic> _$SymptomToJson(_Symptom instance) => <String, dynamic>{
  'id': instance.id,
  'name_en': instance.nameEn,
  'name_local': instance.nameLocal,
  'summary': instance.summary,
  'type': instance.type,
};

_QuestionOption _$QuestionOptionFromJson(Map<String, dynamic> json) =>
    _QuestionOption(id: json['id'] as String, label: json['label'] as String);

Map<String, dynamic> _$QuestionOptionToJson(_QuestionOption instance) =>
    <String, dynamic>{'id': instance.id, 'label': instance.label};

_Question _$QuestionFromJson(Map<String, dynamic> json) => _Question(
  id: json['id'] as String,
  text: json['text'] as String,
  type: json['type'] as String,
  options: (json['options'] as List<dynamic>)
      .map((e) => QuestionOption.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$QuestionToJson(_Question instance) => <String, dynamic>{
  'id': instance.id,
  'text': instance.text,
  'type': instance.type,
  'options': instance.options,
};

_SymptomAnswer _$SymptomAnswerFromJson(Map<String, dynamic> json) =>
    _SymptomAnswer(
      questionId: json['question_id'] as String,
      selectedOptionIds: (json['selected_option_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SymptomAnswerToJson(_SymptomAnswer instance) =>
    <String, dynamic>{
      'question_id': instance.questionId,
      'selected_option_ids': instance.selectedOptionIds,
    };

_SelectSymptomRequest _$SelectSymptomRequestFromJson(
  Map<String, dynamic> json,
) => _SelectSymptomRequest(
  name: json['name'] as String,
  sessionId: json['session_id'] as String,
);

Map<String, dynamic> _$SelectSymptomRequestToJson(
  _SelectSymptomRequest instance,
) => <String, dynamic>{'name': instance.name, 'session_id': instance.sessionId};

_ProbableDisease _$ProbableDiseaseFromJson(Map<String, dynamic> json) =>
    _ProbableDisease(
      diseaseName: json['disease_name'] as String?,
      diseaseNameLocal: json['disease_name_local'] as String?,
      probability: (json['probability'] as num?)?.toDouble(),
      confidence: json['confidence'] as String?,
      specialist: json['specialist'] as String?,
      advice: json['advice'] as String?,
    );

Map<String, dynamic> _$ProbableDiseaseToJson(_ProbableDisease instance) =>
    <String, dynamic>{
      'disease_name': instance.diseaseName,
      'disease_name_local': instance.diseaseNameLocal,
      'probability': instance.probability,
      'confidence': instance.confidence,
      'specialist': instance.specialist,
      'advice': instance.advice,
    };

_DiagnosisSummary _$DiagnosisSummaryFromJson(Map<String, dynamic> json) =>
    _DiagnosisSummary(
      diagnoses: (json['diagnoses'] as List<dynamic>)
          .map((e) => ProbableDisease.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DiagnosisSummaryToJson(_DiagnosisSummary instance) =>
    <String, dynamic>{'diagnoses': instance.diagnoses};

_FollowUpResponse _$FollowUpResponseFromJson(Map<String, dynamic> json) =>
    _FollowUpResponse(
      responseType: json['response_type'] as String? ?? "question",
      question: json['question'] == null
          ? null
          : Question.fromJson(json['question'] as Map<String, dynamic>),
      diagnosisSummary: json['diagnosis_summary'] == null
          ? null
          : DiagnosisSummary.fromJson(
              json['diagnosis_summary'] as Map<String, dynamic>,
            ),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FollowUpResponseToJson(_FollowUpResponse instance) =>
    <String, dynamic>{
      'response_type': instance.responseType,
      'question': instance.question,
      'diagnosis_summary': instance.diagnosisSummary,
      'total': instance.total,
    };

_SubmitFollowUpAnswerRequest _$SubmitFollowUpAnswerRequestFromJson(
  Map<String, dynamic> json,
) => _SubmitFollowUpAnswerRequest(
  sessionId: json['session_id'] as String,
  questionId: json['question_id'] as String,
  answer: json['answer'] as String,
  forceDiagnosis: json['force_diagnosis'] as bool? ?? false,
);

Map<String, dynamic> _$SubmitFollowUpAnswerRequestToJson(
  _SubmitFollowUpAnswerRequest instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'question_id': instance.questionId,
  'answer': instance.answer,
  'force_diagnosis': instance.forceDiagnosis,
};

_ConversationTurn _$ConversationTurnFromJson(Map<String, dynamic> json) =>
    _ConversationTurn(
      role: json['role'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$ConversationTurnToJson(_ConversationTurn instance) =>
    <String, dynamic>{'role': instance.role, 'text': instance.text};

_Diagnosis _$DiagnosisFromJson(Map<String, dynamic> json) => _Diagnosis(
  diseaseName: json['disease_name'] as String?,
  probability: (json['probability'] as num?)?.toDouble(),
  confidence: json['confidence'] as String?,
  specialist: json['specialist'] as String?,
  advice: json['advice'] as String?,
  diseaseNameLocal: json['disease_name_local'] as String?,
  specialistLocal: json['specialist_local'] as String?,
  adviceLocal: json['advice_local'] as String?,
);

Map<String, dynamic> _$DiagnosisToJson(_Diagnosis instance) =>
    <String, dynamic>{
      'disease_name': instance.diseaseName,
      'probability': instance.probability,
      'confidence': instance.confidence,
      'specialist': instance.specialist,
      'advice': instance.advice,
      'disease_name_local': instance.diseaseNameLocal,
      'specialist_local': instance.specialistLocal,
      'advice_local': instance.adviceLocal,
    };

_DiagnosisSessionModel _$DiagnosisSessionModelFromJson(
  Map<String, dynamic> json,
) => _DiagnosisSessionModel(
  id: (json['id'] as num?)?.toInt(),
  sessionHash: json['session_hash'] as String?,
  status: json['status'] as String?,
  phase: json['phase'] as String?,
  startedAt: json['started_at'] == null
      ? null
      : DateTime.parse(json['started_at'] as String),
  completedAt: json['completed_at'] == null
      ? null
      : DateTime.parse(json['completed_at'] as String),
  diagnoses:
      (json['ai_result'] as List<dynamic>?)
          ?.map((e) => Diagnosis.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$DiagnosisSessionModelToJson(
  _DiagnosisSessionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'session_hash': instance.sessionHash,
  'status': instance.status,
  'phase': instance.phase,
  'started_at': instance.startedAt?.toIso8601String(),
  'completed_at': instance.completedAt?.toIso8601String(),
  'ai_result': instance.diagnoses,
};

_FinalReport _$FinalReportFromJson(Map<String, dynamic> json) => _FinalReport(
  session: json['session'] == null
      ? null
      : DiagnosisSessionModel.fromJson(json['session'] as Map<String, dynamic>),
  startedAt: json['started_at'] as String?,
  doctor: json['doctor'] == null
      ? null
      : DoctorModel.fromJson(json['doctor'] as Map<String, dynamic>),
  completedAt: json['completed_at'] as String?,
  workflowSteps: (json['workflow_steps'] as List<dynamic>?)
      ?.map((e) => WorkflowItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FinalReportToJson(_FinalReport instance) =>
    <String, dynamic>{
      'session': instance.session,
      'started_at': instance.startedAt,
      'doctor': instance.doctor,
      'completed_at': instance.completedAt,
      'workflow_steps': instance.workflowSteps,
    };

_SessionHistoryItem _$SessionHistoryItemFromJson(Map<String, dynamic> json) =>
    _SessionHistoryItem(
      id: json['id'] as String?,
      createdAt: json['created_at'] as String?,
      status: json['status'] as String?,
      topDisease: json['top_disease'] as String?,
      topProbability: (json['top_probability'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SessionHistoryItemToJson(_SessionHistoryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'status': instance.status,
      'top_disease': instance.topDisease,
      'top_probability': instance.topProbability,
    };
