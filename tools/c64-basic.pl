#!/usr/bin/perl -w
# -*- perl -*-

#========================================================================
# c64-basic : Conversion utilities for C64 BASIC programs.
#========================================================================

#------------------------------------------------------------------------
# DATA SECTION
#------------------------------------------------------------------------

# token map

%token = ( 0x80 => 'END',     0x81 => 'FOR',    0x82 => 'NEXT',   0x83 => 'DATA',
	   0x84 => 'INPUT#',  0x85 => 'INPUT',  0x86 => 'DIM',    0x87 => 'READ',
	   0x88 => 'LET',     0x89 => 'GOTO',   0x8a => 'RUN',    0x8b => 'IF',
	   0x8c => 'RESTORE', 0x8d => 'GOSUB',  0x8e => 'RETURN', 0x8f => 'REM',

	   0x90 => 'STOP',    0x91 => 'ON',     0x92 => 'WAIT',   0x93 => 'LOAD',
	   0x94 => 'SAVE',    0x95 => 'VERIFY', 0x96 => 'DEF',    0x97 => 'POKE',
	   0x98 => 'PRINT#',  0x99 => 'PRINT',  0x9a => 'CONT',   0x9b => 'LIST',
	   0x9c => 'CLR',     0x9d => 'CMD',    0x9e => 'SYS',    0x9f => 'OPEN',

	   0xa0 => 'CLOSE',   0xa1 => 'GET',    0xa2 => 'NEW',    0xa3 => 'TAB(',
	   0xa4 => 'TO',      0xa5 => 'FN',     0xa6 => 'SPC(',   0xa7 => 'THEN',
	   0xa8 => 'NOT',     0xa9 => 'STEP',   0xaa => '+',      0xab => '-',
	   0xac => '*',       0xad => '/',      0xae => '^',      0xaf => 'AND',

	   0xb0 => 'OR',      0xb1 => '>',      0xb2 => '=',      0xb3 => '<',
	   0xb4 => 'SGN',     0xb5 => 'INT',    0xb6 => 'ABS',    0xb7 => 'USR',
	   0xb8 => 'FRE',     0xb9 => 'POS',    0xba => 'SQR',    0xbb => 'RND',
	   0xbc => 'LOG',     0xbd => 'EXP',    0xbe => 'COS',    0xbf => 'SIN',

	   0xc0 => 'TAN',     0xc1 => 'ATN',    0xc2 => 'PEEK',   0xc3 => 'LEN',
	   0xc4 => 'STR$',    0xc5 => 'VAL',    0xc6 => 'ASC',    0xc7 => 'CHR$',
	   0xc8 => 'LEFT$',   0xc9 => 'RIGHT$', 0xca => 'MID$',   0xcb => 'GO' );


# PETSCII map (C64 version)

