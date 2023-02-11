#
# The PAM configuration file for the Shadow `chsh' service
#

# This will not allow a user to change their shell unless
# their current one is listed in /etc/shells. This keeps
# accounts with special shells from changing them.
auth       required   pam_shells.so

# The standard Unix authentication modules, used with
# NIS (man nsswitch) as well as normal /etc/passwd and
# /etc/shadow entries.
auth       required   pam_unix.so nullok
account    required   pam_unix.so
session    required   pam_unix.so

