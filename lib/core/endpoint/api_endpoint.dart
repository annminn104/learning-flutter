import 'package:flutter/material.dart';
import '../../config/config.dart';
import '../enums/api_enum.dart';

/// The `ApiEndpoint` class is immutable.
@immutable
class ApiEndpoint {
  const ApiEndpoint._();

  /// The base url of our REST API, to which all the requests will be sent.
  /// It is supplied at the time of building the apk or running the app:
  /// ```
  /// flutter build apk --debug --dart-define=BASE_URL=www.some_url.com
  /// ```
  /// OR
  /// ```
  /// flutter run --dart-define=BASE_URL=www.some_url.com
  /// ```
  static const baseUrl = Config.baseUrl;

  /// Returns the path for an authentication [endpoint].
  static String auth(AuthEndpoint endpoint) {
    const path = '/auth';
    switch (endpoint) {
      case AuthEndpoint.REGISTER:
        return '$path/register';
      case AuthEndpoint.LOGIN:
        return '$path/login';
      case AuthEndpoint.REFRESH_TOKEN:
        return '$path/refresh-token';
      case AuthEndpoint.CHANGE_PASSWORD:
        return '$path/change-password';
      case AuthEndpoint.FORGOT_PW_SEND_OTP:
        return '$path/forgot/send-otp';
      case AuthEndpoint.FORGOT_PW_VERIFY_OTP:
        return '$path/forgot/verify-otp';
      case AuthEndpoint.FORGOT_PW_RESET_PASSWORD:
        return '$path/forgot/reset-password';
    }
  }

  /// Returns the path for a student [endpoint].
  ///
  /// Specify student [erp] to get the path for a specific student.
  ///
  /// Specify secondary [extendedResourceId] to get the path for a specific secondary resource.
  static String students(StudentEndpoint endpoint,
      {String? erp, int? extendedResourceId}) {
    const path = '/students';
    switch (endpoint) {
      case StudentEndpoint.BASE:
        return path;
      case StudentEndpoint.BY_ERP:
        {
          assert(erp != null, 'studentErp is required for BY_ERP endpoint');
          return '$path/$erp';
        }
      case StudentEndpoint.ORGANIZED_ACTIVITIES:
        {
          assert(erp != null,
              'studentErp is required for ORGANIZED_ACTIVITIES endpoint');
          return '$path/$erp/organized-activities';
        }
      case StudentEndpoint.ATTENDED_ACTIVITIES:
        {
          assert(erp != null,
              'studentErp is required for ATTENDED_ACTIVITIES endpoint');
          return '$path/$erp/attended-activities';
        }
      case StudentEndpoint.SAVED_ACTIVITIES_BASE:
        {
          assert(erp != null,
              'studentErp is required for SAVED_ACTIVITIES_BASE endpoint');
          return '$path/$erp/saved-activities';
        }
      case StudentEndpoint.SAVED_ACTIVITIES_BY_ID:
        {
          assert(erp != null,
              'studentErp is required for SAVED_ACTIVITIES_BY_ID endpoint');
          assert(extendedResourceId != null,
              'extendedResourceId is required for SAVED_ACTIVITIES_BY_ID endpoint');
          return '$path/$erp/saved-activities/$extendedResourceId';
        }
    }
  }

  /// Returns the path for an activity [endpoint].
  ///
  /// Specify activity [id] to get the path for a specific activity.
  ///
  /// Specify secondary [extendedResourceId] to get the path for a specific secondary resource.
  static String activities(ActivityEndpoint endpoint,
      {int? id, int? extendedResourceId}) {
    const path = '/activities';
    switch (endpoint) {
      case ActivityEndpoint.BASE:
        return path;
      case ActivityEndpoint.BY_ID:
        {
          assert(id != null, 'activityId is required for BY_ID endpoint');
          return '$path/$id';
        }
      case ActivityEndpoint.ATTENDEES_BASE:
        {
          assert(
              id != null, 'activityId is required for ATTENDEES_BASE endpoint');
          return '$path/$id/attendees';
        }
      case ActivityEndpoint.ATTENDEES_BY_ERP:
        {
          assert(id != null,
              'activityId is required for ATTENDEES_BY_ERP endpoint');
          assert(extendedResourceId != null,
              'extendedResourceId is required for ATTENDEES_BY_ERP endpoint');
          return '$path/$id/attendees/$extendedResourceId';
        }
    }
  }

