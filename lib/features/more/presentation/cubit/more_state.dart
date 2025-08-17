class MoreState {
  final bool notificationsEnabled;

  MoreState({
    this.notificationsEnabled = false,
  });

  MoreState copyWith({
    bool? notificationsEnabled,
  }) {
    return MoreState(
      notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
    );
  }
}

