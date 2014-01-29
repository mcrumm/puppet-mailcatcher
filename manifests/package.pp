# class mailcatcher::package
#
class mailcatcher::package {
  ensure_packages( $mailcatcher::params::packages )

  package { 'mailcatcher':
    ensure   => present,
    provider => 'gem',
    require  => Package[$mailcatcher::params::packages]
  }
}
