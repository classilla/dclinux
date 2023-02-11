require '_h2ph_pre.ph';

unless(defined(&__ASM_SH_SOCKIOS_H)) {
    eval 'sub __ASM_SH_SOCKIOS_H () {1;}' unless defined(&__ASM_SH_SOCKIOS_H);
    eval 'sub FIOGETOWN () { &_IOR(ord(\'f\'), 123, \'int\');}' unless defined(&FIOGETOWN);
    eval 'sub FIOSETOWN () { &_IOW(ord(\'f\'), 124, \'int\');}' unless defined(&FIOSETOWN);
    eval 'sub SIOCATMARK () { &_IOR(ord(\'s\'), 7, \'int\');}' unless defined(&SIOCATMARK);
    eval 'sub SIOCSPGRP () { &_IOW(ord(\'s\'), 8,  &pid_t);}' unless defined(&SIOCSPGRP);
    eval 'sub SIOCGPGRP () { &_IOR(ord(\'s\'), 9,  &pid_t);}' unless defined(&SIOCGPGRP);
    eval 'sub SIOCGSTAMP () { &_IOR(ord(\'s\'), 100, 1;}' unless defined(&SIOCGSTAMP);
}
1;
