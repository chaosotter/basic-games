#!/usr/bin/perl -w
# -*- perl -*-

#========================================================================
# c64-basic : Conversion utilities for C64 BASIC programs.
#========================================================================

#------------------------------------------------------------------------
# DATA SECTION
#------------------------------------------------------------------------

# token map

%token = ( 0x80 => 'end',     0x81 => 'for',    0x82 => 'next',   0x83 => 'data',
	   0x84 => 'input#',  0x85 => 'input',  0x86 => 'dim',    0x87 => 'read',
	   0x88 => 'let',     0x89 => 'goto',   0x8a => 'run',    0x8b => 'if',
	   0x8c => 'restore', 0x8d => 'gosub',  0x8e => 'return', 0x8f => 'rem',

	   0x90 => 'stop',    0x91 => 'on',     0x92 => 'wait',   0x93 => 'load',
	   0x94 => 'save',    0x95 => 'verify', 0x96 => 'def',    0x97 => 'poke',
	   0x98 => 'print#',  0x99 => 'print',  0x9a => 'cont',   0x9b => 'list',
	   0x9c => 'clr',     0x9d => 'cmd',    0x9e => 'sys',    0x9f => 'open',

	   0xa0 => 'close',   0xa1 => 'get',    0xa2 => 'new',    0xa3 => 'tab(',
	   0xa4 => 'to',      0xa5 => 'fn',     0xa6 => 'spc(',   0xa7 => 'then',
	   0xa8 => 'not',     0xa9 => 'step',   0xaa => '+',      0xab => '-',
	   0xac => '*',       0xad => '/',      0xae => '^',      0xaf => 'and',

	   0xb0 => 'or',      0xb1 => '>',      0xb2 => '=',      0xb3 => '<',
	   0xb4 => 'sgn',     0xb5 => 'int',    0xb6 => 'abs',    0xb7 => 'usr',
	   0xb8 => 'fre',     0xb9 => 'pos',    0xba => 'sqr',    0xbb => 'rnd',
	   0xbc => 'log',     0xbd => 'exp',    0xbe => 'cos',    0xbf => 'sin',

	   0xc0 => 'tan',     0xc1 => 'atn',    0xc2 => 'peek',   0xc3 => 'len',
	   0xc4 => 'str$',    0xc5 => 'val',    0xc6 => 'asc',    0xc7 => 'chr$',
	   0xc8 => 'left$',   0xc9 => 'right$', 0xca => 'mid$',   0xcb => 'go' );


# PETSCII map (C64 version)

