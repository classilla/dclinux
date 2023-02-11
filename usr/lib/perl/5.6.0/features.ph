require '_h2ph_pre.ph';

unless(defined(&_FEATURES_H)) {
    eval 'sub _FEATURES_H () {1;}' unless defined(&_FEATURES_H);
    undef(&__USE_ISOC99) if defined(&__USE_ISOC99);
    undef(&__USE_POSIX) if defined(&__USE_POSIX);
    undef(&__USE_POSIX2) if defined(&__USE_POSIX2);
    undef(&__USE_POSIX199309) if defined(&__USE_POSIX199309);
    undef(&__USE_POSIX199506) if defined(&__USE_POSIX199506);
    undef(&__USE_XOPEN) if defined(&__USE_XOPEN);
    undef(&__USE_XOPEN_EXTENDED) if defined(&__USE_XOPEN_EXTENDED);
    undef(&__USE_UNIX98) if defined(&__USE_UNIX98);
    undef(&__USE_XOPEN2K) if defined(&__USE_XOPEN2K);
    undef(&__USE_LARGEFILE) if defined(&__USE_LARGEFILE);
    undef(&__USE_LARGEFILE64) if defined(&__USE_LARGEFILE64);
    undef(&__USE_FILE_OFFSET64) if defined(&__USE_FILE_OFFSET64);
    undef(&__USE_BSD) if defined(&__USE_BSD);
    undef(&__USE_SVID) if defined(&__USE_SVID);
    undef(&__USE_MISC) if defined(&__USE_MISC);
    undef(&__USE_GNU) if defined(&__USE_GNU);
    undef(&__USE_REENTRANT) if defined(&__USE_REENTRANT);
    undef(&__FAVOR_BSD) if defined(&__FAVOR_BSD);
    undef(&__KERNEL_STRICT_NAMES) if defined(&__KERNEL_STRICT_NAMES);
    unless(defined(&_LOOSE_KERNEL_NAMES)) {
	eval 'sub __KERNEL_STRICT_NAMES () {1;}' unless defined(&__KERNEL_STRICT_NAMES);
    }
    eval 'sub __USE_ANSI () {1;}' unless defined(&__USE_ANSI);
    if(defined (defined(&_BSD_SOURCE) ? &_BSD_SOURCE : 0)  && !(defined (defined(&_POSIX_SOURCE) ? &_POSIX_SOURCE : 0) || defined (defined(&_POSIX_C_SOURCE) ? &_POSIX_C_SOURCE : 0) || defined (defined(&_XOPEN_SOURCE) ? &_XOPEN_SOURCE : 0) || defined (defined(&_XOPEN_SOURCE_EXTENDED) ? &_XOPEN_SOURCE_EXTENDED : 0) || defined (defined(&_GNU_SOURCE) ? &_GNU_SOURCE : 0) || defined (defined(&_SVID_SOURCE) ? &_SVID_SOURCE : 0))) {
	eval 'sub __FAVOR_BSD () {1;}' unless defined(&__FAVOR_BSD);
    }
    if(defined(&_GNU_SOURCE)) {
	undef(&_ISOC99_SOURCE) if defined(&_ISOC99_SOURCE);
	eval 'sub _ISOC99_SOURCE () {1;}' unless defined(&_ISOC99_SOURCE);
	undef(&_POSIX_SOURCE) if defined(&_POSIX_SOURCE);
	eval 'sub _POSIX_SOURCE () {1;}' unless defined(&_POSIX_SOURCE);
	undef(&_POSIX_C_SOURCE) if defined(&_POSIX_C_SOURCE);
	eval 'sub _POSIX_C_SOURCE () {199506;}' unless defined(&_POSIX_C_SOURCE);
	undef(&_XOPEN_SOURCE) if defined(&_XOPEN_SOURCE);
	eval 'sub _XOPEN_SOURCE () {600;}' unless defined(&_XOPEN_SOURCE);
	undef(&_XOPEN_SOURCE_EXTENDED) if defined(&_XOPEN_SOURCE_EXTENDED);
	eval 'sub _XOPEN_SOURCE_EXTENDED () {1;}' unless defined(&_XOPEN_SOURCE_EXTENDED);
	undef(&_LARGEFILE64_SOURCE) if defined(&_LARGEFILE64_SOURCE);
	eval 'sub _LARGEFILE64_SOURCE () {1;}' unless defined(&_LARGEFILE64_SOURCE);
	undef(&_BSD_SOURCE) if defined(&_BSD_SOURCE);
	eval 'sub _BSD_SOURCE () {1;}' unless defined(&_BSD_SOURCE);
	undef(&_SVID_SOURCE) if defined(&_SVID_SOURCE);
	eval 'sub _SVID_SOURCE () {1;}' unless defined(&_SVID_SOURCE);
    }
    if((!defined (defined(&__STRICT_ANSI__) ? &__STRICT_ANSI__ : 0)  && !defined (defined(&_ISOC99_SOURCE) ? &_ISOC99_SOURCE : 0)  && !defined (defined(&_POSIX_SOURCE) ? &_POSIX_SOURCE : 0)  && !defined (defined(&_POSIX_C_SOURCE) ? &_POSIX_C_SOURCE : 0)  && !defined (defined(&_XOPEN_SOURCE) ? &_XOPEN_SOURCE : 0)  && !defined (defined(&_XOPEN_SOURCE_EXTENDED) ? &_XOPEN_SOURCE_EXTENDED : 0)  && !defined (defined(&_BSD_SOURCE) ? &_BSD_SOURCE : 0)  && !defined (defined(&_SVID_SOURCE) ? &_SVID_SOURCE : 0))) {
	eval 'sub _BSD_SOURCE () {1;}' unless defined(&_BSD_SOURCE);
	eval 'sub _SVID_SOURCE () {1;}' unless defined(&_SVID_SOURCE);
    }
    if((defined (defined(&_ISOC99_SOURCE) ? &_ISOC99_SOURCE : 0) || defined (defined(&_ISOC9X_SOURCE) ? &_ISOC9X_SOURCE : 0) || (defined (defined(&__STDC_VERSION__) ? &__STDC_VERSION__ : 0)  && (defined(&__STDC_VERSION__) ? &__STDC_VERSION__ : 0) >= 199901))) {
	eval 'sub __USE_ISOC99 () {1;}' unless defined(&__USE_ISOC99);
    }
    if((!defined (defined(&__STRICT_ANSI__) ? &__STRICT_ANSI__ : 0)  && !defined (defined(&_POSIX_SOURCE) ? &_POSIX_SOURCE : 0)  && !defined (defined(&_POSIX_C_SOURCE) ? &_POSIX_C_SOURCE : 0))) {
	eval 'sub _POSIX_SOURCE () {1;}' unless defined(&_POSIX_SOURCE);
	if(defined (defined(&_XOPEN_SOURCE) ? &_XOPEN_SOURCE : 0)  && ((defined(&_XOPEN_SOURCE) ? &_XOPEN_SOURCE : 0) - 0) < 500) {
	    eval 'sub _POSIX_C_SOURCE () {2;}' unless defined(&_POSIX_C_SOURCE);
	} else {
	    eval 'sub _POSIX_C_SOURCE () {199506;}' unless defined(&_POSIX_C_SOURCE);
	}
    }
    if(defined (defined(&_POSIX_SOURCE) ? &_POSIX_SOURCE : 0) || (defined(&_POSIX_C_SOURCE) ? &_POSIX_C_SOURCE : 0) >= 1|| defined (defined(&_XOPEN_SOURCE) ? &_XOPEN_SOURCE : 0)) {
	eval 'sub __USE_POSIX () {1;}' unless defined(&__USE_POSIX);
    }
    if(defined (defined(&_POSIX_C_SOURCE) ? &_POSIX_C_SOURCE : 0)  && (defined(&_POSIX_C_SOURCE) ? &_POSIX_C_SOURCE : 0) >= 2|| defined (defined(&_XOPEN_SOURCE) ? &_XOPEN_SOURCE : 0)) {
	eval 'sub __USE_POSIX2 () {1;}' unless defined(&__USE_POSIX2);
    }
    if(((defined(&_POSIX_C_SOURCE) ? &_POSIX_C_SOURCE : 0) - 0) >= 199309) {
	eval 'sub __USE_POSIX199309 () {1;}' unless defined(&__USE_POSIX199309);
    }
    if(((defined(&_POSIX_C_SOURCE) ? &_POSIX_C_SOURCE : 0) - 0) >= 199506) {
	eval 'sub __USE_POSIX199506 () {1;}' unless defined(&__USE_POSIX199506);
    }
    if(defined(&_XOPEN_SOURCE)) {
	eval 'sub __USE_XOPEN () {1;}' unless defined(&__USE_XOPEN);
	if(((defined(&_XOPEN_SOURCE) ? &_XOPEN_SOURCE : 0) - 0) >= 500) {
	    eval 'sub __USE_XOPEN_EXTENDED () {1;}' unless defined(&__USE_XOPEN_EXTENDED);
	    eval 'sub __USE_UNIX98 () {1;}' unless defined(&__USE_UNIX98);
	    undef(&_LARGEFILE_SOURCE) if defined(&_LARGEFILE_SOURCE);
	    eval 'sub _LARGEFILE_SOURCE () {1;}' unless defined(&_LARGEFILE_SOURCE);
	    if(((defined(&_XOPEN_SOURCE) ? &_XOPEN_SOURCE : 0) - 0) >= 600) {
		eval 'sub __USE_XOPEN2K () {1;}' unless defined(&__USE_XOPEN2K);
		undef(&__USE_ISOC99) if defined(&__USE_ISOC99);
		eval 'sub __USE_ISOC99 () {1;}' unless defined(&__USE_ISOC99);
	    }
	} else {
	    if(defined(&_XOPEN_SOURCE_EXTENDED)) {
		eval 'sub __USE_XOPEN_EXTENDED () {1;}' unless defined(&__USE_XOPEN_EXTENDED);
	    }
	}
    }
    if(defined(&_LARGEFILE_SOURCE)) {
	eval 'sub __USE_LARGEFILE () {1;}' unless defined(&__USE_LARGEFILE);
    }
    if(defined(&_LARGEFILE64_SOURCE)) {
	eval 'sub __USE_LARGEFILE64 () {1;}' unless defined(&__USE_LARGEFILE64);
    }
    if(defined (defined(&_FILE_OFFSET_BITS) ? &_FILE_OFFSET_BITS : 0)  && (defined(&_FILE_OFFSET_BITS) ? &_FILE_OFFSET_BITS : 0) == 64) {
	eval 'sub __USE_FILE_OFFSET64 () {1;}' unless defined(&__USE_FILE_OFFSET64);
    }
    if(defined (defined(&_BSD_SOURCE) ? &_BSD_SOURCE : 0) || defined (defined(&_SVID_SOURCE) ? &_SVID_SOURCE : 0)) {
	eval 'sub __USE_MISC () {1;}' unless defined(&__USE_MISC);
    }
    if(defined(&_BSD_SOURCE)) {
	eval 'sub __USE_BSD () {1;}' unless defined(&__USE_BSD);
    }
    if(defined(&_SVID_SOURCE)) {
	eval 'sub __USE_SVID () {1;}' unless defined(&__USE_SVID);
    }
    if(defined(&_GNU_SOURCE)) {
	eval 'sub __USE_GNU () {1;}' unless defined(&__USE_GNU);
    }
    if(defined (defined(&_REENTRANT) ? &_REENTRANT : 0) || defined (defined(&_THREAD_SAFE) ? &_THREAD_SAFE : 0)) {
	eval 'sub __USE_REENTRANT () {1;}' unless defined(&__USE_REENTRANT);
    }
    eval 'sub __STDC_IEC_559__ () {1;}' unless defined(&__STDC_IEC_559__);
    eval 'sub __STDC_IEC_559_COMPLEX__ () {1;}' unless defined(&__STDC_IEC_559_COMPLEX__);
    eval 'sub __STDC_ISO_10646__ () {200009;}' unless defined(&__STDC_ISO_10646__);
    undef(&__GNU_LIBRARY__) if defined(&__GNU_LIBRARY__);
    eval 'sub __GNU_LIBRARY__ () {6;}' unless defined(&__GNU_LIBRARY__);
    eval 'sub __GLIBC__ () {2;}' unless defined(&__GLIBC__);
    eval 'sub __GLIBC_MINOR__ () {2;}' unless defined(&__GLIBC_MINOR__);
    if(defined (defined(&__GNUC__) ? &__GNUC__ : 0)  && defined (defined(&__GNUC_MINOR__) ? &__GNUC_MINOR__ : 0)) {
	eval 'sub __GNUC_PREREQ {
	    local($maj, $min) = @_;
    	    eval q((( &__GNUC__ << 16) +  &__GNUC_MINOR__ >= (($maj) << 16) + ($min)));
	}' unless defined(&__GNUC_PREREQ);
    } else {
	eval 'sub __GNUC_PREREQ {
	    local($maj, $min) = @_;
    	    eval q(0);
	}' unless defined(&__GNUC_PREREQ);
    }
    eval 'sub __GLIBC_PREREQ {
        local($maj, $min) = @_;
	    eval q((( &__GLIBC__ << 16) +  &__GLIBC_MINOR__ >= (($maj) << 16) + ($min)));
    }' unless defined(&__GLIBC_PREREQ);
    unless(defined(&__ASSEMBLER__)) {
	unless(defined(&_SYS_CDEFS_H)) {
	    require 'sys/cdefs.ph';
	}
	if(defined (defined(&__USE_FILE_OFFSET64) ? &__USE_FILE_OFFSET64 : 0)  && !defined (defined(&__REDIRECT) ? &__REDIRECT : 0)) {
	    eval 'sub __USE_LARGEFILE () {1;}' unless defined(&__USE_LARGEFILE);
	    eval 'sub __USE_LARGEFILE64 () {1;}' unless defined(&__USE_LARGEFILE64);
	}
    }
    if((defined(&__GNUC_PREREQ) ? &__GNUC_PREREQ(2, 7) : 0)  && defined (defined(&__OPTIMIZE__) ? &__OPTIMIZE__ : 0)  && !defined (defined(&__OPTIMIZE_SIZE__) ? &__OPTIMIZE_SIZE__ : 0)) {
	eval 'sub __USE_EXTERN_INLINES () {1;}' unless defined(&__USE_EXTERN_INLINES);
    }
    unless(defined(&_LIBC)) {
	require 'gnu/stubs.ph';
    }
}
1;
