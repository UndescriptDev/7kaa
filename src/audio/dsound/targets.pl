my @defines;

## compiler flags ##
@defines = qw( AMPLUS USE_DSOUND USE_DDRAW );
if (defined($debug) && $debug) {
  push (@defines, "DEBUG");
}
## end compiler flags ##

## include paths ##
my @includes = qw( ../../../include );

if (defined($wine_prefix)) {
  push (@includes, "$wine_prefix/include/wine/windows",
                   "$wine_prefix/include/wine/msvcrt");
}
## end include paths ##

my @targets = qw(
dsound_audio.cpp
);

build_targets(\@targets, \@includes, \@defines);