%cmap =  ( 0x00 => '{x00}',     0x01 => '{x01}',      0x02 => '{x02}',     0x03 => '{x03}',
	   0x04 => '{x04}',     0x05 => '{wht}',      0x06 => '{x06}',     0x07 => '{x07}',
	   0x08 => '{shifton}', 0x09 => '{shiftoff}', 0x0a => '{x0a}',     0x0b => '{x0b}',
	   0x0c => '{x0c}',     0x0d => '{return}',   0x0e => '{so}',      0x0f => '{x0f}',

	   0x10 => '{x10}',     0x11 => '{down}',     0x12 => '{rvs}',     0x13 => '{home}',
	   0x14 => '{del}',     0x15 => '{x15}',      0x16 => '{x16}',     0x17 => '{x17}',
	   0x18 => '{x18}',     0x19 => '{x19}',      0x1a => '{x1a}',     0x1b => '{x1b}',
	   0x1c => '{red}',     0x1d => '{right}',    0x1e => '{grn}',     0x1f => '{blu}',

	   0x20 => '{space}',   0x21 => '!',          0x22 => '"',         0x23 => '#',
	   0x24 => '$',         0x25 => '%',          0x26 => '&',         0x27 => "'",
	   0x28 => '(',         0x29 => ')',          0x2a => '*',         0x2b => '+',
	   0x2c => ',',         0x2d => '-',          0x2e => '.',         0x2f => '/',

	   0x30 => '0',         0x31 => '1',          0x32 => '2',         0x33 => '3',
	   0x34 => '4',         0x35 => '5',          0x36 => '6',         0x37 => '7',
	   0x38 => '8',         0x39 => '9',          0x3a => ':',         0x3b => ';',
	   0x3c => '<',         0x3d => '=',          0x3e => '>',         0x3f => '?',

	   0x40 => '@',         0x41 => 'a',          0x42 => 'b',         0x43 => 'c',
	   0x44 => 'd',         0x45 => 'e',          0x46 => 'f',         0x47 => 'g',
	   0x48 => 'h',         0x49 => 'i',          0x4a => 'j',         0x4b => 'k',
	   0x4c => 'l',         0x4d => 'm',          0x4e => 'n',         0x4f => 'o',

	   0x50 => 'p',         0x51 => 'q',          0x52 => 'r',         0x53 => 's',
	   0x54 => 't',         0x55 => 'u',          0x56 => 'v',         0x57 => 'w',
	   0x58 => 'x',         0x59 => 'y',          0x5a => 'z',         0x5b => '[',
	   0x5c => '{#}',       0x5d => ']',          0x5e => '^',         0x5f => '{<-}',

	   0x60 => '{x60}',     0x61 => '{x61}',      0x62 => '{x62}',     0x63 => '{x63}',
	   0x64 => '{x64}',     0x65 => '{x65}',      0x66 => '{x66}',     0x67 => '{x67}',
	   0x68 => '{x68}',     0x69 => '{x69}',      0x6a => '{x6a}',     0x6b => '{x6b}',
	   0x6c => '{x6c}',     0x6d => '{x6d}',      0x6e => '{x6e}',     0x6f => '{x6f}',

	   0x70 => '{x70}',     0x71 => '{x71}',      0x72 => '{x72}',     0x73 => '{x73}',
	   0x74 => '{x74}',     0x75 => '{x75}',      0x76 => '{x76}',     0x77 => '{x77}',
	   0x78 => '{x78}',     0x79 => '{x79}',      0x7a => '{x7a}',     0x7b => '{x7b}',
	   0x7c => '{x7c}',     0x7d => '{x7d}',      0x7e => '{x7e}',     0x7f => '{x7f}',

	   0x80 => '{x80}',     0x81 => '{c1}',       0x82 => '{x82}',     0x83 => '{x83}',
	   0x84 => '{x84}',     0x85 => '{f1}',       0x86 => '{f3}',      0x87 => '{f5}',
	   0x88 => '{f7}',      0x89 => '{f2}',       0x8a => '{f4}',      0x8b => '{f6}',
	   0x8c => '{f8}',      0x8d => '{lf}',       0x8e => '{shiftin}', 0x8f => '{x8f}',

	   0x90 => '{blk}',     0x91 => '{up}',       0x92 => '{off}',     0x93 => '{clr}',
	   0x94 => '{ins}',     0x95 => '{c2}',       0x96 => '{c3}',      0x97 => '{c4}',
	   0x98 => '{c5}',      0x99 => '{c6}',       0x9a => '{c7}',      0x9b => '{c8}',
	   0x9c => '{pur}',     0x9d => '{left}',     0x9e => '{yel}',     0x9f => '{cyn}',

	   0xa0 => '{sspace}',  0xa1 => '{ck}',       0xa2 => '{ci}',      0xa3 => '{ct}',
	   0xa4 => '{c@}',      0xa5 => '{cg}',       0xa6 => '{c+}',      0xa7 => '{cm}',
	   0xa8 => '{s#}',      0xa9 => '{c#}',       0xaa => '{cn}',      0xab => '{cq}',
	   0xac => '{cd}',      0xad => '{cz}',       0xae => '{cs}',      0xaf => '{cp}',

	   0xb0 => '{ca}',      0xb1 => '{ce}',       0xb2 => '{cr}',      0xb3 => '{cw}',
	   0xb4 => '{ch}',      0xb5 => '{cj}',       0xb6 => '{cl}',      0xb7 => '{cy}',
	   0xb8 => '{cu}',      0xb9 => '{co}',       0xba => '{s@}',      0xbb => '{cf}',
	   0xbc => '{cc}',      0xbd => '{cx}',       0xbe => '{cv}',      0xbf => '{cb}',

	   0xc0 => '{s*}',      0xc1 => 'A',          0xc2 => 'B',         0xc3 => 'C',
	   0xc4 => 'D',         0xc5 => 'E',          0xc6 => 'F',         0xc7 => 'G',
	   0xc8 => 'H',         0xc9 => 'I',          0xca => 'J',         0xcb => 'K',
	   0xcc => 'L',         0xcd => 'M',          0xce => 'N',         0xcf => 'O',

	   0xd0 => 'P',         0xd1 => 'Q',          0xd2 => 'R',         0xd3 => 'S',
	   0xd4 => 'T',         0xd5 => 'U',          0xd6 => 'V',         0xd7 => 'W',
	   0xd8 => 'X',         0xd9 => 'Y',          0xda => 'Z',         0xdb => '{s+}',
	   0xdc => '{c-}',      0xdd => '{s-}',       0xde => '{xde}',     0xdf => '{c*}',

	   0xe0 => '{xe0}',     0xe1 => '{xe1}',      0xe2 => '{xe2}',     0xe3 => '{xe3}',
	   0xe4 => '{xe4}',     0xe5 => '{xe5}',      0xe6 => '{xe6}',     0xe7 => '{xe7}',
	   0xe8 => '{xe8}',     0xe9 => '{xe9}',      0xea => '{xea}',     0xeb => '{xeb}',
	   0xec => '{xec}',     0xed => '{xed}',      0xee => '{xee}',     0xef => '{xef}',

	   0xf0 => '{xf0}',     0xf1 => '{xf1}',      0xf2 => '{xf2}',     0xf3 => '{xf3}',
	   0xf4 => '{xf4}',     0xf5 => '{xf5}',      0xf6 => '{xf6}',     0xf7 => '{xf7}',
	   0xf8 => '{xf8}',     0xf9 => '{xf9}',      0xfa => '{xfa}',     0xfb => '{xfb}',
	   0xfc => '{xfc}',     0xfd => '{xfd}',      0xfe => '{xfe}',     0xff => '{pi}' );


