require '_h2ph_pre.ph';

unless(defined(&_SYS_SYSMACROS_H)) {
    eval 'sub _SYS_SYSMACROS_H () {1;}' unless defined(&_SYS_SYSMACROS_H);
    if(defined (defined(&__GNUC__) ? &__GNUC__ : 0)  && (defined(&__GNUC__) ? &__GNUC__ : 0) >= 2) {
	eval 'sub major {
	    local($dev) = @_;
    	    eval q((((($dev) >> 8) & 0xff)));
	}' unless defined(&major);
	eval 'sub minor {
	    local($dev) = @_;
    	    eval q(((($dev) & 0xff)));
	}' unless defined(&minor);
	eval 'sub makedev {
	    local($major, $minor) = @_;
    	    eval q((( << 8) | ( ($minor))));
	}' unless defined(&makedev);
    } else {
	require 'endian.ph';
	if((defined(&__BYTE_ORDER) ? &__BYTE_ORDER : 0) == (defined(&__BIG_ENDIAN) ? &__BIG_ENDIAN : 0)) {
	    eval 'sub major {
	        local($dev) = @_;
    		eval q(((($dev). $__val[1] >> 8) & 0xff));
	    }' unless defined(&major);
	    eval 'sub minor {
	        local($dev) = @_;
    		eval q((($dev). $__val[1] & 0xff));
	    }' unless defined(&minor);
	    eval 'sub makedev {
	        local($major, $minor) = @_;
    		eval q({ 0, (( << 8) | ( ($minor))) });
	    }' unless defined(&makedev);
	} else {
	    eval 'sub major {
	        local($dev) = @_;
    		eval q(((($dev). $__val[0] >> 8) & 0xff));
	    }' unless defined(&major);
	    eval 'sub minor {
	        local($dev) = @_;
    		eval q((($dev). $__val[0] & 0xff));
	    }' unless defined(&minor);
	    eval 'sub makedev {
	        local($major, $minor) = @_;
    		eval q({ (( << 8) | ( ($minor))), 0});
	    }' unless defined(&makedev);
	}
    }
}
1;
