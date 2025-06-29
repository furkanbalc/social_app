import 'package:social_app/core/api_helper/api_response.dart';

extension ToResponseEvent on ApiResponse<dynamic> {
  void toInitial() {
    status = Status.initial;
  }

  void toLoading() {
    status = Status.initial;
  }

  bool isError() {
    return status == Status.error;
  }

  bool isNotError() {
    return status != Status.error;
  }

  bool isCompleted() {
    return status == Status.completed;
  }

  bool isNotCompleted() {
    return status != Status.completed;
  }

  bool isLoading() {
    return status == Status.loading;
  }

  bool isNotLoading() {
    return status != Status.loading;
  }
}
