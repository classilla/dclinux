// The template and inlines for the -*- C++ -*- numeric_limits classes.

// Copyright (C) 1999, 2000 Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 2, or (at your option)
// any later version.

// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License along
// with this library; see the file COPYING.  If not, write to the Free
// Software Foundation, 59 Temple Place - Suite 330, Boston, MA 02111-1307,
// USA.

// As a special exception, you may use this file as part of a free software
// library without restriction.  Specifically, if other files instantiate
// templates or use macros or inline functions from this file, or you compile
// this file and link it with other files to produce an executable, this
// file does not by itself cause the resulting executable to be covered by
// the GNU General Public License.  This exception does not however
// invalidate any other reasons why the executable file might be covered by
// the GNU General Public License.

// Note: this is not a conforming implementation.
// Written by Gabriel Dos Reis <Gabriel.Dos-Reis@cmla.ens-cachan.fr>

//
// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT!
//

//
// ISO 14882:1998
// 18.2.1
//

#ifndef _CPP_NUMERIC_LIMITS
#define _CPP_NUMERIC_LIMITS 1

#include <bits/c++config.h>
#include <bits/std_cfloat.h>

namespace std {

    enum float_round_style {
        round_indeterminate       = -1,
        round_toward_zero         = 0,
        round_to_nearest          = 1,
        round_toward_infinity     = 2,
        round_toward_neg_infinity = 3
    };

    enum float_denorm_style {
        denorm_indeterminate = -1,
        denorm_absent        = 0,
        denorm_present       = 1
    };

    template<typename _Tp> struct numeric_limits {
        static const bool is_specialized = false;

        static _Tp min() throw() { return static_cast<_Tp>(0); }
        static _Tp max() throw() { return static_cast<_Tp>(0); }

        static const int digits = 0;
        static const int digits10 = 0;
        static const bool is_signed = false;
        static const bool is_integer = false;
        static const bool is_exact = false;
        static const int radix = 0;

        static _Tp epsilon() throw() { return static_cast<_Tp>(0); }
        static _Tp round_error() throw() { return static_cast<_Tp>(0); }

        static const int min_exponent = 0;
        static const int min_exponent10 = 0;
        static const int max_exponent = 0;
        static const int max_exponent10 = 0;

        static const bool has_infinity = false;
        static const bool has_quiet_NaN = false;
        static const bool has_signaling_NaN = false;
        static const float_denorm_style has_denorm = denorm_absent;
        static const bool has_denorm_loss = false;

        static _Tp infinity() throw()  { return static_cast<_Tp>(0); }
        static _Tp quiet_NaN() throw() { return static_cast<_Tp>(0); }
        static _Tp signaling_NaN() throw() { return static_cast<_Tp>(0); }
        static _Tp denorm_min() throw() { return static_cast<_Tp>(0); }

        static const bool is_iec559 = false;
        static const bool is_bounded = false;
        static const bool is_modulo = false;

        static const bool traps = false;
        static const bool tinyness_before = false;
        static const float_round_style round_style = round_toward_zero;
    };

    template<typename _Tp> _Tp __limits_infinity();
    template<typename _Tp> _Tp __limits_quiet_NaN();
    template<typename _Tp> _Tp __limits_signaling_NaN();
    template<typename _Tp> _Tp __limits_denorm_min();

} // namespace std

#endif // _CPP_NUMERIC_LIMITS