#------------------------------------------------------------------------
# MAIN PROGRAM
#------------------------------------------------------------------------

# build the reverse character map
foreach $key (keys %cmap) {
    die "$key $cmap{$key}" if defined $rcmap{$cmap{$key}};
    $rcmap{$cmap{$key}} = $key;
}

# build the reverse token map
foreach $key (keys %token) {
    die "$key $token{$key}" if defined $rtoken{$token{$key}};
    $rtoken{$token{$key}} = $key;
}

# present usage information if necessary
if (@ARGV == 0) {
    print STDERR "Usage: $0 to-b64 {.PRG file} {.B64 file}  -- convert PRG->B64\n";
    print STDERR "       $0 to-prg {.B64 file} {.PRG file}  -- convert B64->PRG\n";
    print STDERR "       $0 check  {.B64 file}              -- Compute! checksum B64\n";
    exit;
}
($command) = @ARGV;

# dispatch on the command type
   if ($command eq 'to-b64') { &command_to_b64($ARGV[1], $ARGV[2]); }
elsif ($command eq 'to-prg') { &command_to_prg($ARGV[1], $ARGV[2]); }
elsif ($command eq 'check')  { &command_check ($ARGV[1]);           }
else                         { die "Unknown command: $command\n";   }


#------------------------------------------------------------------------
# void command_check(string path_b64);
#
# Prints the Compute! checksums for a .B64 file.
#------------------------------------------------------------------------
sub command_check {

    # get a hold of my parameters
    my ($path_b64) = @_;

    # read in the .B64 file
    open IN, $path_b64;
    @lines = <IN>;
    close IN;

    # for each line
    foreach $line (@lines) {

	# get the line number
	chomp $line;
	($number) = $line =~ /^(\d+)/;

	# replace the curly instructions
	$line =~ s/{([^}]+)}/&sub_curly($1)/ge;

	# replace the lowercase letters and spaces
	$line =~ tr/a-z/A-Z/;
	$line =~ s/ //g;

	# find the sum
	$sum = 0;
	for ($i = 0; $i < length($line); ++$i) {
	    $sum += unpack 'C', substr($line, $i, 1);
	}
	printf "%5d  %3d\n", $number, $sum % 256, $line;
    }
}


