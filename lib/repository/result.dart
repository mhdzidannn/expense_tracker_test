sealed class RepoResult {
  const RepoResult();
}

class RepoSuccess<T> extends RepoResult {
  final T data;
  const RepoSuccess(this.data);
}

class RepoFailure extends RepoResult {
  final String message;
  const RepoFailure(this.message);
}
