// // import 'package:docdoc/core/networking/api_error_handler.dart';
// // import 'package:docdoc/core/networking/api_result.dart';
// // import 'package:docdoc/core/networking/api_service.dart';
// // import 'package:docdoc/features/sign_up/data/models/sign_up_request_body.dart';
// // import 'package:docdoc/features/sign_up/data/models/sign_up_response.dart';

// import 'package:home_ease/core/networking/firebase_result.dart';
// import 'package:home_ease/core/networking/firebase_service.dart';
// import 'package:firebase_auth/firebase_auth.dart';



// class RegisterRepo {

//     final FirebaseService _firebaseService;


//   RegisterRepo(this._firebaseService);

//   Future<FirebaseResult<User?>> registerPhoneNumber(
//       String phoneNumber) 
//       async {
//     try {
//       final response = await _firebaseService.registerPhoneNumber(phone:phoneNumber );

//       return FirebaseResult.success(response);

//     } catch (error) {
//       return FirebaseResult.failure(error.toString());
//     }
//   }
// }