#------------------------------------------------------------------------
# void command_to_b64(string path_prg, string path_b64);
#
# Converts a .PRG file to a .B64 file.
#------------------------------------------------------------------------
sub command_to_b64 {

    # get a hold of my parameters
    my ($path_prg, $path_b64) = @_;

    # declare local variables
    my ($buffer, $load, $ptr_line, $ptr_next, $line, $code, $quote);

    # read in the .PRG file
    open IN, $path_prg;
    die unless (sysread(IN, $buffer, -s($path_prg)) == -s($path_prg));
    close IN;

    # open the output file
    open OUT, "> $path_b64";

    # write out the load address
    $load = unpack('v', substr($buffer, 0, 2));
    #print OUT "{load $load}\n";

    # initialize the line pointer
    $ptr_line = 2;

    # for each line
    while (1) {

	# get the next-line pointer and line number
	($ptr_next, $line)  = unpack('vv', substr($buffer, $ptr_line, 4));
	$ptr_line += 4;
	last unless $ptr_next;

	# print the line number
	print OUT "$line ";

	# chew through to the end of the line
	$quote = 0;
	while (substr($buffer, $ptr_line, 1) ne "\0") {

	    # get the next code
	    $code = unpack('C', substr($buffer, $ptr_line, 1));

	    # if we're in quote mode
	    if ($quote) {

		# " : leave quote mode
		if ($code == 0x22) {
		    print OUT &rle_quote(\@quote), '"';
		    @quote = ();
		    $quote = 0;

		# otherwise, add another character
		} else {
		    push @quote, $code;
		}

	    # not in quote mode
	    } else {

		# " : enter quote mode
		if ($code == 0x22) {
		    print OUT '"';
		    $quote = 1;

		# space : print
		} elsif ($code == 0x20) {
		    print OUT ' ';

		# normal ASCII : print
		} elsif (($code > 0x20) && ($code <= 0x5f)) {
		    print OUT $cmap{$code};

		# pi character : print curly
		} elsif ($code == 0xff) {
		    print OUT "{pi}";

		# token : print token
		} elsif ($code >= 0x80) {
		    print OUT $token{$code};
		}
	    }
	    $ptr_line++;
	    last if $ptr_line >= length($buffer);
	}

	# empty unterminated quotes
	if ($quote == 1) {
	    print OUT &rle_quote(\@quote);
	    @quote = ();
	}
	print OUT "\n";

	# jump to the next line
	$ptr_line = $ptr_next - $load + 2;
    }

    # all done!
    return;
}


