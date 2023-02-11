require '_h2ph_pre.ph';

if(!defined (defined(&_SYS_WAIT_H) ? &_SYS_WAIT_H : 0)  && !defined (defined(&_STDLIB_H) ? &_STDLIB_H : 0)) {
    die("Never include <bits/waitstatus.h> directly; use <sys/wait.h> instead.");
}
unless(defined(&__WEXITSTATUS)) {
    sub __WEXITSTATUS {
	local($status) = @_;
	eval q(((($status) & 0xff00) >> 8));
    }
}
unless(defined(&__WTERMSIG)) {
    sub __WTERMSIG {
	local($status) = @_;
	eval q((($status) & 0x7f));
    }
}
unless(defined(&__WSTOPSIG)) {
    sub __WSTOPSIG {
	local($status) = @_;
	eval q( &__WEXITSTATUS($status));
    }
}
unless(defined(&__WIFEXITED)) {
    sub __WIFEXITED {
	local($status) = @_;
	eval q(( &__WTERMSIG($status) == 0));
    }
}
if(defined(&__GNUC__)) {
    eval 'sub __WIFSIGNALED {
        local($status) = @_;
	    eval q(( &__extension__ ({ \'int\'  &__status = ($status); ! &__WIFSTOPPED( &__status)  && ! &__WIFEXITED( &__status); })));
    }' unless defined(&__WIFSIGNALED);
} else {
    eval 'sub __WIFSIGNALED {
        local($status) = @_;
	    eval q((! &__WIFSTOPPED($status)  && ! &__WIFEXITED($status)));
    }' unless defined(&__WIFSIGNALED);
}
unless(defined(&__WIFSTOPPED)) {
    sub __WIFSTOPPED {
	local($status) = @_;
	eval q(((($status) & 0xff) == 0x7f));
    }
}
unless(defined(&__WCOREDUMP)) {
    sub __WCOREDUMP {
	local($status) = @_;
	eval q((($status) &  &__WCOREFLAG));
    }
}
unless(defined(&__W_EXITCODE)) {
    sub __W_EXITCODE {
	local($ret, $sig) = @_;
	eval q((($ret) << 8| ($sig)));
    }
}
unless(defined(&__W_STOPCODE)) {
    sub __W_STOPCODE {
	local($sig) = @_;
	eval q((($sig) << 8| 0x7f));
    }
}
unless(defined(&__WCOREFLAG)) {
    sub __WCOREFLAG () {	0x80;}
}
if(defined(&__USE_BSD)) {
    require 'endian.ph';
    if((defined(&__BYTE_ORDER) ? &__BYTE_ORDER : 0) == (defined(&__LITTLE_ENDIAN) ? &__LITTLE_ENDIAN : 0)) {
    }
    if((defined(&__BYTE_ORDER) ? &__BYTE_ORDER : 0) == (defined(&__BIG_ENDIAN) ? &__BIG_ENDIAN : 0)) {
    }
    if((defined(&__BYTE_ORDER) ? &__BYTE_ORDER : 0) == (defined(&__LITTLE_ENDIAN) ? &__LITTLE_ENDIAN : 0)) {
    }
    if((defined(&__BYTE_ORDER) ? &__BYTE_ORDER : 0) == (defined(&__BIG_ENDIAN) ? &__BIG_ENDIAN : 0)) {
    }
    eval 'sub w_termsig () { ($__wait_terminated->{__w_termsig});}' unless defined(&w_termsig);
    eval 'sub w_coredump () { ($__wait_terminated->{__w_coredump});}' unless defined(&w_coredump);
    eval 'sub w_retcode () { ($__wait_terminated->{__w_retcode});}' unless defined(&w_retcode);
    eval 'sub w_stopsig () { ($__wait_stopped->{__w_stopsig});}' unless defined(&w_stopsig);
    eval 'sub w_stopval () { ($__wait_stopped->{__w_stopval});}' unless defined(&w_stopval);
}
1;
