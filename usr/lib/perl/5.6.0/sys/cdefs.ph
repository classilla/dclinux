require '_h2ph_pre.ph';

unless(defined(&_SYS_CDEFS_H)) {
    eval 'sub _SYS_CDEFS_H () {1;}' unless defined(&_SYS_CDEFS_H);
    unless(defined(&_FEATURES_H)) {
	require 'features.ph';
    }
    if(defined (defined(&__GNUC__) ? &__GNUC__ : 0)  && !defined (defined(&__STDC__) ? &__STDC__ : 0)) {
	die("You need a ISO C conforming compiler to use the glibc headers");
    }
    undef(&__P) if defined(&__P);
    undef(&__PMT) if defined(&__PMT);
    if(defined(&__GNUC__)) {
	if(defined (defined(&__cplusplus) ? &__cplusplus : 0)  && (defined(&__GNUC_PREREQ) ? &__GNUC_PREREQ(2,8) : 0)) {
	    eval 'sub __THROW () { &throw ();}' unless defined(&__THROW);
	} else {
	    eval 'sub __THROW () {1;}' unless defined(&__THROW);
	}
	eval 'sub __P {
	    local($args) = @_;
    	    eval q($args  &__THROW);
	}' unless defined(&__P);
	eval 'sub __PMT {
	    local($args) = @_;
    	    eval q($args);
	}' unless defined(&__PMT);
    } else {
	eval 'sub __inline () {1;}' unless defined(&__inline);
	eval 'sub __THROW () {1;}' unless defined(&__THROW);
	eval 'sub __P {
	    local($args) = @_;
    	    eval q($args);
	}' unless defined(&__P);
	eval 'sub __PMT {
	    local($args) = @_;
    	    eval q($args);
	}' unless defined(&__PMT);
	eval 'sub __const () { &const;}' unless defined(&__const);
	eval 'sub __signed () {\'signed\';}' unless defined(&__signed);
	eval 'sub __volatile () { &volatile;}' unless defined(&__volatile);
    }
    eval 'sub __CONCAT {
        local($x,$y) = @_;
	    eval q($x  $y);
    }' unless defined(&__CONCAT);
    eval 'sub __STRING {
        local($x) = @_;
	    eval q($x);
    }' unless defined(&__STRING);
    eval 'sub __ptr_t () { &void *;}' unless defined(&__ptr_t);
    eval 'sub __long_double_t () {\'long double\';}' unless defined(&__long_double_t);
    if(defined(&__cplusplus)) {
	eval 'sub __BEGIN_DECLS () { &extern "C" {;}' unless defined(&__BEGIN_DECLS);
	eval 'sub __END_DECLS () {};}' unless defined(&__END_DECLS);
    } else {
	eval 'sub __BEGIN_DECLS () {1;}' unless defined(&__BEGIN_DECLS);
	eval 'sub __END_DECLS () {1;}' unless defined(&__END_DECLS);
    }
    unless(defined(&__BOUNDED_POINTERS__)) {
	eval 'sub __bounded () {1;}' unless defined(&__bounded);
	eval 'sub __unbounded () {1;}' unless defined(&__unbounded);
	eval 'sub __ptrvalue () {1;}' unless defined(&__ptrvalue);
    }
    if((defined(&__GNUC_PREREQ) ? &__GNUC_PREREQ(2,97) : 0)) {
	eval 'sub __flexarr () {[];}' unless defined(&__flexarr);
    } else {
	if(defined(&__GNUC__)) {
	    eval 'sub __flexarr () {[0];}' unless defined(&__flexarr);
	} else {
	    if(defined (defined(&__STDC_VERSION__) ? &__STDC_VERSION__ : 0)  && (defined(&__STDC_VERSION__) ? &__STDC_VERSION__ : 0) >= 199901) {
		eval 'sub __flexarr () {[];}' unless defined(&__flexarr);
	    } else {
		eval 'sub __flexarr () {[1];}' unless defined(&__flexarr);
	    }
	}
    }
    if(defined (defined(&__GNUC__) ? &__GNUC__ : 0)  && (defined(&__GNUC__) ? &__GNUC__ : 0) >= 2) {
	eval 'sub __REDIRECT {
	    local($name, $proto, $alias) = @_;
    	    eval q($name $proto  &__asm__ ( &__ASMNAME ($alias)));
	}' unless defined(&__REDIRECT);
	eval 'sub __ASMNAME {
	    local($cname) = @_;
    	    eval q( &__ASMNAME2 ( &__USER_LABEL_PREFIX__, $cname));
	}' unless defined(&__ASMNAME);
	eval 'sub __ASMNAME2 {
	    local($prefix, $cname) = @_;
    	    eval q( &__STRING $cname);
	}' unless defined(&__ASMNAME2);
    }
    if(!defined (defined(&__GNUC__) ? &__GNUC__ : 0) || (defined(&__GNUC__) ? &__GNUC__ : 0) < 2) {
	eval 'sub __attribute__ {
	    local($xyz) = @_;
    	    eval q();
	}' unless defined(&__attribute__);
    }
    if((defined(&__GNUC_PREREQ) ? &__GNUC_PREREQ(2,96) : 0)) {
	eval 'sub __attribute_malloc__ () { &__attribute__ (( &__malloc__));}' unless defined(&__attribute_malloc__);
    } else {
	eval 'sub __attribute_malloc__ () {1;}' unless defined(&__attribute_malloc__);
    }
    if((defined(&__GNUC_PREREQ) ? &__GNUC_PREREQ(2,96) : 0)) {
	eval 'sub __attribute_pure__ () { &__attribute__ (( &__pure__));}' unless defined(&__attribute_pure__);
    } else {
	eval 'sub __attribute_pure__ () {1;}' unless defined(&__attribute_pure__);
    }
    if((defined(&__GNUC_PREREQ) ? &__GNUC_PREREQ(2,8) : 0)) {
	eval 'sub __attribute_format_arg__ {
	    local($x) = @_;
    	    eval q( &__attribute__ (( &__format_arg__ ($x))));
	}' unless defined(&__attribute_format_arg__);
    } else {
	eval 'sub __attribute_format_arg__ {
	    local($x) = @_;
    	    eval q();
	}' unless defined(&__attribute_format_arg__);
    }
    if((defined(&__GNUC_PREREQ) ? &__GNUC_PREREQ(2,97) : 0)) {
	eval 'sub __attribute_format_strfmon__ {
	    local($a,$b) = @_;
    	    eval q( &__attribute__ (( &__format__ ( &__strfmon__, $a, $b))));
	}' unless defined(&__attribute_format_strfmon__);
    } else {
	eval 'sub __attribute_format_strfmon__ {
	    local($a,$b) = @_;
    	    eval q();
	}' unless defined(&__attribute_format_strfmon__);
    }
    if(!(defined(&__GNUC_PREREQ) ? &__GNUC_PREREQ(2,8) : 0)) {
	eval 'sub __extension__ () {1;}' unless defined(&__extension__);
    }
    if(!(defined(&__GNUC_PREREQ) ? &__GNUC_PREREQ(2,92) : 0)) {
	eval 'sub __restrict () {1;}' unless defined(&__restrict);
    }
    eval 'sub __restrict_arr () {1;}' unless defined(&__restrict_arr);
}
1;
