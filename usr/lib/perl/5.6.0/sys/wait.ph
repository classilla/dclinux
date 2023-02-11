require '_h2ph_pre.ph';

unless(defined(&_SYS_WAIT_H)) {
    eval 'sub _SYS_WAIT_H () {1;}' unless defined(&_SYS_WAIT_H);
    require 'features.ph';
    require 'signal.ph';
    require 'sys/resource.ph';
    if(!defined (defined(&_STDLIB_H) ? &_STDLIB_H : 0) || !defined (defined(&__USE_XOPEN) ? &__USE_XOPEN : 0)) {
	require 'bits/waitflags.ph';
	if(defined(&__USE_BSD)) {
	    if(defined (defined(&__GNUC__) ? &__GNUC__ : 0)  && !defined (defined(&__cplusplus) ? &__cplusplus : 0)) {
		eval 'sub __WAIT_INT {
		    local($status) = @_;
    		    eval q(( &__extension__ ({  &union {  &__typeof  &__in; \'int\'  &__i; }  &__u;  ($__u->{__in}) = ($status);  ($__u->{__i}); })));
		}' unless defined(&__WAIT_INT);
	    } else {
		eval 'sub __WAIT_INT {
		    local($status) = @_;
    		    eval q((* ($status)));
		}' unless defined(&__WAIT_INT);
	    }
	    if(!defined (defined(&__GNUC__) ? &__GNUC__ : 0) || (defined(&__GNUC__) ? &__GNUC__ : 0) < 2|| defined (defined(&__cplusplus) ? &__cplusplus : 0)) {
		eval 'sub __WAIT_STATUS () { &void *;}' unless defined(&__WAIT_STATUS);
		eval 'sub __WAIT_STATUS_DEFN () { &void *;}' unless defined(&__WAIT_STATUS_DEFN);
	    } else {
		eval 'sub __WAIT_STATUS_DEFN () {\'int\' *;}' unless defined(&__WAIT_STATUS_DEFN);
	    }
	} else {
	    eval 'sub __WAIT_INT {
	        local($status) = @_;
    		eval q(($status));
	    }' unless defined(&__WAIT_INT);
	    eval 'sub __WAIT_STATUS () {\'int\' *;}' unless defined(&__WAIT_STATUS);
	    eval 'sub __WAIT_STATUS_DEFN () {\'int\' *;}' unless defined(&__WAIT_STATUS_DEFN);
	}
	require 'bits/waitstatus.ph';
	eval 'sub WEXITSTATUS {
	    local($status) = @_;
    	    eval q( &__WEXITSTATUS( &__WAIT_INT($status)));
	}' unless defined(&WEXITSTATUS);
	eval 'sub WTERMSIG {
	    local($status) = @_;
    	    eval q( &__WTERMSIG( &__WAIT_INT($status)));
	}' unless defined(&WTERMSIG);
	eval 'sub WSTOPSIG {
	    local($status) = @_;
    	    eval q( &__WSTOPSIG( &__WAIT_INT($status)));
	}' unless defined(&WSTOPSIG);
	eval 'sub WIFEXITED {
	    local($status) = @_;
    	    eval q( &__WIFEXITED( &__WAIT_INT($status)));
	}' unless defined(&WIFEXITED);
	eval 'sub WIFSIGNALED {
	    local($status) = @_;
    	    eval q( &__WIFSIGNALED( &__WAIT_INT($status)));
	}' unless defined(&WIFSIGNALED);
	eval 'sub WIFSTOPPED {
	    local($status) = @_;
    	    eval q( &__WIFSTOPPED( &__WAIT_INT($status)));
	}' unless defined(&WIFSTOPPED);
    }
    if(defined(&__USE_BSD)) {
	eval 'sub WCOREFLAG () { &__WCOREFLAG;}' unless defined(&WCOREFLAG);
	eval 'sub WCOREDUMP {
	    local($status) = @_;
    	    eval q( &__WCOREDUMP( &__WAIT_INT($status)));
	}' unless defined(&WCOREDUMP);
	eval 'sub W_EXITCODE {
	    local($ret, $sig) = @_;
    	    eval q( &__W_EXITCODE($ret, $sig));
	}' unless defined(&W_EXITCODE);
	eval 'sub W_STOPCODE {
	    local($sig) = @_;
    	    eval q( &__W_STOPCODE($sig));
	}' unless defined(&W_STOPCODE);
    }
    if(defined (defined(&__USE_SVID) ? &__USE_SVID : 0) || defined (defined(&__USE_XOPEN) ? &__USE_XOPEN : 0)) {
	eval("sub P_ALL () { 0; }") unless defined(&P_ALL);
	eval("sub P_PID () { 1; }") unless defined(&P_PID);
	eval("sub P_PGID () { 2; }") unless defined(&P_PGID);
    }
    if(defined(&__USE_BSD)) {
	eval 'sub WAIT_ANY () {(-1);}' unless defined(&WAIT_ANY);
	eval 'sub WAIT_MYPGRP () {0;}' unless defined(&WAIT_MYPGRP);
    }
    if(defined (defined(&__USE_SVID) ? &__USE_SVID : 0) || defined (defined(&__USE_XOPEN) ? &__USE_XOPEN : 0)) {
	eval 'sub __need_siginfo_t () {1;}' unless defined(&__need_siginfo_t);
	require 'bits/siginfo.ph';
    }
    if(defined (defined(&__USE_BSD) ? &__USE_BSD : 0) || defined (defined(&__USE_XOPEN_EXTENDED) ? &__USE_XOPEN_EXTENDED : 0)) {
    }
    if(defined(&__USE_BSD)) {
    }
}
1;
