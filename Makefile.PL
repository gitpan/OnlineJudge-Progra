use strict;
use warnings;

use 5.008;

use ExtUtils::MakeMaker;
WriteMakefile(
    NAME              => 'OnlineJudge-Progra',
    VERSION_FROM      => 'lib/OnlineJudge/Progra.pm',
    PREREQ_PM         => {  
			'File::Spec::Functions'	=> 3.30,
			'Proc::Killall'			=> 1.0,
			'File::Copy'			=> 2.14,
			'Test::Simple'			=> 1.001002,
			'Cwd'					=> 3.40,
	}, 
    ($] >= 5.005 ?
      (AUTHOR         => 'israel leiva <ilv@cpan.org>') : ()),
);
