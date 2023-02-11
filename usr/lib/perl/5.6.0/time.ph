require '_h2ph_pre.ph';

unless(defined(&_TIME_H)) {
    if((! defined (defined(&__need_time_t) ? &__need_time_t : 0)  && !defined (defined(&__need_clock_t) ? &__need_clock_t : 0)  && ! defined (defined(&__need_timespec) ? &__need_timespec : 0))) {
	eval 'sub _TIME_H () {1;}' unless defined(&_TIME_H);
	require 'features.ph';
    }
    if(defined(&_TIME_H)) {
	eval 'sub __need_size_t () {1;}' unless defined(&__need_size_t);
	eval 'sub __need_NULL () {1;}' unless defined(&__need_NULL);
	require 'stddef.ph';
	require 'bits/time.ph';
	if(!defined (defined(&__STRICT_ANSI__) ? &__STRICT_ANSI__ : 0)  && !defined (defined(&__USE_XOPEN2K) ? &__USE_XOPEN2K : 0)) {
	    unless(defined(&CLK_TCK)) {
		eval 'sub CLK_TCK () { &CLOCKS_PER_SEC;}' unless defined(&CLK_TCK);
	    }
	}
    }
    if(!defined (defined(&__clock_t_defined) ? &__clock_t_defined : 0)  && (defined (defined(&_TIME_H) ? &_TIME_H : 0) || defined (defined(&__need_clock_t) ? &__need_clock_t : 0))) {
	eval 'sub __clock_t_defined () {1;}' unless defined(&__clock_t_defined);
	require 'bits/types.ph';
    }
    undef(&__need_clock_t) if defined(&__need_clock_t);
    if(!defined (defined(&__time_t_defined) ? &__time_t_defined : 0)  && (defined (defined(&_TIME_H) ? &_TIME_H : 0) || defined (defined(&__need_time_t) ? &__need_time_t : 0))) {
	eval 'sub __time_t_defined () {1;}' unless defined(&__time_t_defined);
	require 'bits/types.ph';
    }
    undef(&__need_time_t) if defined(&__need_time_t);
    if(!defined (defined(&__clockid_t_defined) ? &__clockid_t_defined : 0)  && ((defined (defined(&_TIME_H) ? &_TIME_H : 0)  && defined (defined(&__USE_POSIX199309) ? &__USE_POSIX199309 : 0)) || defined (defined(&__need_clockid_t) ? &__need_clockid_t : 0))) {
	eval 'sub __clockid_t_defined () {1;}' unless defined(&__clockid_t_defined);
	require 'bits/types.ph';
    }
    undef(&__clockid_time_t) if defined(&__clockid_time_t);
    if(!defined (defined(&__timer_t_defined) ? &__timer_t_defined : 0)  && ((defined (defined(&_TIME_H) ? &_TIME_H : 0)  && defined (defined(&__USE_POSIX199309) ? &__USE_POSIX199309 : 0)) || defined (defined(&__need_timer_t) ? &__need_timer_t : 0))) {
	eval 'sub __timer_t_defined () {1;}' unless defined(&__timer_t_defined);
	require 'bits/types.ph';
    }
    undef(&__need_timer_t) if defined(&__need_timer_t);
    if(!defined (defined(&__timespec_defined) ? &__timespec_defined : 0)  && ((defined (defined(&_TIME_H) ? &_TIME_H : 0)  && defined (defined(&__USE_POSIX199309) ? &__USE_POSIX199309 : 0)) || defined (defined(&__need_timespec) ? &__need_timespec : 0))) {
	eval 'sub __timespec_defined () {1;}' unless defined(&__timespec_defined);
    }
    undef(&__need_timespec) if defined(&__need_timespec);
    if(defined(&_TIME_H)) {
	if(defined(&__USE_BSD)) {
	} else {
	}
	if(defined(&__USE_POSIX199309)) {
	}
	if(defined(&__USE_XOPEN2K)) {
	    unless(defined(&__pid_t_defined)) {
		eval 'sub __pid_t_defined () {1;}' unless defined(&__pid_t_defined);
	    }
	}
	if(defined(&__USE_XOPEN)) {
	}
	if(defined (defined(&__USE_POSIX) ? &__USE_POSIX : 0) || defined (defined(&__USE_MISC) ? &__USE_MISC : 0)) {
	}
	if(defined (defined(&__USE_POSIX) ? &__USE_POSIX : 0) || defined (defined(&__USE_MISC) ? &__USE_MISC : 0)) {
	}
	if(defined(&__USE_POSIX)) {
	}
	if(defined (defined(&__USE_SVID) ? &__USE_SVID : 0) || defined (defined(&__USE_XOPEN) ? &__USE_XOPEN : 0)) {
	}
	if(defined(&__USE_SVID)) {
	}
	eval 'sub __isleap {
	    local($year) = @_;
    	    eval q((($year) % 4== 0 && (($year) % 100!= 0|| ($year) % 400== 0)));
	}' unless defined(&__isleap);
	if(defined(&__USE_MISC)) {
	}
	if(defined(&__USE_POSIX199309)) {
	    if(defined(&__USE_XOPEN2K)) {
	    }
	}
	if(defined(&__USE_XOPEN_EXTENDED)) {
	}
	if(defined(&__USE_GNU)) {
	}
    }
}
1;
