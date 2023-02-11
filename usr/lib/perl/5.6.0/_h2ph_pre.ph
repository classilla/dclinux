# This file was created by h2ph version 2
unless (defined &-Asystem) { sub -Asystem() { &posix } }

unless (defined &_FILE_OFFSET_BITS) { sub _FILE_OFFSET_BITS() { 64 } }

unless (defined &_LARGEFILE_SOURCE) { sub _LARGEFILE_SOURCE() { 1 } }

unless (defined &_POSIX_C_SOURCE) { sub _POSIX_C_SOURCE() { 199506 } }

unless (defined &_POSIX_SOURCE) { sub _POSIX_SOURCE() { 1 } }

unless (defined &__ELF__) { sub __ELF__() { 1 } }

unless (defined &__GNUC_MINOR__) { sub __GNUC_MINOR__() { 1 } }

unless (defined &__GNUC_PATCHLEVEL__) { sub __GNUC_PATCHLEVEL__() { 0 } }

unless (defined &__GNUC__) { sub __GNUC__() { 3 } }

unless (defined &__LITTLE_ENDIAN__) { sub __LITTLE_ENDIAN__() { 1 } }

unless (defined &__SH3__) { sub __SH3__() { 1 } }

unless (defined &__STDC_HOSTED__) { sub __STDC_HOSTED__() { 1 } }

unless (defined &__STDC__) { sub __STDC__() { 1 } }

unless (defined &__linux) { sub __linux() { 1 } }

unless (defined &__linux__) { sub __linux__() { 1 } }

unless (defined &__sh3__) { sub __sh3__() { 1 } }

unless (defined &__sh__) { sub __sh__() { 1 } }

unless (defined &__unix) { sub __unix() { 1 } }

unless (defined &__unix__) { sub __unix__() { 1 } }

unless (defined &linux) { sub linux() { 1 } }

unless (defined &unix) { sub unix() { 1 } }