  /// Returns the path for a post [endpoint].
  ///
  /// Specify post [id] to get the path for a specific post.
  ///
  /// Specify secondary [extendedResourceId] to get the path for a specific secondary resource.
  static String posts(PostEndpoint endpoint,
      {int? id, int? extendedResourceId}) {
    const path = '/posts';
    switch (endpoint) {
      case PostEndpoint.BASE:
        return path;
      case PostEndpoint.BY_ID:
        {
          assert(id != null, 'postId is required for BY_ID endpoint');
          return '$path/$id';
        }
      case PostEndpoint.REACTIONS_BASE:
        {
          assert(id != null, 'postId is required for REACTIONS_BASE endpoint');
          return '$path/$id/reactions';
        }
      case PostEndpoint.REACTIONS_BY_ERP:
        {
          assert(
              id != null, 'postId is required for REACTIONS_BY_ERP endpoint');
          assert(extendedResourceId != null,
              'extendedResourceId is required for REACTIONS_BY_ERP endpoint');
          return '$path/$id/reactions/$extendedResourceId';
        }
    }
  }

  /// Returns the path for a student connection [endpoint].
  ///
  /// Specify student connection [id] to get the path for a specific student connection.
  static String studentConnections(StudentConnectionEndpoint endpoint,
      {int? id}) {
    const path = '/student-connections';
    switch (endpoint) {
      case StudentConnectionEndpoint.BASE:
        return path;
      case StudentConnectionEndpoint.REQUESTS:
        return '$path/requests';
      case StudentConnectionEndpoint.BY_ID:
        {
          assert(
              id != null, 'studentConnectionId is required for BY_ID endpoint');
          return '$path/$id';
        }
    }
  }

  /// Returns the path for a hangout request [endpoint].
  ///
  /// Specify hangout request [id] to get the path for a specific hangout request.
  static String hangoutRequests(HangoutRequestEndpoint endpoint, {int? id}) {
    const path = '/hangout-requests';
    switch (endpoint) {
      case HangoutRequestEndpoint.BASE:
        return path;
      case HangoutRequestEndpoint.BY_ID:
        {
          assert(id != null, 'hangoutRequestId is required for BY_ID endpoint');
          return '$path/$id';
        }
    }
  }

  /// Returns the path for hobbies [endpoint].
  static String hobbies(HobbyEndpoint endpoint) {
    const path = '/hobbies';
    switch (endpoint) {
      case HobbyEndpoint.BASE:
        return path;
    }
  }

  /// Returns the path for interests [endpoint].
  static String interests(InterestEndpoint endpoint) {
    const path = '/interests';
    switch (endpoint) {
      case InterestEndpoint.BASE:
        return path;
    }
  }

  /// Returns the path for campuses [endpoint].
  static String campuses(CampusEndpoint endpoint) {
    const path = '/campuses';
    switch (endpoint) {
      case CampusEndpoint.BASE:
        return path;
    }
  }

  /// Returns the path for campus spots [endpoint].
  static String campusSpots(CampusSpotEndpoint endpoint) {
    const path = '/campus-spots';
    switch (endpoint) {
      case CampusSpotEndpoint.BASE:
        return path;
    }
  }

  /// Returns the path for programs [endpoint].
  static String programs(ProgramEndpoint endpoint) {
    const path = '/programs';
    switch (endpoint) {
      case ProgramEndpoint.BASE:
        return path;
    }
  }

  /// Returns the path for student statuses [endpoint].
  static String studentStatuses(StudentStatusEndpoint endpoint) {
    const path = '/student-statuses';
    switch (endpoint) {
      case StudentStatusEndpoint.BASE:
        return path;
    }
  }

