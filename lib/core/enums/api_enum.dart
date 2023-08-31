/// A collection of endpoints used for authentication purposes.
enum AuthEndpoint {
  /// An endpoint for registration requests.
  REGISTER,

  /// An endpoint for login requests.
  LOGIN,

  /// An endpoint for token refresh requests.
  REFRESH_TOKEN,

  /// An endpoint for change password requests.
  CHANGE_PASSWORD,

  /// An endpoint for reset password requests.
  FORGOT_PW_RESET_PASSWORD,

  /// An endpoint for forget password otp requests.
  FORGOT_PW_SEND_OTP,

  /// An endpoint for verifying forgot password otp code.
  FORGOT_PW_VERIFY_OTP,
}

/// A collection of endpoints used for students.
enum StudentEndpoint {
  /// An endpoint for students' collection requests.
  BASE,

  /// An endpoint for individual students requests.
  BY_ERP,

  /// An endpoint for a student's organized activities
  ORGANIZED_ACTIVITIES,

  /// An endpoint for a student's saved activities
  SAVED_ACTIVITIES_BASE,

  /// An endpoint for a student's specific saved activity
  SAVED_ACTIVITIES_BY_ID,

  /// An endpoint for a student's attended activities
  ATTENDED_ACTIVITIES,
}

/// A collection of endpoints used for activities.
enum ActivityEndpoint {
  /// An endpoint for activities' collection requests.
  BASE,

  /// An endpoint for individual activity's requests.
  BY_ID,

  /// An endpoint for an activity's attendees
  ATTENDEES_BASE,

  /// An endpoint for an activity's specific attendee
  ATTENDEES_BY_ERP,
}

/// A collection of endpoints used for posts.
enum PostEndpoint {
  /// An endpoint for posts' collection requests.
  BASE,

  /// An endpoint for individual post's requests.
  BY_ID,

  /// An endpoint for a post's reactions
  REACTIONS_BASE,

  /// An endpoint for a post's specific reaction
  REACTIONS_BY_ERP,
}

/// A collection of endpoints used for student connections.
enum StudentConnectionEndpoint {
  /// An endpoint for a student's connections' collection requests.
  BASE,

  /// An endpoint for a student's pending connection requests.
  REQUESTS,

  /// An endpoint for a student's individual connection's requests.
  BY_ID,
}

/// A collection of endpoints used for hangout requests.
enum HangoutRequestEndpoint {
  /// An endpoint for hangout requests' collection requests.
  BASE,

  /// An endpoint for individual hangout request's requests.
  BY_ID,
}

/// A collection of endpoints used for hobbies.
enum HobbyEndpoint {
  /// An endpoint for hobbies' collection requests.
  BASE,
}

/// A collection of endpoints used for interests.
enum InterestEndpoint {
  /// An endpoint for interests' collection requests.
  BASE,
}

/// A collection of endpoints used for campuses.
enum CampusEndpoint {
  /// An endpoint for campuses' collection requests.
  BASE,
}

/// A collection of endpoints used for campus spots.
enum CampusSpotEndpoint {
  /// An endpoint for campus spots' collection requests.
  BASE,
}

/// A collection of endpoints used for programs.
enum ProgramEndpoint {
  /// An endpoint for programs' collection requests.
  BASE,
}

/// A collection of endpoints used for student Types.
enum StudentStatusEndpoint {
  /// An endpoint for student statuses' collection requests.
  BASE,
}

/// A collection of endpoints used for activity statuses.
enum ActivityStatusEndpoint {
  /// An endpoint for activity statuses' collection requests.
  BASE,
}

/// A collection of endpoints used for activity types.
enum ActivityTypeEndpoint {
  /// An endpoint for activity types' collection requests.
  BASE,
}

/// A collection of endpoints used for reaction types.
enum ReactionTypeEndpoint {
  /// An endpoint for reaction types' collection requests.
  BASE,
}

/// A collection of endpoints used for classrooms.
enum ClassroomEndpoint {
  /// An endpoint for classrooms' collection requests.
  BASE,
}

/// A collection of endpoints used for timeslots.
enum TimeslotEndpoint {
  /// An endpoint for timeslots' collection requests.
  BASE,
}

/// A collection of endpoints used for subjects.
enum SubjectEndpoint {
  /// An endpoint for subjects' collection requests.
  BASE,
}

/// A collection of endpoints used for terms.
enum TermEndpoint {
  /// An endpoint for terms' collection requests.
  BASE,
}

/// A collection of endpoints used for teachers.
enum TeacherEndpoint {
  /// An endpoint for teachers' collection requests.
  BASE,
}

/// A collection of endpoints used for teacher reviews.
enum TeacherReviewEndpoint {
  /// An endpoint for teacher reviews' collection requests.
  BASE,

  /// An endpoint for individual teacher review's requests.
  BY_ID,
}

/// A collection of endpoints used for classes.
enum ClassEndpoint {
  /// An endpoint for classes' collection requests.
  BASE,

  /// An endpoint for individual class's requests.
  BY_TERM_AND_ERP,
}

/// A collection of endpoints used for timetables.
enum TimetableEndpoint {
  /// An endpoint for timetables' collection requests.
  BASE,

  /// An endpoint for timetable generation requests.
  GENERATE,

  /// An endpoint for individual timetable's requests.
  BY_ID,

  /// An endpoint for a timetable's classes
  CLASSES_BASE,
}
