# Enable 256 colors
#set -x TERM "xterm-256color"
set -x TERM "xterm-color"
# for LLVM
set -x LLVM_ROOT $HOME/Research/llvm
set -x LLVM_OBJ $LLVM_ROOT/llvm-obj
# for defens
set -x DEFENS_ROOT $HOME/Research/defens
# for dynamorio
set -x DYNAMORIO_ROOT $HOME/Research/dynamorio/dynamorio-svn
# for pin
set -x PIN_HOME $HOME/Research/pin/pin-2.8-37300-gcc.3.4.6-ia32_intel64-linux
# for pebil
set -x PEBIL_ROOT $HOME/Research/pebil/PEBIL-git
#set -x PEBIL_LIB $PEBIL_ROOT/lib
#set -x PEBIL_BIN $PEBIL_ROOT/bin
#set -x PEBIL_GFORT gfortran
# for repository
set -x APPS_DIR $HOME/Research/apps
set -x TERN_ROOT $HOME/Research/tern
set -x SLICER_ROOT $HOME/Research/slicer
set -x BC2BDD_ROOT $HOME/Research/bc2bdd
set -x RCS_COMMON_ROOT $HOME/Research/rcs-common
set -x PATH $DYNAMORIO_ROOT/../install/bin32 $LLVM_ROOT/install/bin $LLVM_ROOT/scripts $PIN_HOME $PEBIL_ROOT/bin $PEBIL_ROOT/scripts $TERN_ROOT/klee/Release/bin $SATURN_ROOT/bin /usr/games $PATH
set -x LD_LIBRARY_PATH . $LLVM_ROOT/install/lib $PEBIL_ROOT/lib

set CDPATH .
alias time 'time -p'