  /// Returns the path for activity statuses [endpoint].
  static String activityStatuses(ActivityStatusEndpoint endpoint) {
    const path = '/activity-statuses';
    switch (endpoint) {
      case ActivityStatusEndpoint.BASE:
        return path;
    }
  }

  /// Returns the path for activity types [endpoint].
  static String activityTypes(ActivityTypeEndpoint endpoint) {
    const path = '/activity-types';
    switch (endpoint) {
      case ActivityTypeEndpoint.BASE:
        return path;
    }
  }

  /// Returns the path for reaction types [endpoint].
  static String reactionTypes(ReactionTypeEndpoint endpoint) {
    const path = '/reaction-types';
    switch (endpoint) {
      case ReactionTypeEndpoint.BASE:
        return path;
    }
  }

  /// Returns the path for classrooms [endpoint].
  static String classrooms(ClassroomEndpoint endpoint) {
    const path = '/classrooms';
    switch (endpoint) {
      case ClassroomEndpoint.BASE:
        return path;
    }
  }

  /// Returns the path for timeslots [endpoint].
  static String timeslots(TimeslotEndpoint endpoint) {
    const path = '/timeslots';
    switch (endpoint) {
      case TimeslotEndpoint.BASE:
        return path;
    }
  }

  /// Returns the path for subjects [endpoint].
  static String subjects(SubjectEndpoint endpoint) {
    const path = '/subjects';
    switch (endpoint) {
      case SubjectEndpoint.BASE:
        return path;
    }
  }

  /// Returns the path for terms [endpoint].
  static String terms(TermEndpoint endpoint) {
    const path = '/terms';
    switch (endpoint) {
      case TermEndpoint.BASE:
        return path;
    }
  }

  /// Returns the path for teachers [endpoint].
  static String teachers(TeacherEndpoint endpoint) {
    const path = '/teachers';
    switch (endpoint) {
      case TeacherEndpoint.BASE:
        return path;
    }
  }

  /// Returns the path for a teacher review [endpoint].
  ///
  /// Specify teacher review [id] to get the path for a specific teacher review.
  static String teacherReviews(TeacherReviewEndpoint endpoint, {int? id}) {
    const path = '/teacher-reviews';
    switch (endpoint) {
      case TeacherReviewEndpoint.BASE:
        return path;
      case TeacherReviewEndpoint.BY_ID:
        {
          assert(id != null, 'teacherReviewId is required for BY_ID endpoint');
          return '$path/$id';
        }
    }
  }

  /// Returns the path for a class [endpoint].
  ///
  /// Specify term [termId] and class [classErp] to get the path for a specific class.
  static String classes(ClassEndpoint endpoint, {int? termId, int? classErp}) {
    const path = '/classes';
    switch (endpoint) {
      case ClassEndpoint.BASE:
        return path;
      case ClassEndpoint.BY_TERM_AND_ERP:
        {
          assert(termId != null,
              'termId is required for BY_TERM_AND_ERP endpoint');
          assert(classErp != null,
              'classErp is required for BY_TERM_AND_ERP endpoint');
          return '$path/$termId/$classErp';
        }
    }
  }

  /// Returns the path for a timetable [endpoint].
  ///
  /// Specify timetable [id] to get the path for a specific timetable.
  static String timetables(TimetableEndpoint endpoint, {int? id}) {
    const path = '/timetables';
    switch (endpoint) {
      case TimetableEndpoint.BASE:
        return path;
      case TimetableEndpoint.GENERATE:
        return '$path/generate';
      case TimetableEndpoint.BY_ID:
        {
          assert(id != null, 'timetableId is required for BY_ID endpoint');
          return '$path/$id';
        }
      case TimetableEndpoint.CLASSES_BASE:
        {
          assert(
              id != null, 'timetableId is required for CLASSES_BASE endpoint');
          return '$path/$id/classes';
        }
    }
  }
}
