require '_h2ph_pre.ph';

unless(defined(&_ENDIAN_H)) {
    die("Never use <bits/endian.h> directly; include <endian.h> instead.");
}
if(defined(&__LITTLE_ENDIAN__)) {
    eval 'sub __BYTE_ORDER () { &__LITTLE_ENDIAN;}' unless defined(&__BYTE_ORDER);
    eval 'sub __FLOAT_WORD_ORDER () { &__LITTLE_ENDIAN;}' unless defined(&__FLOAT_WORD_ORDER);
} else {
    eval 'sub __BYTE_ORDER () { &__BIG_ENDIAN;}' unless defined(&__BYTE_ORDER);
    eval 'sub __FLOAT_WORD_ORDER () { &__BIG_ENDIAN;}' unless defined(&__FLOAT_WORD_ORDER);
}
1;
