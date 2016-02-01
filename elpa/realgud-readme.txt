Once upon a time in an Emacs far far away and a programming-style
deservedly banished, there was a monolithic Cathederal-like
debugger front-end called gub.  This interfaced with a number of
debuggers, many now dead.  Is there anyone still alive that
remembers sdb from UNIX/32V circa 1980?

This isn't that.  Here we make use of more modern programming
practices, more numerous and smaller files, unit tests, and better
use of Emacs primitives, e.g. buffer marks, buffer-local variables,
structures, rings, hash tables.  Although there is still much to be
desired, this code is more scalable and suitable as a common base for
an Emacs front-end to modern debuggers.

Oh, and because global variables are largely banned, we can support
several simultaneous debug sessions.

See URL `https://github.com/rocky/emacs-dbgr/wiki/Features' for a list
features.


The debuggers we currently support are:

  NAME           INVOCATION**  WHAT
   -----------------------------------
  bashdb         bashdb         bash
  Devel::Trepan  trepan.pl      Perl5
  gdb            realgud:gdb    gdb
  gub            gub            Go SSA debugger
  jdb            realgud:jdb    Java jdb debugger
  kshdb          kshdb          Korn Shell 93u+
  nodejs         nodejs         node.js javascript debugger
  pdb            realgud:pdb    stock C Python debugger
  perldb         realgud:perldb stock Perl5 debugger
  pydb           pydb           slighly enhanced pdb for Python 2.x
  pydbgr         pydbgr         obsolete trepanning debugger for Python 2.x
  rb8-trepanning trepan8        MRI Ruby 1.8 and an unpatched YARV 1.9
  rbx-trepanning trepanx        trepanning debugger for Rubinius Ruby
  remake         remake         GNU Make
  ruby-debug     rdebug         Ruby
  trepanning     trepan         trepanning debugger for a patched Ruby 1.9
  trepanjs       trepanjs       trepanning debugger for nodejs and V8
  trepan2        trepan2        trepanning debugger for Python 2.x
  trepan3k       trepan3k       trepanning debugger for Python 3.x
  zshdb          zshdb          Zsh


**gdb, jdb, perldb, pdb invocations require the realgud: preface to
disambiguate it from older, preexisting Emacs commands in `gud'.
The other invocations also accept realgud: prefaces,
e.g. realgud:bashdb or realgud:rdebug.  Alas there are older
obsolete (i.e. often written by me) Emacs packages out there for
bashdb, kshdb, nodejs, pydb, rdebug, zshdb.

If you don't see your favorite debugger above, see URL
`https://github.com/rocky/emacs-dbgr/wiki/How-to-add-a-new-debugger/'
for how you can add your own.

The debugger is run out of a comint process buffer, or you can use
a `realgud-track-mode' inside an existing shell.

To install you will need a couple of other Emacs packages
installed.  If you install via melpa (`package-install') or
`el-get', these will be pulled in automatically.  See the
installation instructions URL
`https://github.com/rocky/emacs-dbgr/wiki/How-to-Install' for all
the ways to to install and more details on installation.
