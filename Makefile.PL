use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'Acme::Failing',
    AUTHOR        => 'Some Person <person@example.com>',
    VERSION_FROM  => 'lib/Acme/Failing.pm',
    PREREQ_PM     => {
        'Test::More' => 0.96,
    },
    MIN_PERL_VERSION => '5.010000',
    (-d 'xt' and $ENV{AUTOMATED_TESTING} || $ENV{RELEASE_TESTING}) ? (
        test => {
            TESTS => 't/*.t xt/*.t',
        },
    ) : (),
);
