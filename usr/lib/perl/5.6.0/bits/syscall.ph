require '_h2ph_pre.ph';

unless(defined(&_SYSCALL_H)) {
    die("Never use <bits/syscall.h> directly; include <sys/syscall.h> instead.");
}
unless(defined(&SYS_stime)) {
    sub SYS_stime () {	 &__NR_stime;}
}
unless(defined(&SYS_getresuid)) {
    sub SYS_getresuid () {	 &__NR_getresuid;}
}
unless(defined(&SYS_rt_sigqueueinfo)) {
    sub SYS_rt_sigqueueinfo () {	 &__NR_rt_sigqueueinfo;}
}
unless(defined(&SYS_mmap2)) {
    sub SYS_mmap2 () {	 &__NR_mmap2;}
}
unless(defined(&SYS_fsync)) {
    sub SYS_fsync () {	 &__NR_fsync;}
}
unless(defined(&SYS_reboot)) {
    sub SYS_reboot () {	 &__NR_reboot;}
}
unless(defined(&SYS_ustat)) {
    sub SYS_ustat () {	 &__NR_ustat;}
}
unless(defined(&SYS_sched_get_priority_max)) {
    sub SYS_sched_get_priority_max () {	 &__NR_sched_get_priority_max;}
}
unless(defined(&SYS_sethostname)) {
    sub SYS_sethostname () {	 &__NR_sethostname;}
}
unless(defined(&SYS_access)) {
    sub SYS_access () {	 &__NR_access;}
}
unless(defined(&SYS_setresuid)) {
    sub SYS_setresuid () {	 &__NR_setresuid;}
}
unless(defined(&SYS_acct)) {
    sub SYS_acct () {	 &__NR_acct;}
}
unless(defined(&SYS_getrusage)) {
    sub SYS_getrusage () {	 &__NR_getrusage;}
}
unless(defined(&SYS_olduname)) {
    sub SYS_olduname () {	 &__NR_olduname;}
}
unless(defined(&SYS_init_module)) {
    sub SYS_init_module () {	 &__NR_init_module;}
}
unless(defined(&SYS_mlockall)) {
    sub SYS_mlockall () {	 &__NR_mlockall;}
}
unless(defined(&SYS_rt_sigreturn)) {
    sub SYS_rt_sigreturn () {	 &__NR_rt_sigreturn;}
}
unless(defined(&SYS_pipe)) {
    sub SYS_pipe () {	 &__NR_pipe;}
}
unless(defined(&SYS_getcwd)) {
    sub SYS_getcwd () {	 &__NR_getcwd;}
}
unless(defined(&SYS_sync)) {
    sub SYS_sync () {	 &__NR_sync;}
}
unless(defined(&SYS_setpgid)) {
    sub SYS_setpgid () {	 &__NR_setpgid;}
}
unless(defined(&SYS_open)) {
    sub SYS_open () {	 &__NR_open;}
}
unless(defined(&SYS_getpgid)) {
    sub SYS_getpgid () {	 &__NR_getpgid;}
}
unless(defined(&SYS_geteuid32)) {
    sub SYS_geteuid32 () {	 &__NR_geteuid32;}
}
unless(defined(&SYS_ftruncate)) {
    sub SYS_ftruncate () {	 &__NR_ftruncate;}
}
unless(defined(&SYS_get_kernel_syms)) {
    sub SYS_get_kernel_syms () {	 &__NR_get_kernel_syms;}
}
unless(defined(&SYS_getpid)) {
    sub SYS_getpid () {	 &__NR_getpid;}
}
unless(defined(&SYS_exit)) {
    sub SYS_exit () {	 &__NR_exit;}
}
unless(defined(&SYS_link)) {
    sub SYS_link () {	 &__NR_link;}
}
unless(defined(&SYS_getdents64)) {
    sub SYS_getdents64 () {	 &__NR_getdents64;}
}
unless(defined(&SYS_settimeofday)) {
    sub SYS_settimeofday () {	 &__NR_settimeofday;}
}
unless(defined(&SYS_dup)) {
    sub SYS_dup () {	 &__NR_dup;}
}
unless(defined(&SYS_break)) {
    sub SYS_break () {	 &__NR_break;}
}
unless(defined(&SYS_gettimeofday)) {
    sub SYS_gettimeofday () {	 &__NR_gettimeofday;}
}
unless(defined(&SYS_geteuid)) {
    sub SYS_geteuid () {	 &__NR_geteuid;}
}
unless(defined(&SYS_idle)) {
    sub SYS_idle () {	 &__NR_idle;}
}
unless(defined(&SYS_sched_get_priority_min)) {
    sub SYS_sched_get_priority_min () {	 &__NR_sched_get_priority_min;}
}
unless(defined(&SYS_fcntl64)) {
    sub SYS_fcntl64 () {	 &__NR_fcntl64;}
}
unless(defined(&SYS_pause)) {
    sub SYS_pause () {	 &__NR_pause;}
}
unless(defined(&SYS_setuid)) {
    sub SYS_setuid () {	 &__NR_setuid;}
}
unless(defined(&SYS_syslog)) {
    sub SYS_syslog () {	 &__NR_syslog;}
}
unless(defined(&SYS_vfork)) {
    sub SYS_vfork () {	 &__NR_vfork;}
}
unless(defined(&SYS_setfsuid)) {
    sub SYS_setfsuid () {	 &__NR_setfsuid;}
}
unless(defined(&SYS_setfsuid32)) {
    sub SYS_setfsuid32 () {	 &__NR_setfsuid32;}
}
unless(defined(&SYS_munlock)) {
    sub SYS_munlock () {	 &__NR_munlock;}
}
unless(defined(&SYS_setreuid)) {
    sub SYS_setreuid () {	 &__NR_setreuid;}
}
unless(defined(&SYS_wait4)) {
    sub SYS_wait4 () {	 &__NR_wait4;}
}
unless(defined(&SYS_lstat)) {
    sub SYS_lstat () {	 &__NR_lstat;}
}
unless(defined(&SYS_msync)) {
    sub SYS_msync () {	 &__NR_msync;}
}
unless(defined(&SYS_nanosleep)) {
    sub SYS_nanosleep () {	 &__NR_nanosleep;}
}
unless(defined(&SYS_chown32)) {
    sub SYS_chown32 () {	 &__NR_chown32;}
}
unless(defined(&SYS_madvise)) {
    sub SYS_madvise () {	 &__NR_madvise;}
}
unless(defined(&SYS_getgid)) {
    sub SYS_getgid () {	 &__NR_getgid;}
}
unless(defined(&SYS_mkdir)) {
    sub SYS_mkdir () {	 &__NR_mkdir;}
}
unless(defined(&SYS_getpgrp)) {
    sub SYS_getpgrp () {	 &__NR_getpgrp;}
}
unless(defined(&SYS_nfsservctl)) {
    sub SYS_nfsservctl () {	 &__NR_nfsservctl;}
}
unless(defined(&SYS_swapon)) {
    sub SYS_swapon () {	 &__NR_swapon;}
}
unless(defined(&SYS_setregid32)) {
    sub SYS_setregid32 () {	 &__NR_setregid32;}
}
unless(defined(&SYS_adjtimex)) {
    sub SYS_adjtimex () {	 &__NR_adjtimex;}
}
unless(defined(&SYS_uname)) {
    sub SYS_uname () {	 &__NR_uname;}
}
unless(defined(&SYS_times)) {
    sub SYS_times () {	 &__NR_times;}
}
unless(defined(&SYS_sysfs)) {
    sub SYS_sysfs () {	 &__NR_sysfs;}
}
unless(defined(&SYS_getgroups32)) {
    sub SYS_getgroups32 () {	 &__NR_getgroups32;}
}
unless(defined(&SYS_iopl)) {
    sub SYS_iopl () {	 &__NR_iopl;}
}
unless(defined(&SYS_rt_sigtimedwait)) {
    sub SYS_rt_sigtimedwait () {	 &__NR_rt_sigtimedwait;}
}
unless(defined(&SYS_oldlstat)) {
    sub SYS_oldlstat () {	 &__NR_oldlstat;}
}
unless(defined(&SYS_setregid)) {
    sub SYS_setregid () {	 &__NR_setregid;}
}
unless(defined(&SYS_mknod)) {
    sub SYS_mknod () {	 &__NR_mknod;}
}
unless(defined(&SYS_mremap)) {
    sub SYS_mremap () {	 &__NR_mremap;}
}
unless(defined(&SYS_lstat64)) {
    sub SYS_lstat64 () {	 &__NR_lstat64;}
}
unless(defined(&SYS_sched_setscheduler)) {
    sub SYS_sched_setscheduler () {	 &__NR_sched_setscheduler;}
}
unless(defined(&SYS_fstat)) {
    sub SYS_fstat () {	 &__NR_fstat;}
}
unless(defined(&SYS_setgroups32)) {
    sub SYS_setgroups32 () {	 &__NR_setgroups32;}
}
unless(defined(&SYS_getpriority)) {
    sub SYS_getpriority () {	 &__NR_getpriority;}
}
unless(defined(&SYS_quotactl)) {
    sub SYS_quotactl () {	 &__NR_quotactl;}
}
unless(defined(&SYS_fcntl)) {
    sub SYS_fcntl () {	 &__NR_fcntl;}
}
unless(defined(&SYS_stat)) {
    sub SYS_stat () {	 &__NR_stat;}
}
unless(defined(&SYS_signal)) {
    sub SYS_signal () {	 &__NR_signal;}
}
unless(defined(&SYS_setresuid32)) {
    sub SYS_setresuid32 () {	 &__NR_setresuid32;}
}
unless(defined(&SYS_getresgid32)) {
    sub SYS_getresgid32 () {	 &__NR_getresgid32;}
}
unless(defined(&SYS_ssetmask)) {
    sub SYS_ssetmask () {	 &__NR_ssetmask;}
}
unless(defined(&SYS_sysinfo)) {
    sub SYS_sysinfo () {	 &__NR_sysinfo;}
}
unless(defined(&SYS_sgetmask)) {
    sub SYS_sgetmask () {	 &__NR_sgetmask;}
}
unless(defined(&SYS_setpriority)) {
    sub SYS_setpriority () {	 &__NR_setpriority;}
}
unless(defined(&SYS_rt_sigprocmask)) {
    sub SYS_rt_sigprocmask () {	 &__NR_rt_sigprocmask;}
}
unless(defined(&SYS_sendfile)) {
    sub SYS_sendfile () {	 &__NR_sendfile;}
}
unless(defined(&SYS_getsid)) {
    sub SYS_getsid () {	 &__NR_getsid;}
}
unless(defined(&SYS_read)) {
    sub SYS_read () {	 &__NR_read;}
}
unless(defined(&SYS_vhangup)) {
    sub SYS_vhangup () {	 &__NR_vhangup;}
}
unless(defined(&SYS_fstatfs)) {
    sub SYS_fstatfs () {	 &__NR_fstatfs;}
}
unless(defined(&SYS_write)) {
    sub SYS_write () {	 &__NR_write;}
}
unless(defined(&SYS_oldfstat)) {
    sub SYS_oldfstat () {	 &__NR_oldfstat;}
}
unless(defined(&SYS_rename)) {
    sub SYS_rename () {	 &__NR_rename;}
}
unless(defined(&SYS_vm86)) {
    sub SYS_vm86 () {	 &__NR_vm86;}
}
unless(defined(&SYS_dup2)) {
    sub SYS_dup2 () {	 &__NR_dup2;}
}
unless(defined(&SYS_getgid32)) {
    sub SYS_getgid32 () {	 &__NR_getgid32;}
}
unless(defined(&SYS_capget)) {
    sub SYS_capget () {	 &__NR_capget;}
}
unless(defined(&SYS_truncate)) {
    sub SYS_truncate () {	 &__NR_truncate;}
}
unless(defined(&SYS_modify_ldt)) {
    sub SYS_modify_ldt () {	 &__NR_modify_ldt;}
}
unless(defined(&SYS_sigprocmask)) {
    sub SYS_sigprocmask () {	 &__NR_sigprocmask;}
}
unless(defined(&SYS_creat)) {
    sub SYS_creat () {	 &__NR_creat;}
}
unless(defined(&SYS_unlink)) {
    sub SYS_unlink () {	 &__NR_unlink;}
}
unless(defined(&SYS_pwrite)) {
    sub SYS_pwrite () {	 &__NR_pwrite;}
}
unless(defined(&SYS_sched_rr_get_interval)) {
    sub SYS_sched_rr_get_interval () {	 &__NR_sched_rr_get_interval;}
}
unless(defined(&SYS_ptrace)) {
    sub SYS_ptrace () {	 &__NR_ptrace;}
}
unless(defined(&SYS_sigsuspend)) {
    sub SYS_sigsuspend () {	 &__NR_sigsuspend;}
}
unless(defined(&SYS_flock)) {
    sub SYS_flock () {	 &__NR_flock;}
}
unless(defined(&SYS_sched_getparam)) {
    sub SYS_sched_getparam () {	 &__NR_sched_getparam;}
}
unless(defined(&SYS_lock)) {
    sub SYS_lock () {	 &__NR_lock;}
}
unless(defined(&SYS_fchmod)) {
    sub SYS_fchmod () {	 &__NR_fchmod;}
}
unless(defined(&SYS_pread)) {
    sub SYS_pread () {	 &__NR_pread;}
}
unless(defined(&SYS_setuid32)) {
    sub SYS_setuid32 () {	 &__NR_setuid32;}
}
unless(defined(&SYS_ipc)) {
    sub SYS_ipc () {	 &__NR_ipc;}
}
unless(defined(&SYS_readv)) {
    sub SYS_readv () {	 &__NR_readv;}
}
unless(defined(&SYS_vm86old)) {
    sub SYS_vm86old () {	 &__NR_vm86old;}
}
unless(defined(&SYS_fchdir)) {
    sub SYS_fchdir () {	 &__NR_fchdir;}
}
unless(defined(&SYS_rt_sigsuspend)) {
    sub SYS_rt_sigsuspend () {	 &__NR_rt_sigsuspend;}
}
unless(defined(&SYS_sigreturn)) {
    sub SYS_sigreturn () {	 &__NR_sigreturn;}
}
unless(defined(&SYS_statfs)) {
    sub SYS_statfs () {	 &__NR_statfs;}
}
unless(defined(&SYS_setgid32)) {
    sub SYS_setgid32 () {	 &__NR_setgid32;}
}
unless(defined(&SYS_pivot_root)) {
    sub SYS_pivot_root () {	 &__NR_pivot_root;}
}
unless(defined(&SYS_oldstat)) {
    sub SYS_oldstat () {	 &__NR_oldstat;}
}
unless(defined(&SYS_symlink)) {
    sub SYS_symlink () {	 &__NR_symlink;}
}
unless(defined(&SYS_umask)) {
    sub SYS_umask () {	 &__NR_umask;}
}
unless(defined(&SYS_poll)) {
    sub SYS_poll () {	 &__NR_poll;}
}
unless(defined(&SYS_getuid)) {
    sub SYS_getuid () {	 &__NR_getuid;}
}
unless(defined(&SYS_writev)) {
    sub SYS_writev () {	 &__NR_writev;}
}
unless(defined(&SYS_munmap)) {
    sub SYS_munmap () {	 &__NR_munmap;}
}
unless(defined(&SYS_kill)) {
    sub SYS_kill () {	 &__NR_kill;}
}
unless(defined(&SYS_fstat64)) {
    sub SYS_fstat64 () {	 &__NR_fstat64;}
}
unless(defined(&SYS_getrlimit)) {
    sub SYS_getrlimit () {	 &__NR_getrlimit;}
}
unless(defined(&SYS_getdents)) {
    sub SYS_getdents () {	 &__NR_getdents;}
}
unless(defined(&SYS_chmod)) {
    sub SYS_chmod () {	 &__NR_chmod;}
}
unless(defined(&SYS_lchown)) {
    sub SYS_lchown () {	 &__NR_lchown;}
}
unless(defined(&SYS_utime)) {
    sub SYS_utime () {	 &__NR_utime;}
}
unless(defined(&SYS_fchown32)) {
    sub SYS_fchown32 () {	 &__NR_fchown32;}
}
unless(defined(&SYS_prctl)) {
    sub SYS_prctl () {	 &__NR_prctl;}
}
unless(defined(&SYS_setrlimit)) {
    sub SYS_setrlimit () {	 &__NR_setrlimit;}
}
unless(defined(&SYS_setreuid32)) {
    sub SYS_setreuid32 () {	 &__NR_setreuid32;}
}
unless(defined(&SYS_sched_setparam)) {
    sub SYS_sched_setparam () {	 &__NR_sched_setparam;}
}
unless(defined(&SYS_mprotect)) {
    sub SYS_mprotect () {	 &__NR_mprotect;}
}
unless(defined(&SYS_stty)) {
    sub SYS_stty () {	 &__NR_stty;}
}
unless(defined(&SYS_getresgid)) {
    sub SYS_getresgid () {	 &__NR_getresgid;}
}
unless(defined(&SYS_chdir)) {
    sub SYS_chdir () {	 &__NR_chdir;}
}
unless(defined(&SYS_select)) {
    sub SYS_select () {	 &__NR_select;}
}
unless(defined(&SYS__newselect)) {
    sub SYS__newselect () {	 &__NR__newselect;}
}
unless(defined(&SYS_getgroups)) {
    sub SYS_getgroups () {	 &__NR_getgroups;}
}
unless(defined(&SYS_fdatasync)) {
    sub SYS_fdatasync () {	 &__NR_fdatasync;}
}
unless(defined(&SYS_setresgid)) {
    sub SYS_setresgid () {	 &__NR_setresgid;}
}
unless(defined(&SYS_mlock)) {
    sub SYS_mlock () {	 &__NR_mlock;}
}
unless(defined(&SYS_ulimit)) {
    sub SYS_ulimit () {	 &__NR_ulimit;}
}
unless(defined(&SYS_chroot)) {
    sub SYS_chroot () {	 &__NR_chroot;}
}
unless(defined(&SYS_getegid32)) {
    sub SYS_getegid32 () {	 &__NR_getegid32;}
}
unless(defined(&SYS_setgroups)) {
    sub SYS_setgroups () {	 &__NR_setgroups;}
}
unless(defined(&SYS_create_module)) {
    sub SYS_create_module () {	 &__NR_create_module;}
}
unless(defined(&SYS_clone)) {
    sub SYS_clone () {	 &__NR_clone;}
}
unless(defined(&SYS_ugetrlimit)) {
    sub SYS_ugetrlimit () {	 &__NR_ugetrlimit;}
}
unless(defined(&SYS_readlink)) {
    sub SYS_readlink () {	 &__NR_readlink;}
}
unless(defined(&SYS_getresuid32)) {
    sub SYS_getresuid32 () {	 &__NR_getresuid32;}
}
unless(defined(&SYS__sysctl)) {
    sub SYS__sysctl () {	 &__NR__sysctl;}
}
unless(defined(&SYS_umount)) {
    sub SYS_umount () {	 &__NR_umount;}
}
unless(defined(&SYS_stat64)) {
    sub SYS_stat64 () {	 &__NR_stat64;}
}
unless(defined(&SYS_mmap)) {
    sub SYS_mmap () {	 &__NR_mmap;}
}
unless(defined(&SYS_lchown32)) {
    sub SYS_lchown32 () {	 &__NR_lchown32;}
}
unless(defined(&SYS_rmdir)) {
    sub SYS_rmdir () {	 &__NR_rmdir;}
}
unless(defined(&SYS_capset)) {
    sub SYS_capset () {	 &__NR_capset;}
}
unless(defined(&SYS_ftruncate64)) {
    sub SYS_ftruncate64 () {	 &__NR_ftruncate64;}
}
unless(defined(&SYS_sigaction)) {
    sub SYS_sigaction () {	 &__NR_sigaction;}
}
unless(defined(&SYS_swapoff)) {
    sub SYS_swapoff () {	 &__NR_swapoff;}
}
unless(defined(&SYS_getegid)) {
    sub SYS_getegid () {	 &__NR_getegid;}
}
unless(defined(&SYS_streams1)) {
    sub SYS_streams1 () {	 &__NR_streams1;}
}
unless(defined(&SYS_streams2)) {
    sub SYS_streams2 () {	 &__NR_streams2;}
}
unless(defined(&SYS_ioperm)) {
    sub SYS_ioperm () {	 &__NR_ioperm;}
}
unless(defined(&SYS_truncate64)) {
    sub SYS_truncate64 () {	 &__NR_truncate64;}
}
unless(defined(&SYS_execve)) {
    sub SYS_execve () {	 &__NR_execve;}
}
unless(defined(&SYS_setfsgid32)) {
    sub SYS_setfsgid32 () {	 &__NR_setfsgid32;}
}
unless(defined(&SYS_setgid)) {
    sub SYS_setgid () {	 &__NR_setgid;}
}
unless(defined(&SYS_bdflush)) {
    sub SYS_bdflush () {	 &__NR_bdflush;}
}
unless(defined(&SYS_lseek)) {
    sub SYS_lseek () {	 &__NR_lseek;}
}
unless(defined(&SYS_close)) {
    sub SYS_close () {	 &__NR_close;}
}
unless(defined(&SYS_getuid32)) {
    sub SYS_getuid32 () {	 &__NR_getuid32;}
}
unless(defined(&SYS_alarm)) {
    sub SYS_alarm () {	 &__NR_alarm;}
}
unless(defined(&SYS_setfsgid)) {
    sub SYS_setfsgid () {	 &__NR_setfsgid;}
}
unless(defined(&SYS_fchown)) {
    sub SYS_fchown () {	 &__NR_fchown;}
}
unless(defined(&SYS__llseek)) {
    sub SYS__llseek () {	 &__NR__llseek;}
}
unless(defined(&SYS_readdir)) {
    sub SYS_readdir () {	 &__NR_readdir;}
}
unless(defined(&SYS_uselib)) {
    sub SYS_uselib () {	 &__NR_uselib;}
}
unless(defined(&SYS_rt_sigaction)) {
    sub SYS_rt_sigaction () {	 &__NR_rt_sigaction;}
}
unless(defined(&SYS_query_module)) {
    sub SYS_query_module () {	 &__NR_query_module;}
}
unless(defined(&SYS_fork)) {
    sub SYS_fork () {	 &__NR_fork;}
}
unless(defined(&SYS_gtty)) {
    sub SYS_gtty () {	 &__NR_gtty;}
}
unless(defined(&SYS_getitimer)) {
    sub SYS_getitimer () {	 &__NR_getitimer;}
}
unless(defined(&SYS_sigaltstack)) {
    sub SYS_sigaltstack () {	 &__NR_sigaltstack;}
}
unless(defined(&SYS_brk)) {
    sub SYS_brk () {	 &__NR_brk;}
}
unless(defined(&SYS_nice)) {
    sub SYS_nice () {	 &__NR_nice;}
}
unless(defined(&SYS_mount)) {
    sub SYS_mount () {	 &__NR_mount;}
}
unless(defined(&SYS_sched_getscheduler)) {
    sub SYS_sched_getscheduler () {	 &__NR_sched_getscheduler;}
}
unless(defined(&SYS_setitimer)) {
    sub SYS_setitimer () {	 &__NR_setitimer;}
}
unless(defined(&SYS_oldolduname)) {
    sub SYS_oldolduname () {	 &__NR_oldolduname;}
}
unless(defined(&SYS_munlockall)) {
    sub SYS_munlockall () {	 &__NR_munlockall;}
}
unless(defined(&SYS_setdomainname)) {
    sub SYS_setdomainname () {	 &__NR_setdomainname;}
}
unless(defined(&SYS_waitpid)) {
    sub SYS_waitpid () {	 &__NR_waitpid;}
}
unless(defined(&SYS_sigpending)) {
    sub SYS_sigpending () {	 &__NR_sigpending;}
}
unless(defined(&SYS_mpx)) {
    sub SYS_mpx () {	 &__NR_mpx;}
}
unless(defined(&SYS_personality)) {
    sub SYS_personality () {	 &__NR_personality;}
}
unless(defined(&SYS_prof)) {
    sub SYS_prof () {	 &__NR_prof;}
}
unless(defined(&SYS_ftime)) {
    sub SYS_ftime () {	 &__NR_ftime;}
}
unless(defined(&SYS_socketcall)) {
    sub SYS_socketcall () {	 &__NR_socketcall;}
}
unless(defined(&SYS_time)) {
    sub SYS_time () {	 &__NR_time;}
}
unless(defined(&SYS_chown)) {
    sub SYS_chown () {	 &__NR_chown;}
}
unless(defined(&SYS_mincore)) {
    sub SYS_mincore () {	 &__NR_mincore;}
}
unless(defined(&SYS_umount2)) {
    sub SYS_umount2 () {	 &__NR_umount2;}
}
unless(defined(&SYS_getppid)) {
    sub SYS_getppid () {	 &__NR_getppid;}
}
unless(defined(&SYS_setresgid32)) {
    sub SYS_setresgid32 () {	 &__NR_setresgid32;}
}
unless(defined(&SYS_setup)) {
    sub SYS_setup () {	 &__NR_setup;}
}
unless(defined(&SYS_setsid)) {
    sub SYS_setsid () {	 &__NR_setsid;}
}
unless(defined(&SYS_sched_yield)) {
    sub SYS_sched_yield () {	 &__NR_sched_yield;}
}
unless(defined(&SYS_profil)) {
    sub SYS_profil () {	 &__NR_profil;}
}
unless(defined(&SYS_rt_sigpending)) {
    sub SYS_rt_sigpending () {	 &__NR_rt_sigpending;}
}
unless(defined(&SYS_delete_module)) {
    sub SYS_delete_module () {	 &__NR_delete_module;}
}
unless(defined(&SYS_ioctl)) {
    sub SYS_ioctl () {	 &__NR_ioctl;}
}
unless(defined(&SYS_afs_syscall)) {
    sub SYS_afs_syscall () {	 &__NR_afs_syscall;}
}
1;
