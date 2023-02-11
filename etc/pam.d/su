#
# The PAM configuration file for the Shadow `su' service
#

# Uncomment this to force users to be a member of group root
# before than can use `su'. You can also add "group=foo" to
# to the end of this line if you want to use a group other
# than the default "root".
# (Replaces the `SU_WHEEL_ONLY' option from login.defs)
# auth       required   pam_wheel.so

# Uncomment this if you want wheel members to be able to
# su without a password.
# auth       sufficient pam_wheel.so trust

# Uncomment this if you want members of a specific group to not
# be allowed to use su at all.
# auth       required   pam_wheel.so deny group=nosu

# This allows root to su without passwords (normal operation)
auth       sufficient pam_rootok.so

# Uncomment and edit /etc/security/time.conf if you need to set
# time restrainst on su usage.
# (Replaces the `PORTTIME_CHECKS_ENAB' option from login.defs
# as well as /etc/porttime)
# account    requisite  pam_time.so

# The standard Unix authentication modules, used with
# NIS (man nsswitch) as well as normal /etc/passwd and
# /etc/shadow entries.
auth       required   pam_unix.so
account    required   pam_unix.so
session    required   pam_unix.so

# Sets up user limits, please uncomment and read /etc/security/limits.conf
# to enable this functionality.
# (Replaces the use of /etc/limits in old login)
# session    required   pam_limits.so
