require '_h2ph_pre.ph';

unless(defined(&_SYS_RESOURCE_H)) {
    eval 'sub _SYS_RESOURCE_H () {1;}' unless defined(&_SYS_RESOURCE_H);
    require 'features.ph';
    require 'bits/resource.ph';
    unless(defined(&__id_t_defined)) {
	eval 'sub __id_t_defined () {1;}' unless defined(&__id_t_defined);
    }
    if(defined(&__USE_GNU)) {
    } else {
    }
    unless(defined(&__USE_FILE_OFFSET64)) {
    } else {
	if(defined(&__REDIRECT)) {
	} else {
	    eval 'sub getrlimit () { &getrlimit64;}' unless defined(&getrlimit);
	}
    }
    if(defined(&__USE_LARGEFILE64)) {
    }
    unless(defined(&__USE_FILE_OFFSET64)) {
    } else {
	if(defined(&__REDIRECT)) {
	} else {
	    eval 'sub setrlimit () { &setrlimit64;}' unless defined(&setrlimit);
	}
    }
    if(defined(&__USE_LARGEFILE64)) {
    }
}
1;