%cmap =  ( 0x00 => '{X00}',     0x01 => '{X01}',      0x02 => '{X02}',     0x03 => '{X03}',
	   0x04 => '{X04}',     0x05 => '{WHT}',      0x06 => '{X06}',     0x07 => '{X07}',
	   0x08 => '{SHIFTON}', 0x09 => '{SHIFTOFF}', 0x0a => '{x0A}',     0x0b => '{X0B}',
	   0x0c => '{X0C}',     0x0d => '{RETURN}',   0x0e => '{SO}',      0x0f => '{X0F}',

	   0x10 => '{X10}',     0x11 => '{DOWN}',     0x12 => '{RVS}',     0x13 => '{HOME}',
	   0x14 => '{DEL}',     0x15 => '{X15}',      0x16 => '{X16}',     0x17 => '{X17}',
	   0x18 => '{X18}',     0x19 => '{X19}',      0x1a => '{X1A}',     0x1b => '{X1B}',
	   0x1c => '{RED}',     0x1d => '{RIGHT}',    0x1e => '{GRN}',     0x1f => '{BLU}',

	   0x20 => '{SPACE}',   0x21 => '!',          0x22 => '"',         0x23 => '#',
	   0x24 => '$',         0x25 => '%',          0x26 => '&',         0x27 => "'",
	   0x28 => '(',         0x29 => ')',          0x2a => '*',         0x2b => '+',
	   0x2c => ',',         0x2d => '-',          0x2e => '.',         0x2f => '/',

	   0x30 => '0',         0x31 => '1',          0x32 => '2',         0x33 => '3',
	   0x34 => '4',         0x35 => '5',          0x36 => '6',         0x37 => '7',
	   0x38 => '8',         0x39 => '9',          0x3a => ':',         0x3b => ';',
	   0x3c => '<',         0x3d => '=',          0x3e => '>',         0x3f => '?',

	   0x40 => '@',         0x41 => 'A',          0x42 => 'B',         0x43 => 'C',
	   0x44 => 'D',         0x45 => 'E',          0x46 => 'F',         0x47 => 'G',
	   0x48 => 'H',         0x49 => 'I',          0x4a => 'J',         0x4b => 'K',
	   0x4c => 'L',         0x4d => 'M',          0x4e => 'N',         0x4f => 'O',

	   0x50 => 'P',         0x51 => 'Q',          0x52 => 'R',         0x53 => 'S',
	   0x54 => 'T',         0x55 => 'U',          0x56 => 'V',         0x57 => 'W',
	   0x58 => 'X',         0x59 => 'Y',          0x5a => 'Z',         0x5b => '[',
	   0x5c => '{#}',       0x5d => ']',          0x5e => '^',         0x5f => '{<-}',

	   0x60 => '{X60}',     0x61 => '{X61}',      0x62 => '{X62}',     0x63 => '{X63}',
	   0x64 => '{X64}',     0x65 => '{X65}',      0x66 => '{X66}',     0x67 => '{X67}',
	   0x68 => '{X68}',     0x69 => '{X69}',      0x6a => '{X6A}',     0x6b => '{X6B}',
	   0x6c => '{X6C}',     0x6d => '{X6D}',      0x6e => '{X6E}',     0x6f => '{X6F}',

	   0x70 => '{X70}',     0x71 => '{X71}',      0x72 => '{X72}',     0x73 => '{X73}',
	   0x74 => '{X74}',     0x75 => '{X75}',      0x76 => '{X76}',     0x77 => '{X77}',
	   0x78 => '{X78}',     0x79 => '{X79}',      0x7a => '{X7A}',     0x7b => '{X7B}',
	   0x7c => '{X7C}',     0x7d => '{X7D}',      0x7e => '{X7E}',     0x7f => '{X7F}',

	   0x80 => '{X80}',     0x81 => '{C1}',       0x82 => '{X82}',     0x83 => '{X83}',
	   0x84 => '{X84}',     0x85 => '{F1}',       0x86 => '{F3}',      0x87 => '{F5}',
	   0x88 => '{F7}',      0x89 => '{F2}',       0x8a => '{F4}',      0x8b => '{F6}',
	   0x8c => '{F8}',      0x8d => '{LF}',       0x8e => '{SHIFTIN}', 0x8f => '{X8F}',

	   0x90 => '{BLK}',     0x91 => '{UP}',       0x92 => '{OFF}',     0x93 => '{CLR}',
	   0x94 => '{INS}',     0x95 => '{C2}',       0x96 => '{C3}',      0x97 => '{C4}',
	   0x98 => '{C5}',      0x99 => '{C6}',       0x9a => '{C7}',      0x9b => '{C8}',
	   0x9c => '{PUR}',     0x9d => '{LEFT}',     0x9e => '{YEL}',     0x9f => '{CYN}',

	   0xa0 => '{SSPACE}',  0xa1 => '{CK}',       0xa2 => '{CI}',      0xa3 => '{CT}',
	   0xa4 => '{C@}',      0xa5 => '{CG}',       0xa6 => '{C+}',      0xa7 => '{CM}',
	   0xa8 => '{S#}',      0xa9 => '{C#}',       0xaa => '{CN}',      0xab => '{CQ}',
	   0xac => '{CD}',      0xad => '{CZ}',       0xae => '{CS}',      0xaf => '{CP}',

	   0xb0 => '{CA}',      0xb1 => '{CE}',       0xb2 => '{CR}',      0xb3 => '{CW}',
	   0xb4 => '{CH}',      0xb5 => '{CJ}',       0xb6 => '{CL}',      0xb7 => '{CY}',
	   0xb8 => '{CU}',      0xb9 => '{CO}',       0xba => '{S@}',      0xbb => '{CF}',
	   0xbc => '{CC}',      0xbd => '{CX}',       0xbe => '{CV}',      0xbf => '{CB}',

	   0xc0 => '{S*}',      0xc1 => 'a',          0xc2 => 'b',         0xc3 => 'c',
	   0xc4 => 'd',         0xc5 => 'e',          0xc6 => 'f',         0xc7 => 'g',
	   0xc8 => 'h',         0xc9 => 'i',          0xca => 'j',         0xcb => 'k',
	   0xcc => 'l',         0xcd => 'm',          0xce => 'n',         0xcf => 'o',

	   0xd0 => 'p',         0xd1 => 'q',          0xd2 => 'r',         0xd3 => 's',
	   0xd4 => 't',         0xd5 => 'u',          0xd6 => 'v',         0xd7 => 'w',
	   0xd8 => 'x',         0xd9 => 'y',          0xda => 'z',         0xdb => '{S+}',
	   0xdc => '{C-}',      0xdd => '{S-}',       0xde => '{XDE}',     0xdf => '{C*}',

	   0xe0 => '{XE0}',     0xe1 => '{XE1}',      0xe2 => '{XE2}',     0xe3 => '{XE3}',
	   0xe4 => '{XE4}',     0xe5 => '{XE5}',      0xe6 => '{XE6}',     0xe7 => '{XE7}',
	   0xe8 => '{XE8}',     0xe9 => '{XE9}',      0xea => '{XEA}',     0xeb => '{XEB}',
	   0xec => '{XEC}',     0xed => '{XED}',      0xee => '{XEE}',     0xef => '{XEF}',

	   0xf0 => '{XF0}',     0xf1 => '{XF1}',      0xf2 => '{XF2}',     0xf3 => '{XF3}',
	   0xf4 => '{XF4}',     0xf5 => '{XF5}',      0xf6 => '{XF6}',     0xf7 => '{XF7}',
	   0xf8 => '{XF8}',     0xf9 => '{XF9}',      0xfa => '{XFA}',     0xfb => '{XFB}',
	   0xfc => '{XFC}',     0xfd => '{XFD}',      0xfe => '{XFE}',     0xff => '{PI}' );


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
	printf "%5d  %3d\n", $number, $sum % 256;
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
		    print OUT "{PI}";

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
			$quote   = 2 if ($token eq 'REM') || ($token eq 'DATA');
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
