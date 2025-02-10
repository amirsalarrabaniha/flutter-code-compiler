abstract class UseCase<T, P> {
  Future<T> call(P param);
}

class NoParams {}

class NoResponse extends NoEntity {}

class NoEntity {}
