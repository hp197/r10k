class custom::base()
{
  include ::custom::base::ntp
  include ::custom::base::sshserver
  include ::custom::base::locale
  include ::custom::base::stdpackages
  include ::custom::base::environment_ps1
}
