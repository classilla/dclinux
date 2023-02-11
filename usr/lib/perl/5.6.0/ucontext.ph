require '_h2ph_pre.ph';

unless(defined(&_UCONTEXT_H)) {
    eval 'sub _UCONTEXT_H () {1;}' unless defined(&_UCONTEXT_H);
    require 'features.ph';
    require 'sys/ucontext.ph';
}
1;
