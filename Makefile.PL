use 5.010001;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'OnlineJudge::Progra',
    VERSION_FROM      => 'lib/OnlineJudge/Progra.pm', # finds $VERSION
    PREREQ_PM         => {  'File::Spec::Functions' => 3.30,
			'Proc::Killall' => 1.0,
			'File::Copy' => , 2.14}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/OnlineJudge/Progra.pm', # retrieve abstract from module
       AUTHOR         => 'Israel Leiva A. <ileiva@csrg.cl>') : ()),
);
