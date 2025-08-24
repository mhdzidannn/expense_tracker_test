sealed class RepoResult<T> {
  const RepoResult();
}

class RepoSuccess<T> extends RepoResult<T> {
  final T data;
  const RepoSuccess(this.data);
}

class RepoFailure<T> extends RepoResult<T> {
  final String message;
  const RepoFailure(this.message);
}
