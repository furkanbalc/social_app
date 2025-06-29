class ApiResponse<T> {
  ApiResponse.initial(this.message) : status = Status.initial;

  ApiResponse.loading(this.message) : status = Status.loading;

  ApiResponse.completed(this.data) : status = Status.completed;

  ApiResponse.error(this.message) : status = Status.error;

  late Status status;
  late T data;
  dynamic message;
  StackTrace? stackTrace;

  @override
  String toString() {
    return 'Status : $status \n Message : $message \n Data : $data';
  }
}

enum Status { loading, completed, error, initial }
