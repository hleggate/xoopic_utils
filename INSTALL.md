# Xoopic installation

### These are just for guidance...

./configure --prefix=/usr/local/xgrafix_gnu-8 --with-CC=gcc-8 --with-CXX=g++-8

./configure --prefix=/usr/local/xgrafix_gnu-8 --with-CC=gcc-8 --with-CXX=g++-8 --with-X11_LIBDIR=/usr/lib/x86_64-linux-gnu/ --enable-MPI --enable-fulloptimize --program-suffix=_gnu-8


xgrafix
./configure --prefix=/home/staff/hleggate/lib --with-xpm=/usr/lib/x86_64-linux-gnu/config --with-tclconfig=/usr/lib/tcl8.6 --with-tkconfig=/usr/lib/tk8.6 --with-tclsh=/usr/bin --with-tclhdir=/usr/include/tcl8.6 --with-CC=gcc-9 --with-CXX=g++-9

xoopic

./configure --prefix=/home/staff/hleggate/bin --with-xpm=/usr/lib/x86_64-linux-gnu/config --with-tclconfig=/usr/lib/tcl8.6 --with-tkconfig=/usr/lib/tk8.6 --with-tclsh=/usr/bin --with-tclhdir=/usr/include/tcl8.6 --with-XGRAFIX-lib=$HOME/lib/lib -with-XGRAFIX-include=$HOME/lib/include --with-X11_LIBDIR=/usr/lib/x86_64-linux-gnu/ --with-CC=gcc-9 --with-CXX=g++-9 

Latest
xgrafix
./configure./configure --prefix=/home/staff/hleggate/lib --with-xpm=/usr/lib/x86_64-linux-gnu/config --with-tclconfig=/usr/lib/tcl8.6  --with-tkconfig=/usr/lib/tk8.6 --with-tclsh=/usr/bin --with-tclhdir=/usr/include/tcl8.6 --with-CC=gcc-9 --with-CXX=g++-9

xoopic
./configure --prefix=/home/staff/hleggate/bin --with-xpm=/usr/lib/x86_64-linux-gnu/config --with-tclconfig=/usr/lib/tcl8.6 --with-tkconfig=/usr/lib/tk8.6 --with-tclsh=/usr/bin --with-tclhdir=/usr/include/tcl8.6 --with-XGRAFIX-lib=$HOME/lib/lib -with-XGRAFIX-include=$HOME/lib/include --with-X11_LIBDIR=/usr/lib/x86_64-linux-gnu/ --with-CC=gcc-9 --with-CXX=g++-9 --enable-MPI --enable-fulloptimize --program-suffix=_gnu-9

