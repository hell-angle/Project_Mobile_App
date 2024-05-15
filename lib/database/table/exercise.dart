import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';

import '../../common/model/timed.dart';
import '../../feature/transfer/transfer.dart';
import '../database.dart';

@Entity(
  tableName: 'exercise',
  primaryKeys: ['id'],
  foreignKeys: [
    ForeignKey(
      childColumns: ['bar_id'],
      parentColumns: ['id'],
      entity: Bar,
    ),
  ],
)
class Exercise extends Equatable {
  const Exercise({
    this.id,
    required this.name,
    required this.muscle,
    required this.muscleGroup,
    required this.equipment,
    required this.videoPath,
    this.imageUrl, // Add this field
    required this.timer,
    this.barId,
    this.weightUnit,
    this.distanceUnit,
    this.fields = const [],
    this.conversions = const [],
    this.isCustom = false,
    this.isHidden = false,
  });

  const Exercise.empty()
      : id = null,
        name = '',
        muscle = Muscle.none,
        muscleGroup = MuscleGroup.none,
        equipment = Equipment.none,
        videoPath = 'Empty',
        imageUrl = null, // Add this field
        timer = const Timed.zero(),
        barId = null,
        weightUnit = null,
        distanceUnit = null,
        fields = const [],
        conversions = const [],
        isCustom = false,
        isHidden = false;

  @PrimaryKey(autoGenerate: true)
  @ColumnInfo(name: 'id')
  final int? id;

  @ColumnInfo(name: 'name')
  final String name;

  @ColumnInfo(name: 'muscle')
  final Muscle muscle;

  @ColumnInfo(name: 'muscle_group')
  final MuscleGroup muscleGroup;

  @ColumnInfo(name: 'equipment')
  final Equipment equipment;

  @ColumnInfo(name: 'video_path')
  final String videoPath;

  @ColumnInfo(name: 'image_url') // Add this field
  final String? imageUrl;

  @ColumnInfo(name: 'timer')
  final Timed timer;

  @ColumnInfo(name: 'bar_id')
  final int? barId;

  @ColumnInfo(name: 'weight_unit')
  final WeightUnit? weightUnit;

  @ColumnInfo(name: 'distance_unit')
  final DistanceUnit? distanceUnit;

  @ColumnInfo(name: 'is_custom')
  final bool isCustom;

  @ColumnInfo(name: 'is_hidden')
  final bool isHidden;

  @ignore
  final List<ExerciseField> fields;

  @ignore
  final List<ExerciseConversion> conversions;

  Exercise copyWith({
    int? id,
    String? name,
    Muscle? muscle,
    MuscleGroup? muscleGroup,
    Equipment? equipment,
    String? videoPath,
    String? imageUrl, // Add this field
    Timed? timer,
    int? barId,
    WeightUnit? weightUnit,
    DistanceUnit? distanceUnit,
    bool? isCustom,
    bool? isHidden,
    List<ExerciseField>? fields,
    List<ExerciseConversion>? conversions,
  }) {
    return Exercise(
      id: id ?? this.id,
      name: name ?? this.name,
      muscle: muscle ?? this.muscle,
      muscleGroup: muscleGroup ?? this.muscleGroup,
      equipment: equipment ?? this.equipment,
      videoPath: videoPath ?? this.videoPath,
      imageUrl: imageUrl ?? this.imageUrl, // Add this field
      timer: timer ?? this.timer,
      barId: barId ?? this.barId,
      weightUnit: weightUnit ?? this.weightUnit,
      distanceUnit: distanceUnit ?? this.distanceUnit,
      isCustom: isCustom ?? this.isCustom,
      isHidden: isHidden ?? this.isHidden,
      fields: fields ?? this.fields,
      conversions: conversions ?? this.conversions,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        muscle,
        muscleGroup,
        equipment,
        videoPath,
        imageUrl, // Add this field
        timer,
        barId,
        weightUnit,
        distanceUnit,
        isCustom,
        isHidden,
      ];
}