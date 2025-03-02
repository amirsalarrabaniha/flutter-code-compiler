abstract class BaseStatus {}

class BaseSuccess<T> extends BaseStatus {
  T entity;

  BaseSuccess(this.entity);
}

class BaseNoAction extends BaseStatus {}

class BaseEmpty extends BaseStatus {}

class BaseLoading extends BaseStatus {}

class BaseLoadingMore extends BaseStatus {}

class BaseError extends BaseStatus {
  String? error;

  BaseError(this.error);
}
