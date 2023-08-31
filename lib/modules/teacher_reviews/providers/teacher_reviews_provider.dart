import 'package:hooks_riverpod/hooks_riverpod.dart';

// Models
import '../../requests/models/sub_student_model.codegen.dart';
import '../../timetables/models/subject_model.codegen.dart';
import '../models/teacher_review_model.codegen.dart';

final teacherReviewsProvider = Provider((_) => TeacherReviewsProvider());

class TeacherReviewsProvider {
  final _teacherReviews = [
    TeacherReviewModel(
      reviewId: 1,
      learning: 3,
      grading: 4,
      attendance: 3,
      difficulty: 5,
      overallRating: 3.8,
      comment: 'Overall amazing teacher. Worth it!',
      reviewedAt: DateTime.parse('2021-11-22 21:20:40'),
      subject: const SubjectModel(
        subjectCode: 'MKT201',
        subject: 'Principles Of Marketing',
      ),
      teacherId: 2,
      reviewedBy: const SubStudentModel(
        erp: '17855',
        firstName: 'Rafay',
        lastName: 'Saleem',
        profilePictureUrl:
            'https://avatars.githubusercontent.com/u/62943972?v=4',
        programId: 1,
        graduationYear: 2022,
      ),
    ),
    TeacherReviewModel(
      reviewId: 3,
      learning: 3,
      grading: 4,
      attendance: 4,
      difficulty: 2,
      overallRating: 3.3,
      comment: 'Not worth it. Poor experience',
      reviewedAt: DateTime.parse('2021-08-14 18:35:43'),
      subject: const SubjectModel(
        subjectCode: 'MKT201',
        subject: 'Principles Of Marketing',
      ),
      teacherId: 2,
      reviewedBy: const SubStudentModel(
        erp: '15030',
        firstName: 'Rafay',
        lastName: 'Siddiqui',
        profilePictureUrl:
            'https://media-exp1.licdn.com/dms/image/C4E03AQHGbNXC5h3ftQ/profile-displayphoto-shrink_200_200/0/1623367978043?e=1657756800&v=beta&t=i96M89rS4ZdeJRq5ee4K3M-24J8Q2om1mi96gDFVJko',
        programId: 3,
        graduationYear: 2022,
      ),
    ),
    TeacherReviewModel(
      reviewId: 2,
      learning: 3,
      grading: 4,
      attendance: 3,
      difficulty: 5,
      overallRating: 3.8,
      comment: 'Overall amazing teacher. Worth it!',
      reviewedAt: DateTime.parse('2021-11-22 21:20:40'),
      subject: const SubjectModel(
        subjectCode: 'MKT201',
        subject: 'Principles Of Marketing',
      ),
      teacherId: 4,
      reviewedBy: const SubStudentModel(
        erp: '17855',
        firstName: 'Rafay',
        lastName: 'Saleem',
        profilePictureUrl:
            'https://avatars.githubusercontent.com/u/62943972?v=4',
        programId: 1,
        graduationYear: 2022,
      ),
    ),
    TeacherReviewModel(
      reviewId: 4,
      learning: 3,
      grading: 4,
      attendance: 4,
      difficulty: 2,
      overallRating: 3.3,
      comment: 'Not worth it. Poor experience',
      reviewedAt: DateTime.parse('2021-08-14 18:35:43'),
      subject: const SubjectModel(
        subjectCode: 'MKT201',
        subject: 'Principles Of Marketing',
      ),
      teacherId: 4,
      reviewedBy: const SubStudentModel(
        erp: '15030',
        firstName: 'Rafay',
        lastName: 'Siddiqui',
        profilePictureUrl:
            'https://media-exp1.licdn.com/dms/image/C4E03AQHGbNXC5h3ftQ/profile-displayphoto-shrink_200_200/0/1623367978043?e=1657756800&v=beta&t=i96M89rS4ZdeJRq5ee4K3M-24J8Q2om1mi96gDFVJko',
        programId: 3,
        graduationYear: 2022,
      ),
    ),
    TeacherReviewModel(
      reviewId: 5,
      learning: 3,
      grading: 4,
      attendance: 3,
      difficulty: 5,
      overallRating: 3.8,
      comment: 'Overall amazing teacher. Worth it!',
      reviewedAt: DateTime.parse('2021-11-22 21:20:40'),
      subject: const SubjectModel(
        subjectCode: 'MKT201',
        subject: 'Principles Of Marketing',
      ),
      teacherId: 4,
      reviewedBy: const SubStudentModel(
        erp: '17855',
        firstName: 'Rafay',
        lastName: 'Saleem',
        profilePictureUrl:
            'https://avatars.githubusercontent.com/u/62943972?v=4',
        programId: 1,
        graduationYear: 2022,
      ),
    ),
    TeacherReviewModel(
      reviewId: 6,
      learning: 3,
      grading: 4,
      attendance: 4,
      difficulty: 2,
      overallRating: 3.3,
      comment: 'Not worth it. Poor experience',
      reviewedAt: DateTime.parse('2021-08-14 18:35:43'),
      subject: const SubjectModel(
        subjectCode: 'MKT201',
        subject: 'Principles Of Marketing',
      ),
      teacherId: 4,
      reviewedBy: const SubStudentModel(
        erp: '15030',
        firstName: 'Rafay',
        lastName: 'Siddiqui',
        profilePictureUrl:
            'https://media-exp1.licdn.com/dms/image/C4E03AQHGbNXC5h3ftQ/profile-displayphoto-shrink_200_200/0/1623367978043?e=1657756800&v=beta&t=i96M89rS4ZdeJRq5ee4K3M-24J8Q2om1mi96gDFVJko',
        programId: 3,
        graduationYear: 2022,
      ),
    ),
    TeacherReviewModel(
      reviewId: 7,
      learning: 3,
      grading: 4,
      attendance: 3,
      difficulty: 5,
      overallRating: 3.8,
      comment: 'Overall amazing teacher. Worth it!',
      reviewedAt: DateTime.parse('2021-11-22 21:20:40'),
      subject: const SubjectModel(
        subjectCode: 'MKT201',
        subject: 'Principles Of Marketing',
      ),
      teacherId: 1,
      reviewedBy: const SubStudentModel(
        erp: '17855',
        firstName: 'Rafay',
        lastName: 'Saleem',
        profilePictureUrl:
            'https://avatars.githubusercontent.com/u/62943972?v=4',
        programId: 1,
        graduationYear: 2022,
      ),
    ),
    TeacherReviewModel(
      reviewId: 8,
      learning: 3,
      grading: 4,
      attendance: 4,
      difficulty: 2,
      overallRating: 3.3,
      comment: 'Not worth it. Poor experience',
      reviewedAt: DateTime.parse('2021-08-14 18:35:43'),
      subject: const SubjectModel(
        subjectCode: 'MKT201',
        subject: 'Principles Of Marketing',
      ),
      teacherId: 1,
      reviewedBy: const SubStudentModel(
        erp: '15030',
        firstName: 'Rafay',
        lastName: 'Siddiqui',
        profilePictureUrl:
            'https://media-exp1.licdn.com/dms/image/C4E03AQHGbNXC5h3ftQ/profile-displayphoto-shrink_200_200/0/1623367978043?e=1657756800&v=beta&t=i96M89rS4ZdeJRq5ee4K3M-24J8Q2om1mi96gDFVJko',
        programId: 3,
        graduationYear: 2022,
      ),
    ),
    TeacherReviewModel(
      reviewId: 10,
      learning: 4,
      grading: 5,
      attendance: 5,
      difficulty: 5,
      overallRating: 4.7,
      comment: 'Very calm and understanding teacher :)',
      reviewedAt: DateTime.parse('2022-05-25 01:20:40'),
      subject: const SubjectModel(
        subjectCode: 'CS101',
        subject: 'Database Systems',
      ),
      teacherId: 3,
      reviewedBy: const SubStudentModel(
        erp: '17855',
        firstName: 'Rafay',
        lastName: 'Saleem',
        profilePictureUrl:
            'https://avatars.githubusercontent.com/u/62943972?v=4',
        programId: 1,
        graduationYear: 2022,
      ),
    ),
    TeacherReviewModel(
      reviewId: 11,
      learning: 2,
      grading: 5,
      attendance: 5,
      difficulty: 5,
      overallRating: 3.5,
      comment: 'No learning but chillings',
      reviewedAt: DateTime.parse('2021-08-14 18:35:43'),
      subject: const SubjectModel(
        subjectCode: 'CS100',
        subject: 'Object Oriented Programming',
      ),
      teacherId: 3,
      reviewedBy: const SubStudentModel(
        erp: '15030',
        firstName: 'Rafay',
        lastName: 'Siddiqui',
        profilePictureUrl:
            'https://media-exp1.licdn.com/dms/image/C4E03AQHGbNXC5h3ftQ/profile-displayphoto-shrink_200_200/0/1623367978043?e=1657756800&v=beta&t=i96M89rS4ZdeJRq5ee4K3M-24J8Q2om1mi96gDFVJko',
        programId: 3,
        graduationYear: 2022,
      ),
    ),
    TeacherReviewModel(
      reviewId: 12,
      learning: 5,
      grading: 5,
      attendance: 5,
      difficulty: 5,
      overallRating: 5,
      comment: 'Overall amazing teacher. Easy A grade. Worth it!',
      reviewedAt: DateTime.parse('2022-05-01 09:20:40'),
      subject: const SubjectModel(
        subjectCode: 'CS105',
        subject: 'Data Structures',
      ),
      teacherId: 3,
      reviewedBy: const SubStudentModel(
        erp: '17855',
        firstName: 'Rafay',
        lastName: 'Saleem',
        profilePictureUrl:
            'https://avatars.githubusercontent.com/u/62943972?v=4',
        programId: 1,
        graduationYear: 2022,
      ),
    ),
    TeacherReviewModel(
      reviewId: 13,
      learning: 3,
      grading: 5,
      attendance: 4,
      difficulty: 5,
      overallRating: 4.6,
      comment: 'Brilliant Course.',
      reviewedAt: DateTime.parse('2020-02-19 15:28:59'),
      subject: const SubjectModel(
        subjectCode: 'CS103',
        subject: 'Algorithms',
      ),
      teacherId: 3,
      reviewedBy: const SubStudentModel(
        erp: '15030',
        firstName: 'Rafay',
        lastName: 'Siddiqui',
        profilePictureUrl:
            'https://media-exp1.licdn.com/dms/image/C4E03AQHGbNXC5h3ftQ/profile-displayphoto-shrink_200_200/0/1623367978043?e=1657756800&v=beta&t=i96M89rS4ZdeJRq5ee4K3M-24J8Q2om1mi96gDFVJko',
        programId: 3,
        graduationYear: 2022,
      ),
    ),
  ];

  List<TeacherReviewModel> getAllTeacherReviews(int? teacherId) {
    if (teacherId == null) return _teacherReviews;
    return _teacherReviews.where((e) => e.teacherId == teacherId).toList();
  }

  TeacherReviewModel getTeacherReviewById(int reviewId) {
    return _teacherReviews.firstWhere((e) => e.reviewId == reviewId);
  }
}