#------------------------------------------------------------------------
# void command_to_prg(string path_b64, string path_prg);
#
# Converts a .B64 file to a .PRG file.
#------------------------------------------------------------------------
sub command_to_prg {

    # get a hold of my parameters
    my ($path_b64, $path_prg) = @_;

    # declare local variables
    my (@lines, $ptr, $line, $number, $rest, $buffer, $i, $char, $quote);

    # read in the .B64 file
    open IN, $path_b64;
    @lines = <IN>;
    close IN;

    # open the output file
    open OUT, "> $path_prg";

    # write out the load address
    $ptr = 2049;
    print OUT pack('s', $ptr);

    # for each line
    foreach $line (@lines) {

	# get the line number and the rest
	chomp $line;
	($number, $rest) = split /\s+/, $line, 2;
	$buffer = pack('ss', 0, $number);

	# replace the curly instructions
	$rest =~ s/{([^}]+)}/&sub_curly($1)/ge;

	# do the tokenizing
	$quote = 0;
	#print "--> $rest\n";
      loop:
	for ($i = 0; $i < length($rest); ++$i) {

	    # get the character
	    $char = substr($rest, $i, 1);

	    # quoted characters can't be tokens
	    if ($quote) {
		$buffer .= defined($rcmap{$char}) ? pack('C', $rcmap{$char}) : $char;
		$quote   = 0 if ($quote == 1) && ($char eq '"');

	    # otherwise, look for a token
	    } else {
		foreach $token (sort { $b cmp $a } keys %rtoken) {
		    if (substr($rest, $i, length($token)) eq $token) {
			$buffer .= pack('C', $rtoken{$token});
			$i      += length($token) - 1;
			$quote   = 2 if ($token eq 'rem') || ($token eq 'data');
			next loop;
		    }
		}
		$buffer .= defined($rcmap{$char}) ? pack('C', $rcmap{$char}) : $char;
		$quote   = 1 if $char eq '"';
	    }
	}

	# append the null character
	$buffer .= "\0";

	# insert the next-line pointer
	$ptr += length($buffer);
	substr($buffer, 0, 2) = pack('s', $ptr);

	# output the line
	print OUT $buffer;
    }

    # and finish with a zero pointer
    print OUT "\0\0";
}


#------------------------------------------------------------------------
# string rle_quote(listref ls);
#
# Converts a list of byte codes to a string with repetition counts
# included.
#------------------------------------------------------------------------
sub rle_quote {

    # get a hold of my parameters
    my ($ls) = @_;

    # declare local variables
    my ($string, $acc, $count, $code);

    # make sure there's at least one character
    return if @{$ls} == 0;

    # initialize the accumulator
    $string = '';
    $acc    = -1;
    $count  = 0;

    # process the string
    foreach $code (@{$ls}) {

	# continue a count if we can
	if (($cmap{$code} eq $acc) || ("{$cmap{$code}}" eq $acc)) {
	    ++$count;

	# otherwise
	} else {

	    # empty the accumulator if we need to
	    if ($count > 0) {
		$string .= ($count == 1) ? $acc : ('{' . $count . ' ' . substr($acc, 1));
		$acc     = -1;
		$count   = 0;
	    }

	    # start a new accumulator or emit
	       if ($cmap{$code} =~ /^\{/)     { $acc = $cmap{$code};              $count = 1; }
	    elsif ($cmap{$code} =~ /^[A-Z]$/) { $acc = '{' . $cmap{$code} . '}';  $count = 1; }
	    elsif ($cmap{$code} eq ' ')       { $acc = '{space}';                 $count = 1; }
	    else {
		$string .= $cmap{$code};
	    }
	}
    }

    # empty the accumlator if we need to
    if ($count > 0) {
	$string .= ($count == 1) ? $acc : ('{' . $count . ' ' . substr($acc, 1));
    }

    # perform final repairs
    $string =~ s/\{space\}/ /g;
    $string =~ s/\{([A-Z])\}/$1/g;

    # all done!
    return $string;
}


#------------------------------------------------------------------------
# string sub_curly(string curly);
#
# Converts the given inside-curly string back to a PETSCII string.
#------------------------------------------------------------------------
sub sub_curly {

    # get a hold of my parameters
    my ($curly) = @_;

    # declare local variables
    my ($count);

    # find the count
    if ($curly =~ /^\d+/) {
	($count, $curly) = split /\s+/, $curly, 2;
    } else {
	$count = 1;
    }

    # handle the special cases first
       if ($curly eq 'space')   { return ' '                                   x $count; }
    elsif ($curly =~ /^[A-Z]$/) { return pack('C', $rcmap{$curly})             x $count; }
    else                        { return pack('C', $rcmap{'{' . $curly . '}'}) x $count; }
}
