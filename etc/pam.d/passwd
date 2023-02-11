#
# The PAM configuration file for the Shadow `passwd' service
#

# The standard Unix authentication modules, used with NIS (man nsswitch) as
# well as normal /etc/passwd and /etc/shadow entries. For the login service,
# this is only used when the password expires and must be changed, so make
# sure this one and the one in /etc/pam.d/login are the same. The "nullok"
# option allows users to change an empty password, else empty passwords are
# treated as locked accounts.
#
# (Add `md5' after the module name to enable MD5 passwords the same way that
# `MD5_CRYPT_ENAB' would do under login.defs).
#
# The "obscure" option replaces the old `OBSCURE_CHECKS_ENAB' option in
# login.defs. Also the "min" and "max" options enforce the length of the
# new password.

password   required   pam_unix.so nullok obscure min=4 max=8

# Alternate strength checking for password. Note that this
# requires the libpam-cracklib package to be installed.
# You will need to comment out the password line above and
# uncomment the next two in order to use this.
# (Replaces the `OBSCURE_CHECKS_ENAB', `CRACKLIB_DICTPATH')
#
# password required       pam_cracklib.so retry=3 minlen=6 difok=3
# password required       pam_unix.so use_authtok nullok md5
