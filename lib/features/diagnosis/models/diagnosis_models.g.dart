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
  assessmentFor: json['assessment_for'] as String,
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
};

_StartDiagnosisResponse _$StartDiagnosisResponseFromJson(
  Map<String, dynamic> json,
) => _StartDiagnosisResponse(sessionId: json['session_id'] as String);

Map<String, dynamic> _$StartDiagnosisResponseToJson(
  _StartDiagnosisResponse instance,
) => <String, dynamic>{'session_id': instance.sessionId};

_Symptom _$SymptomFromJson(Map<String, dynamic> json) => _Symptom(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$SymptomToJson(_Symptom instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
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

_SubmitSymptomAnswersRequest _$SubmitSymptomAnswersRequestFromJson(
  Map<String, dynamic> json,
) => _SubmitSymptomAnswersRequest(
  sessionId: json['session_id'] as String,
  symptomId: json['symptom_id'] as String,
  answers: (json['answers'] as List<dynamic>)
      .map((e) => SymptomAnswer.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SubmitSymptomAnswersRequestToJson(
  _SubmitSymptomAnswersRequest instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'symptom_id': instance.symptomId,
  'answers': instance.answers,
};

_ProbableDisease _$ProbableDiseaseFromJson(Map<String, dynamic> json) =>
    _ProbableDisease(
      name: json['name'] as String,
      probability: (json['probability'] as num).toDouble(),
      colorCode: json['color_code'] as String,
    );

Map<String, dynamic> _$ProbableDiseaseToJson(_ProbableDisease instance) =>
    <String, dynamic>{
      'name': instance.name,
      'probability': instance.probability,
      'color_code': instance.colorCode,
    };

_DiagnosisSummary _$DiagnosisSummaryFromJson(Map<String, dynamic> json) =>
    _DiagnosisSummary(
      probableDiseases: (json['probable_diseases'] as List<dynamic>)
          .map((e) => ProbableDisease.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DiagnosisSummaryToJson(_DiagnosisSummary instance) =>
    <String, dynamic>{'probable_diseases': instance.probableDiseases};

_FollowUpResponse _$FollowUpResponseFromJson(Map<String, dynamic> json) =>
    _FollowUpResponse(
      responseType: json['response_type'] as String,
      question: json['question'] == null
          ? null
          : Question.fromJson(json['question'] as Map<String, dynamic>),
      diagnosisSummary: json['diagnosis_summary'] == null
          ? null
          : DiagnosisSummary.fromJson(
              json['diagnosis_summary'] as Map<String, dynamic>,
            ),
      total: (json['total'] as num).toInt(),
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
  selectedOptionIds: (json['selected_option_ids'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$SubmitFollowUpAnswerRequestToJson(
  _SubmitFollowUpAnswerRequest instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'question_id': instance.questionId,
  'selected_option_ids': instance.selectedOptionIds,
};
