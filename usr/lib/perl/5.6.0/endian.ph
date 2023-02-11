require '_h2ph_pre.ph';

unless(defined(&_ENDIAN_H)) {
    eval 'sub _ENDIAN_H () {1;}' unless defined(&_ENDIAN_H);
    require 'features.ph';
    eval 'sub __LITTLE_ENDIAN () {1234;}' unless defined(&__LITTLE_ENDIAN);
    eval 'sub __BIG_ENDIAN () {4321;}' unless defined(&__BIG_ENDIAN);
    eval 'sub __PDP_ENDIAN () {3412;}' unless defined(&__PDP_ENDIAN);
    require 'bits/endian.ph';
    unless(defined(&__FLOAT_WORD_ORDER)) {
	eval 'sub __FLOAT_WORD_ORDER () { &__BYTE_ORDER;}' unless defined(&__FLOAT_WORD_ORDER);
    }
    if(defined(&__USE_BSD)) {
	eval 'sub LITTLE_ENDIAN () { &__LITTLE_ENDIAN;}' unless defined(&LITTLE_ENDIAN);
	eval 'sub BIG_ENDIAN () { &__BIG_ENDIAN;}' unless defined(&BIG_ENDIAN);
	eval 'sub PDP_ENDIAN () { &__PDP_ENDIAN;}' unless defined(&PDP_ENDIAN);
	eval 'sub BYTE_ORDER () { &__BYTE_ORDER;}' unless defined(&BYTE_ORDER);
    }
    if((defined(&__BYTE_ORDER) ? &__BYTE_ORDER : 0) == (defined(&__LITTLE_ENDIAN) ? &__LITTLE_ENDIAN : 0)) {
	eval 'sub __LONG_LONG_PAIR {
	    local($HI, $LO) = @_;
    	    eval q($LO, $HI);
	}' unless defined(&__LONG_LONG_PAIR);
    }
 elsif((defined(&__BYTE_ORDER) ? &__BYTE_ORDER : 0) == (defined(&__BIG_ENDIAN) ? &__BIG_ENDIAN : 0)) {
	eval 'sub __LONG_LONG_PAIR {
	    local($HI, $LO) = @_;
    	    eval q($HI, $LO);
	}' unless defined(&__LONG_LONG_PAIR);
    }
}
1;
