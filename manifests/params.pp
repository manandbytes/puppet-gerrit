# Class: gerrit::params
class gerrit::params {
  # Version of gerrit
  $gerrit_version = $::operatingsystem ? {
    default => '2.4.2',
  }
  # Group which gerrit is in
  $gerrit_group = $::operatingsystem ? {
    default => 'gerrit',
  }
  # GroupId of gerrit group
  $gerrit_gid = $::operatingsystem ? {
    default => '515',
  }
  # Username, gerrit runs on
  $gerrit_user = $::operatingsystem ? {
    default => 'gerrit',
  }
  # Home-Directory where gerrit whould be installed
  $gerrit_home = $::operatingsystem ? {
    default => '/opt/gerrit',
  }
  # UserID of created gerrit User
  $gerrit_uid = $::operatingsystem ? {
    default => '515',
  }
  # type of Database storing configs of gerrit ['mysql' / 'pgsql']
  $gerrit_database_type = $::operatingsystem ? {
    default => 'pgsql',
  }
}