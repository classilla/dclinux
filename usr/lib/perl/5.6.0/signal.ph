require '_h2ph_pre.ph';

unless(defined(&_SIGNAL_H)) {
    if(!defined (defined(&__need_sig_atomic_t) ? &__need_sig_atomic_t : 0)  && !defined (defined(&__need_sigset_t) ? &__need_sigset_t : 0)) {
	eval 'sub _SIGNAL_H () {1;}' unless defined(&_SIGNAL_H);
    }
    require 'features.ph';
    require 'bits/sigset.ph';
    if(defined (defined(&__need_sig_atomic_t) ? &__need_sig_atomic_t : 0) || defined (defined(&_SIGNAL_H) ? &_SIGNAL_H : 0)) {
	unless(defined(&__sig_atomic_t_defined)) {
	    eval 'sub __sig_atomic_t_defined () {1;}' unless defined(&__sig_atomic_t_defined);
	}
	undef(&__need_sig_atomic_t) if defined(&__need_sig_atomic_t);
    }
    if(defined (defined(&__need_sigset_t) ? &__need_sigset_t : 0) || (defined (defined(&_SIGNAL_H) ? &_SIGNAL_H : 0)  && defined (defined(&__USE_POSIX) ? &__USE_POSIX : 0))) {
	unless(defined(&__sigset_t_defined)) {
	    eval 'sub __sigset_t_defined () {1;}' unless defined(&__sigset_t_defined);
	}
	undef(&__need_sigset_t) if defined(&__need_sigset_t);
    }
    if(defined(&_SIGNAL_H)) {
	require 'bits/types.ph';
	require 'bits/signum.ph';
	if(defined(&__USE_XOPEN)) {
	    unless(defined(&__pid_t_defined)) {
		eval 'sub __pid_t_defined () {1;}' unless defined(&__pid_t_defined);
	    }
	    unless(defined(&__uid_t_defined)) {
		eval 'sub __uid_t_defined () {1;}' unless defined(&__uid_t_defined);
	    }
	}
	if(defined(&__USE_GNU)) {
	}
	if(defined(&__USE_BSD)) {
	} else {
	    if(defined(&__REDIRECT)) {
	    } else {
		eval 'sub signal () { &__sysv_signal;}' unless defined(&signal);
	    }
	}
	if(defined(&__USE_XOPEN)) {
	}
	if(defined(&__USE_POSIX)) {
	}
	if(defined (defined(&__USE_BSD) ? &__USE_BSD : 0) || defined (defined(&__USE_XOPEN_EXTENDED) ? &__USE_XOPEN_EXTENDED : 0)) {
	}
	if(defined(&__USE_SVID)) {
	}
	if(defined(&__USE_MISC)) {
	}
	if(defined(&__USE_BSD)) {
	    eval 'sub sigpause {
	        local($mask) = @_;
    		eval q( &__sigpause (($mask), 0));
	    }' unless defined(&sigpause);
	} else {
	    if(defined(&__USE_XOPEN)) {
		if(defined(&__GNUC__)) {
		}
		eval 'sub sigpause {
		    local($sig) = @_;
    		    eval q( &__sigpause (($sig), 1));
		}' unless defined(&sigpause);
	    }
	}
	if(defined(&__USE_BSD)) {
	    eval 'sub sigmask {
	        local($sig) = @_;
    		eval q( &__sigmask($sig));
	    }' unless defined(&sigmask);
	}
	if(defined(&__USE_MISC)) {
	    eval 'sub NSIG () { &_NSIG;}' unless defined(&NSIG);
	}
	if(defined(&__USE_GNU)) {
	}
	if(defined(&__USE_BSD)) {
	}
	if(defined(&__USE_POSIX)) {
	    if(defined(&__USE_POSIX199309)) {
		eval 'sub __need_timespec () {1;}' unless defined(&__need_timespec);
		require 'time.ph';
		require 'bits/siginfo.ph';
	    }
	    if(defined(&__USE_GNU)) {
	    }
	    require 'bits/sigaction.ph';
	    if(defined(&__USE_POSIX199309)) {
	    }
	}
	if(defined(&__USE_BSD)) {
	    eval 'sub sv_onstack () { &sv_flags;}' unless defined(&sv_onstack);
	    eval 'sub SV_ONSTACK () {(1<< 0);}' unless defined(&SV_ONSTACK);
	    eval 'sub SV_INTERRUPT () {(1<< 1);}' unless defined(&SV_INTERRUPT);
	    eval 'sub SV_RESETHAND () {(1<< 2);}' unless defined(&SV_RESETHAND);
	    require 'bits/sigcontext.ph';
	}
	if(defined (defined(&__USE_BSD) ? &__USE_BSD : 0) || defined (defined(&__USE_XOPEN_EXTENDED) ? &__USE_XOPEN_EXTENDED : 0)) {
	    require 'bits/sigstack.ph';
	    if(defined(&__USE_XOPEN)) {
		require 'ucontext.ph';
	    }
	}
	if(defined(&__USE_UNIX98)) {
	}
	if(defined (defined(&__USE_POSIX199506) ? &__USE_POSIX199506 : 0) || defined (defined(&__USE_UNIX98) ? &__USE_UNIX98 : 0)) {
	    require 'bits/sigthread.ph';
	}
    }
}
1;
