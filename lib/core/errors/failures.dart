abstract class Failure {}

// General failures
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class NetworkFailure extends Failure {}

class ApiFailure extends Failure {
  String msg;
  ApiFailure(this.msg);
}
