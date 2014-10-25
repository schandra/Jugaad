#!/usr/bin/perl


if ( (scalar(@ARGV) != 1 ) || ($ARGV[0] =~ /[^0-9]/i ) )

{
	if( $ARGV[0] =~ /[^0-9]/i )

	{

		print "\n\t First parameter <Number of Rows> should be an integer value. \n"	

	}

	&printusage;

}


else

{	 


# Third Table "t3.txt"


		$file = 't3.txt';

		open ( FILE_INPUT, ">$file");

		$oldhandle = select(FILE_INPUT);

		$s_int = 0;


	#Write data to file


		for ($count=0; $count < $ARGV[0]; $count++)

		{

			$s_int = &get_next_s_int($count,$ARGV[0]);

			$char20 = &get_next_char20($count);


			print ($char20);			#char (20)

			print ("\t",$char20);			#char (20)

			print ("\t",$s_int);			#int

			print ("\n");

		}		


		select ($oldhandle);

		close (FILE_INPUT);


# Fourth Table "t4.txt"


		$file = 't4.txt';

		open ( FILE_INPUT, ">$file");

		$oldhandle = select(FILE_INPUT);


		$s_int = 0;	

		$current_date = "1000-01-00";


	#Write data to file


		for ($count=0; $count < $ARGV[0]; $count++)

		{

			$char20 = &get_next_char20($count);

			$char25 = &get_next_char25($count);

			$s_int = &get_next_s_int($count,$ARGV[0]);

			$current_date = &get_next_date($current_date);


			print ($char20);			#char (20)

			print ("\t",$char25);			#char (25)

			print ("\t",$current_date);		#date 

			print ("\t",$s_int);			#int

			print ("\t",$char25);			#char (25)

			print ("\t",$s_int);			#int

			print ("\n");

		}		


		select ($oldhandle);

		close (FILE_INPUT);

	




# Seventh Table "t7.txt"


		$file = 't7.txt';

		open ( FILE_INPUT, ">$file");

		$oldhandle = select(FILE_INPUT);

		$current_date = "1000-01-00";


	#Write data to file

		for ($count=0; $count < $ARGV[0]; $count++)

		{


			$char20 = &get_next_char20($count);

			$char25 = &get_next_char25($count);

			$s_int = &get_next_s_int($count,$ARGV[0]);

			$current_date = &get_next_date($current_date);


			print ($char20);			#Text 

			print ("\t",$char25);			#Text 

			print ("\t",$date);			#Date

			print ("\t",$s_int);			#int

			print ("\n");

		}		


		select ($oldhandle);

		close (FILE_INPUT);


# Ninth Table "t9.txt"


		$file = 't9.txt';

		open ( FILE_INPUT, ">$file");

		$oldhandle = select(FILE_INPUT);

		
	#Data type declarations


		$s_int = 0;	


	#Write data to file

		for ($count=0; $count < $ARGV[0]; $count++)

		{

			$char25 = &get_next_char25($count);

			$s_int = &get_next_s_int($count,$ARGV[0]);


			print ($s_int);			#int

			print ("\t",$char25);			#char (25)

			print ("\t",$s_int);			#int

			print ("\n");

		}


		select ($oldhandle);

		close (FILE_INPUT);





# Thirteenth Table "t13.txt"


		$file = 't13.txt';

		open ( FILE_INPUT, ">$file");

		$oldhandle = select(FILE_INPUT);

		

	#Write data to file

		for ($count=0; $count < $ARGV[0]; $count++)

		{

			$geometry = &get_next_geometry($count);

			$point = &get_next_point($count);

			$linestring = &get_next_linestring($count);

			$polygon = &get_next_polygon($count);

			$geometry_collection = &get_next_geometry_collection($count);

			$multipoint = &get_next_multipoint($count);

			$multilinestring = &get_next_multilinestring($count);

			$multipolygon = &get_next_multipolygon($count);


			print ($geometry);		#geometry

			print ("\t",$point);			#point 

			print ("\t",$linestring);			#linestring 

			print ("\t",$polygon);			#polygon 

			print ("\t",$geometry_collection);	#geometrycollection 

			print ("\t",$multipoint);		#multipoint 

			print ("\t",$multilinestring);		#multilinestring 

			print ("\t",$multipolygon);		#multipolygon 

			print ("\n");
		}


		select ($oldhandle);

		close (FILE_INPUT);


}



#Subroutines START HERE

	

sub get_next_tinytext

{

	my($count) = @_;

	my($default_char) = "a";

	$index = $count % 20 ;


	@ascii = ("\140","\141","\142","\143","\144","\145","\146","\147","\136","\137",

		"\150","\151","\152","\153","\154","\155","\156","\157","\134","\135");



	my($quotient) = $count / 100;

	$quotient =~ s/\.[0-9]*// ;

	$tinytext = $default_char.$ascii[$index].$quotient;


	return($tinytext);

}



sub get_next_char20

{

	my($count) = @_;

	my($default_char) = "a";

	$index = $count % 20 ;


	@ascii = ("\140","\141","\142","\143","\144","\145","\146","\147","\136","\137",

		"\150","\151","\152","\153","\154","\155","\156","\157","\134","\135");


	$longtext = $default_char.$ascii[$index].$default_char x $index;

	return($longtext);

}




sub get_next_char25

{

	my($count) = @_;

	my($default_char) = "a";

	$index = $count % 20;


	@ascii = ("\140","\141","\142","\143","\144","\145","\146","\147","\136","\137",

		"\150","\151","\152","\153","\154","\155","\156","\157","\134","\135");


	$longtext = $default_char.$ascii[$index].$default_char x $index;

	return($longtext);

}




sub get_next_year

{

	my($next_year) = @_;

	if (($next_year >= 1901) && ($next_year < 2155))

	{

		$next_year++;

	}


	else

	{

		$next_year = 1901;

	}

	return($next_year);

}



sub get_next_s_int

{

	my($count,$maxsize) = @_;

	$s_int = int($count - ($maxsize/2));

	return($s_int);

}


sub get_next_date
{

	my($date) = @_ ;

	$pattern = '-';

	@words = split(/$pattern/, $date);

	$year = $words[0];

	$month = $words[1];

	$day = $words[2];


	if (($month == 2) )

	{

		if($day == 28)	

		{

			if($year % 4 == 0)

			{

				$day++;

			}

			else

			{

				$day = 01;

				$month++;

			}

		}


		elsif($day == 29)

		{

			$day = 01;

			$month++;

		}

		

		else

		{	

			$day++;

		}

	}


	elsif($day == 30)

	{

		if (($month == 1) || ($month == 3) || ($month == 5) || ($month == 7) || ($month == 8) || ($month == 10) || ($month == 12))

		{

			$day++;

		}

		else

		{

			$day = 01;

			$month++;

		}

	}


	elsif($day == 31)

	{

		if ($month == 12)

		{

			$day = 01;

			$month = 01;

			

			if($year < 9999)

			{

				$year++;

			}

			else

			{

				$year = 1000;

			}

		}


		else

		{

			$day = 01;

			$month++;

		}

	}

	

	else

	{

		$day++;

	}

	

	$date = $year."-".$month."-".$day;	

	return($date);

}




sub get_next_s_date

{

	my($date) = @_ ;

	$pattern = '-';

	@words = split(/$pattern/, $date);


	$year = "$words[0]";

	$month = "$words[1]";

	$day = "$words[2]";


	if (($month == "02") )

	{

		if($day == "28")	

		{

			if($year =~ /[0-9][0-9]00/)

			{

				if($year % 400 == 0)

				{

					$day++;

				}

				else

				{

					$day = 01;

					$month++;

				}

			}

				

			else

			{

				if($year % 4 == 0)

				{

					$day++;

				}	

				else

				{

					$day = 01;

					$month++;

				}

			}		

		}



		elsif($day == "29")

		{

			$day = "01";

			$month++;

		}

		

		else

		{	

			$day++;

		}

	}


	elsif($day == "30")

	{

		if (($month == "01") || ($month == "03") || ($month == "05") || ($month == "07") || ($month == "08") || ($month == "10") || ($month == "12"))

		{

			$day++;

		}

		else

		{

			$day = "01";

			$month++;

		}

	}


	elsif($day == "31")

	{

		if ($month == "12")

		{

			$day = "01";

			$month = "01";

			

			if($year < "2036")

			{

				$year = $year + "0001";

			}

			else

			{

				$year = "1970";

			}

		}


		else

		{

			$day = "01";

			$month++;

		}

	}

	

	else

	{

		$day++;

	}


	if($month !~ /[0-9][0-9]/)

	{

		$month = "0".$month;

	}

	

	if($day !~ /[0-9][0-9]/)

	{

		$day = "0".$day;

	}	

	

	$date = "$year"."-"."$month"."-"."$day";	

	

	return($date);

}



sub printusage

{

	print "\n\nUsage: DataGen <Number of Rows>";

	print "\n\n<Number of Rows>: The number of rows in the table ".

	"\n\nE.g. DataGen 5000".

	"\n\nThis will generate 11 text files containing 5000" .

	" records each for the 11 types of tables.";

}



sub get_next_geometry

{

	my($count) = @_;

	$index = $count % 20 ;


	@ascii = ('\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�?\0\0\0\0\0\0�?\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@',
	
'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�?\0\0\0\0\0\0�?\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0 @\0\0\0\0\0\0 @',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0 @\0\0\0\0\0\0 @\0\0\0\0\0\0"@\0\0\0\0\0\0"@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 @\0\0\0\0\0\0 @\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0$@\0\0\0\0\0\0$@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\04@\0\0\0\0\0\04@\0\0\0\0\0\0>@\0\0\0\0\0\0>@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04@\0\0\0\0\0\04@\0\0\0\0\0\0>@\0\0\0\0\0\0>@\0\0\0\0\0\0D@\0\0\0\0\0\0D@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>@\0\0\0\0\0\0>@\0\0\0\0\0\0D@\0\0\0\0\0\0D@\0\0\0\0\0\0I@\0\0\0\0\0\0I@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D@\0\0\0\0\0\0D@\0\0\0\0\0\0I@\0\0\0\0\0\0I@\0\0\0\0\0\0N@\0\0\0\0\0\0N@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0I@\0\0\0\0\0\0I@\0\0\0\0\0\0N@\0\0\0\0\0\0N@\0\0\0\0\0�Q@\0\0\0\0\0�Q@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0N@\0\0\0\0\0\0N@\0\0\0\0\0�Q@\0\0\0\0\0�Q@\0\0\0\0\0\0T@\0\0\0\0\0\0T@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Q@\0\0\0\0\0�Q@\0\0\0\0\0\0T@\0\0\0\0\0\0T@\0\0\0\0\0�V@\0\0\0\0\0�V@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T@\0\0\0\0\0\0T@\0\0\0\0\0�V@\0\0\0\0\0�V@\0\0\0\0\0\0Y@\0\0\0\0\0\0Y@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�V@\0\0\0\0\0�V@\0\0\0\0\0\0Y@\0\0\0\0\0\0Y@\0\0\0\0\0�[@\0\0\0\0\0�[@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Y@\0\0\0\0\0\0Y@\0\0\0\0\0�[@\0\0\0\0\0�[@\0\0\0\0\0\0^@\0\0\0\0\0\0^@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0i@\0\0\0\0\0\0i@\0\0\0\0\0�r@\0\0\0\0\0�r@\0\0\0\0\0\0y@\0\0\0\0\0\0y@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�r@\0\0\0\0\0\0Y@\0\0\0\0\0\0y@\0\0\0\0\0\0y@\0\0\0\0\0@@\0\0\0\0\0@@');


	return($ascii[$index]);

}



sub get_next_point

{

	my($count) = @_;

	$index = $count % 20 ;


	@ascii = ('\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0$@',

'\0\0\0\0\0\0\0\0\0\0\0\0\04@\0\0\0\0\0\04@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0>@\0\0\0\0\0\0>@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0D@\0\0\0\0\0\0D@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0I@\0\0\0\0\0\0I@',

'\0\0\0\0\0\0\0\0\0\0\0\0\09@\0\0\0\0\0\0.@',

'\0\0\0\0\0\0\0\0\0\0\0\0�A@\0\0\0\0\0\0.@',

'\0\0\0\0\0\0\0\0\0\0\0\0�K@\0\0\0\0\0\09@',

'\0\0\0\0\0\0\0\0\0\0\0\0�K@\0\0\0\0\0�A@',

'\0\0\0\0\0\0\0\0\0\0\0\0�K@\0\0\0\0\0�F@',

'\0\0\0\0\0\0\0\0\0\0\0\0�K@\0\0\0\0\0�K@',

'\0\0\0\0\0\0\0\0\0\0\0\0�K@\0\0\0\0\0@P@',

'\0\0\0\0\0\0\0\0\0\0\0\0�K@\0\0\0\0\0�R@',

'\0\0\0\0\0\0\0\0\0\0\0\0\09@\0\0\0\0\0\0.@',

'\0\0\0\0\0\0\0\0\0\0\0\0�K@\0\0\0\0\0@U@',

'\0\0\0\0\0\0\0\0\0\0\0\0�K@\0\0\0\0\0�W@',

'\0\0\0\0\0\0\0\0\0\0\0\0@P@\0\0\0\0\0�W@',

'\0\0\0\0\0\0\0\0\0\0\0\0�R@\0\0\0\0\0�W@',

'\0\0\0\0\0\0\0\0\0\0\0\0@U@\0\0\0\0\0�W@',

'\0\0\0\0\0\0\0\0\0\0\0\0�W@\0\0\0\0\0�W@');


	return($ascii[$index]);

}


sub get_next_linestring

{

	my($count) = @_;

	$index = $count % 20 ;


	@ascii = ('\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�?\0\0\0\0\0\0�?\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�?\0\0\0\0\0\0�?\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0 @\0\0\0\0\0\0 @',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 @\0\0\0\0\0\0 @\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0$@\0\0\0\0\0\0$@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\04@\0\0\0\0\0\04@\0\0\0\0\0\0>@\0\0\0\0\0\0>@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04@\0\0\0\0\0\04@\0\0\0\0\0\0>@\0\0\0\0\0\0>@\0\0\0\0\0\0D@\0\0\0\0\0\0D@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>@\0\0\0\0\0\0>@\0\0\0\0\0\0D@\0\0\0\0\0\0D@\0\0\0\0\0\0I@\0\0\0\0\0\0I@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D@\0\0\0\0\0\0D@\0\0\0\0\0\0I@\0\0\0\0\0\0I@\0\0\0\0\0\0N@\0\0\0\0\0\0N@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0I@\0\0\0\0\0\0I@\0\0\0\0\0\0N@\0\0\0\0\0\0N@\0\0\0\0\0�Q@\0\0\0\0\0�Q@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0N@\0\0\0\0\0\0N@\0\0\0\0\0�Q@\0\0\0\0\0�Q@\0\0\0\0\0\0T@\0\0\0\0\0\0T@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Q@\0\0\0\0\0�Q@\0\0\0\0\0\0T@\0\0\0\0\0\0T@\0\0\0\0\0�V@\0\0\0\0\0�V@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T@\0\0\0\0\0\0T@\0\0\0\0\0�V@\0\0\0\0\0�V@\0\0\0\0\0\0Y@\0\0\0\0\0\0Y@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�V@\0\0\0\0\0�V@\0\0\0\0\0\0Y@\0\0\0\0\0\0Y@\0\0\0\0\0�[@\0\0\0\0\0�[@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0N@\0\0\0\0\0\0N@\0\0\0\0\0�Q@\0\0\0\0\0�Q@\0\0\0\0\0\0T@\0\0\0\0\0\0T@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Y@\0\0\0\0\0\0Y@\0\0\0\0\0�[@\0\0\0\0\0�[@\0\0\0\0\0\0^@\0\0\0\0\0\0^@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0i@\0\0\0\0\0\0i@\0\0\0\0\0�r@\0\0\0\0\0�r@\0\0\0\0\0\0y@\0\0\0\0\0\0y@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�r@\0\0\0\0\0\0Y@\0\0\0\0\0\0y@\0\0\0\0\0\0y@\0\0\0\0\0@@\0\0\0\0\0@@');


	return($ascii[$index]);

}



sub get_next_polygon

{

	my($count) = @_;

	$index = $count % 20 ;


	@ascii = ('\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�?\0\0\0\0\0\0�?\0\0\0\0\0\04@\0\0\0\0\0\0�?\0\0\0\0\0\04@\0\0\0\0\0\04@\0\0\0\0\0\0�?\0\0\0\0\0\04@\0\0\0\0\0\0�?\0\0\0\0\0\0�?\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0 @\0\0\0\0\0\0@\0\0\0\0\0\0 @\0\0\0\0\0\0 @\0\0\0\0\0\0@\0\0\0\0\0\0 @\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\04@\0\0\0\0\0\0\0@\0\0\0\0\0\0>@\0\0\0\0\0\0>@\0\0\0\0\0\0\0@\0\0\0\0\0\0>@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0"@\0\0\0\0\0\0@\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0@\0\0\0\0\0\0"@\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0I@\0\0\0\0\0\0@\0\0\0\0\0\0I@\0\0\0\0\0\0I@\0\0\0\0\0\0@\0\0\0\0\0\0I@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0&@\0\0\0\0\0\0"@\0\0\0\0\0\0&@\0\0\0\0\0\0&@\0\0\0\0\0\0"@\0\0\0\0\0\0&@\0\0\0\0\0\0"@\0\0\0\0\0\0"@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0N@\0\0\0\0\0\0@\0\0\0\0\0\0N@\0\0\0\0\0\0N@\0\0\0\0\0\0@\0\0\0\0\0\0N@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\0(@\0\0\0\0\0\0$@\0\0\0\0\0\0(@\0\0\0\0\0\0(@\0\0\0\0\0\0$@\0\0\0\0\0\0(@\0\0\0\0\0\0$@\0\0\0\0\0\0$@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0�Q@\0\0\0\0\0\0@\0\0\0\0\0�Q@\0\0\0\0\0�Q@\0\0\0\0\0\0@\0\0\0\0\0�Q@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0&@\0\0\0\0\0\0&@\0\0\0\0\0\0*@\0\0\0\0\0\0&@\0\0\0\0\0\0*@\0\0\0\0\0\0*@\0\0\0\0\0\0&@\0\0\0\0\0\0*@\0\0\0\0\0\0&@\0\0\0\0\0\0&@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0+@\0\0\0\0\0\0@\0\0\0\0\0\0T@\0\0\0\0\0\0@\0\0\0\0\0\0T@\0\0\0\0\0\0T@\0\0\0\0\0\0@\0\0\0\0\0\0T@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0(@\0\0\0\0\0\0(@\0\0\0\0\0\0,@\0\0\0\0\0\0(@\0\0\0\0\0\0,@\0\0\0\0\0\0,@\0\0\0\0\0\0(@\0\0\0\0\0\0,@\0\0\0\0\0\0(@\0\0\0\0\0\0(@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 @\0\0\0\0\0\0 @\0\0\0\0\0�V@\0\0\0\0\0\0 @\0\0\0\0\0�V@\0\0\0\0\0�V@\0\0\0\0\0\0 @\0\0\0\0\0�V@\0\0\0\0\0\0 @\0\0\0\0\0\0 @\0\0\0\0\0\0\0\0\0*@\0\0\0\0\0\0*@\0\0\0\0\0\0.@\0\0\0\0\0\0*@\0\0\0\0\0\0.@\0\0\0\0\0\0.@\0\0\0\0\0\0*@\0\0\0\0\0\0.@\0\0\0\0\0\0*@\0\0\0\0\0\0*@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0Y@\0\0\0\0\0\0"@\0\0\0\0\0\0Y@\0\0\0\0\0\0Y@\0\0\0\0\0\0"@\0\0\0\0\0\0Y@\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0\0\0\0,@\0\0\0\0\0\0,@\0\0\0\0\0\00@\0\0\0\0\0\0,@\0\0\0\0\0\00@\0\0\0\0\0\00@\0\0\0\0\0\0,@\0\0\0\0\0\00@\0\0\0\0\0\0,@\0\0\0\0\0\0,@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\0i@\0\0\0\0\0\0$@\0\0\0\0\0\0i@\0\0\0\0\0\0i@\0\0\0\0\0\0$@\0\0\0\0\0\0i@\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0.@\0\0\0\0\0\0.@\0\0\0\0\0\01@\0\0\0\0\0\0.@\0\0\0\0\0\01@\0\0\0\0\0\01@\0\0\0\0\0\0.@\0\0\0\0\0\01@\0\0\0\0\0\0.@\0\0\0\0\0\0.@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0&@\0\0\0\0\0\0&@\0\0\0\0\0�r@\0\0\0\0\0\0&@\0\0\0\0\0�r@\0\0\0\0\0�r@\0\0\0\0\0\0&@\0\0\0\0\0�r@\0\0\0\0\0\0&@\0\0\0\0\0\0&@\0\0\0\0\0\0\0\0\00@\0\0\0\0\0\00@\0\0\0\0\0\02@\0\0\0\0\0\00@\0\0\0\0\0\02@\0\0\0\0\0\02@\0\0\0\0\0\00@\0\0\0\0\0\02@\0\0\0\0\0\00@\0\0\0\0\0\00@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(@\0\0\0\0\0\0(@\0\0\0\0\0\0y@\0\0\0\0\0\0(@\0\0\0\0\0\0y@\0\0\0\0\0\0y@\0\0\0\0\0\0(@\0\0\0\0\0\0y@\0\0\0\0\0\0(@\0\0\0\0\0\0(@\0\0\0\0\0\0\0\0\01@\0\0\0\0\0\01@\0\0\0\0\0\03@\0\0\0\0\0\01@\0\0\0\0\0\03@\0\0\0\0\0\03@\0\0\0\0\0\01@\0\0\0\0\0\03@\0\0\0\0\0\01@\0\0\0\0\0\01@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*@\0\0\0\0\0\0*@\0\0\0\0\0@@\0\0\0\0\0\0*@\0\0\0\0\0@@\0\0\0\0\0@@\0\0\0\0\0\0*@\0\0\0\0\0@@\0\0\0\0\0\0*@\0\0\0\0\0\0*@\0\0\0\0\0\0\0\0\02@\0\0\0\0\0\02@\0\0\0\0\0\04@\0\0\0\0\0\02@\0\0\0\0\0\04@\0\0\0\0\0\04@\0\0\0\0\0\02@\0\0\0\0\0\04@\0\0\0\0\0\02@\0\0\0\0\0\02@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0,@\0\0\0\0\0\0,@\0\0\0\0\0��@\0\0\0\0\0\0,@\0\0\0\0\0��@\0\0\0\0\0��@\0\0\0\0\0\0,@\0\0\0\0\0��@\0\0\0\0\0\0,@\0\0\0\0\0\0,@\0\0\0\0\0\0\0\0\03@\0\0\0\0\0\03@\0\0\0\0\0\05@\0\0\0\0\0\03@\0\0\0\0\0\05@\0\0\0\0\0\05@\0\0\0\0\0\03@\0\0\0\0\0\05@\0\0\0\0\0\03@\0\0\0\0\0\03@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0Y@\0\0\0\0\0\0"@\0\0\0\0\0\0Y@\0\0\0\0\0\0Y@\0\0\0\0\0\0"@\0\0\0\0\0\0Y@\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0\0\0\0,@\0\0\0\0\0\0,@\0\0\0\0\0\00@\0\0\0\0\0\0,@\0\0\0\0\0\00@\0\0\0\0\0\00@\0\0\0\0\0\0,@\0\0\0\0\0\00@\0\0\0\0\0\0,@\0\0\0\0\0\0,@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.@\0\0\0\0\0\0.@\0\0\0\0\0��@\0\0\0\0\0\0.@\0\0\0\0\0��@\0\0\0\0\0��@\0\0\0\0\0\0.@\0\0\0\0\0��@\0\0\0\0\0\0.@\0\0\0\0\0\0.@\0\0\0\0\0\0\0\0\04@\0\0\0\0\0\04@\0\0\0\0\0\06@\0\0\0\0\0\04@\0\0\0\0\0\06@\0\0\0\0\0\06@\0\0\0\0\0\04@\0\0\0\0\0\06@\0\0\0\0\0\04@\0\0\0\0\0\04@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\00@\0\0\0\0\0\00@\0\0\0\0\0\0�@\0\0\0\0\0\00@\0\0\0\0\0\0�@\0\0\0\0\0\0�@\0\0\0\0\0\00@\0\0\0\0\0\0�@\0\0\0\0\0\00@\0\0\0\0\0\00@\0\0\0\0\0\0\0\0\05@\0\0\0\0\0\05@\0\0\0\0\0\07@\0\0\0\0\0\05@\0\0\0\0\0\07@\0\0\0\0\0\07@\0\0\0\0\0\05@\0\0\0\0\0\07@\0\0\0\0\0\05@\0\0\0\0\0\05@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\01@\0\0\0\0\0\01@\0\0\0\0\0 �@\0\0\0\0\0\01@\0\0\0\0\0 �@\0\0\0\0\0 �@\0\0\0\0\0\01@\0\0\0\0\0 �@\0\0\0\0\0\01@\0\0\0\0\0\01@\0\0\0\0\0\0\0\0\06@\0\0\0\0\0\06@\0\0\0\0\0\08@\0\0\0\0\0\06@\0\0\0\0\0\08@\0\0\0\0\0\08@\0\0\0\0\0\06@\0\0\0\0\0\08@\0\0\0\0\0\06@\0\0\0\0\0\06@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02@\0\0\0\0\0\02@\0\0\0\0\0@�@\0\0\0\0\0\02@\0\0\0\0\0@�@\0\0\0\0\0@�@\0\0\0\0\0\0�?\0\0\0\0\0@�@\0\0\0\0\0\02@\0\0\0\0\0\02@\0\0\0\0\0\0\0\0\07@\0\0\0\0\0\07@\0\0\0\0\0\09@\0\0\0\0\0\07@\0\0\0\0\0\09@\0\0\0\0\0\09@\0\0\0\0\0\07@\0\0\0\0\0\09@\0\0\0\0\0\07@\0\0\0\0\0\07@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\03@\0\0\0\0\0\03@\0\0\0\0\0@�@\0\0\0\0\0\0�?\0\0\0\0\0@�@\0\0\0\0\0@�@\0\0\0\0\0\03@\0\0\0\0\0@�@\0\0\0\0\0\03@\0\0\0\0\0\03@\0\0\0\0\0\0\0\0\08@\0\0\0\0\0\08@\0\0\0\0\0\0:@\0\0\0\0\0\08@\0\0\0\0\0\0:@\0\0\0\0\0\0:@\0\0\0\0\0\08@\0\0\0\0\0\0:@\0\0\0\0\0\08@\0\0\0\0\0\08@');


	return($ascii[$index]);

}


sub get_next_geometry_collection

{

	my($count) = @_;

	$index = $count % 20 ;


	@ascii = ('\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�?\0\0\0\0\0\0�?\0\0\0\0\0\04@\0\0\0\0\0\0�?\0\0\0\0\0\04@\0\0\0\0\0\04@\0\0\0\0\0\0�?\0\0\0\0\0\04@\0\0\0\0\0\0�?\0\0\0\0\0\0�?\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0 @\0\0\0\0\0\0@\0\0\0\0\0\0 @\0\0\0\0\0\0 @\0\0\0\0\0\0@\0\0\0\0\0\0 @\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\04@\0\0\0\0\0\0\0@\0\0\0\0\0\0>@\0\0\0\0\0\0>@\0\0\0\0\0\0\0@\0\0\0\0\0\0>@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0"@\0\0\0\0\0\0@\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0@\0\0\0\0\0\0"@\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0I@\0\0\0\0\0\0@\0\0\0\0\0\0I@\0\0\0\0\0\0I@\0\0\0\0\0\0@\0\0\0\0\0\0I@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0&@\0\0\0\0\0\0"@\0\0\0\0\0\0&@\0\0\0\0\0\0&@\0\0\0\0\0\0"@\0\0\0\0\0\0&@\0\0\0\0\0\0"@\0\0\0\0\0\0"@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0N@\0\0\0\0\0\0@\0\0\0\0\0\0N@\0\0\0\0\0\0N@\0\0\0\0\0\0@\0\0\0\0\0\0N@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\0(@\0\0\0\0\0\0$@\0\0\0\0\0\0(@\0\0\0\0\0\0(@\0\0\0\0\0\0$@\0\0\0\0\0\0(@\0\0\0\0\0\0$@\0\0\0\0\0\0$@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0�Q@\0\0\0\0\0\0@\0\0\0\0\0�Q@\0\0\0\0\0�Q@\0\0\0\0\0\0@\0\0\0\0\0�Q@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0&@\0\0\0\0\0\0&@\0\0\0\0\0\0*@\0\0\0\0\0\0&@\0\0\0\0\0\0*@\0\0\0\0\0\0*@\0\0\0\0\0\0&@\0\0\0\0\0\0*@\0\0\0\0\0\0&@\0\0\0\0\0\0&@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0T@\0\0\0\0\0\0@\0\0\0\0\0\0T@\0\0\0\0\0\0T@\0\0\0\0\0\0@\0\0\0\0\0\0T@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0(@\0\0\0\0\0\0(@\0\0\0\0\0\0,@\0\0\0\0\0\0(@\0\0\0\0\0\0,@\0\0\0\0\0\0,@\0\0\0\0\0\0(@\0\0\0\0\0\0,@\0\0\0\0\0\0(@\0\0\0\0\0\0(@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 @\0\0\0\0\0\0 @\0\0\0\0\0�V@\0\0\0\0\0\0 @\0\0\0\0\0�V@\0\0\0\0\0�V@\0\0\0\0\0\0 @\0\0\0\0\0�V@\0\0\0\0\0\0 @\0\0\0\0\0\0 @\0\0\0\0\0\0\0\0\0*@\0\0\0\0\0\0*@\0\0\0\0\0\0.@\0\0\0\0\0\0*@\0\0\0\0\0\0.@\0\0\0\0\0\0.@\0\0\0\0\0\0*@\0\0\0\0\0\0.@\0\0\0\0\0\0*@\0\0\0\0\0\0*@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0Y@\0\0\0\0\0\0"@\0\0\0\0\0\0Y@\0\0\0\0\0\0Y@\0\0\0\0\0\0"@\0\0\0\0\0\0Y@\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0\0\0\0,@\0\0\0\0\0\0,@\0\0\0\0\0\00@\0\0\0\0\0\0,@\0\0\0\0\0\00@\0\0\0\0\0\00@\0\0\0\0\0\0,@\0\0\0\0\0\00@\0\0\0\0\0\0,@\0\0\0\0\0\0,@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\0i@\0\0\0\0\0\0$@\0\0\0\0\0\0i@\0\0\0\0\0\0i@\0\0\0\0\0\0$@\0\0\0\0\0\0i@\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0.@\0\0\0\0\0\0.@\0\0\0\0\0\01@\0\0\0\0\0\0.@\0\0\0\0\0\01@\0\0\0\0\0\01@\0\0\0\0\0\0.@\0\0\0\0\0\01@\0\0\0\0\0\0.@\0\0\0\0\0\0.@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0&@\0\0\0\0\0\0&@\0\0\0\0\0�r@\0\0\0\0\0\0&@\0\0\0\0\0�r@\0\0\0\0\0�r@\0\0\0\0\0\0&@\0\0\0\0\0�r@\0\0\0\0\0\0&@\0\0\0\0\0\0&@\0\0\0\0\0\0\0\0\00@\0\0\0\0\0\00@\0\0\0\0\0\02@\0\0\0\0\0\00@\0\0\0\0\0\02@\0\0\0\0\0\02@\0\0\0\0\0\00@\0\0\0\0\0\02@\0\0\0\0\0\00@\0\0\0\0\0\00@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(@\0\0\0\0\0\0(@\0\0\0\0\0\0y@\0\0\0\0\0\0(@\0\0\0\0\0\0y@\0\0\0\0\0\0y@\0\0\0\0\0\0(@\0\0\0\0\0\0y@\0\0\0\0\0\0(@\0\0\0\0\0\0(@\0\0\0\0\0\0\0\0\01@\0\0\0\0\0\01@\0\0\0\0\0\03@\0\0\0\0\0\01@\0\0\0\0\0\03@\0\0\0\0\0\03@\0\0\0\0\0\01@\0\0\0\0\0\03@\0\0\0\0\0\01@\0\0\0\0\0\01@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0Y@\0\0\0\0\0\0"@\0\0\0\0\0\0Y@\0\0\0\0\0\0Y@\0\0\0\0\0\0"@\0\0\0\0\0\0Y@\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0\0\0\0,@\0\0\0\0\0\0,@\0\0\0\0\0\00@\0\0\0\0\0\0,@\0\0\0\0\0\00@\0\0\0\0\0\00@\0\0\0\0\0\0,@\0\0\0\0\0\00@\0\0\0\0\0\0,@\0\0\0\0\0\0,@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*@\0\0\0\0\0\0*@\0\0\0\0\0@@\0\0\0\0\0\0*@\0\0\0\0\0@@\0\0\0\0\0@@\0\0\0\0\0\0*@\0\0\0\0\0@@\0\0\0\0\0\0*@\0\0\0\0\0\0*@\0\0\0\0\0\0\0\0\02@\0\0\0\0\0\02@\0\0\0\0\0\04@\0\0\0\0\0\02@\0\0\0\0\0\04@\0\0\0\0\0\04@\0\0\0\0\0\02@\0\0\0\0\0\04@\0\0\0\0\0\02@\0\0\0\0\0\02@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0,@\0\0\0\0\0\0,@\0\0\0\0\0��@\0\0\0\0\0\0,@\0\0\0\0\0��@\0\0\0\0\0��@\0\0\0\0\0\0,@\0\0\0\0\0��@\0\0\0\0\0\0,@\0\0\0\0\0\0,@\0\0\0\0\0\0\0\0\03@\0\0\0\0\0\03@\0\0\0\0\0\05@\0\0\0\0\0\03@\0\0\0\0\0\05@\0\0\0\0\0\05@\0\0\0\0\0\03@\0\0\0\0\0\05@\0\0\0\0\0\03@\0\0\0\0\0\03@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.@\0\0\0\0\0\0.@\0\0\0\0\0��@\0\0\0\0\0\0.@\0\0\0\0\0��@\0\0\0\0\0��@\0\0\0\0\0\0.@\0\0\0\0\0��@\0\0\0\0\0\0.@\0\0\0\0\0\0.@\0\0\0\0\0\0\0\0\04@\0\0\0\0\0\04@\0\0\0\0\0\06@\0\0\0\0\0\04@\0\0\0\0\0\06@\0\0\0\0\0\06@\0\0\0\0\0\04@\0\0\0\0\0\06@\0\0\0\0\0\04@\0\0\0\0\0\04@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\00@\0\0\0\0\0\00@\0\0\0\0\0\0�@\0\0\0\0\0\00@\0\0\0\0\0\0�@\0\0\0\0\0\0�@\0\0\0\0\0\00@\0\0\0\0\0\0�@\0\0\0\0\0\00@\0\0\0\0\0\00@\0\0\0\0\0\0\0\0\05@\0\0\0\0\0\05@\0\0\0\0\0\07@\0\0\0\0\0\05@\0\0\0\0\0\07@\0\0\0\0\0\07@\0\0\0\0\0\05@\0\0\0\0\0\07@\0\0\0\0\0\05@\0\0\0\0\0\05@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\01@\0\0\0\0\0\01@\0\0\0\0\0 �@\0\0\0\0\0\01@\0\0\0\0\0 �@\0\0\0\0\0 �@\0\0\0\0\0\01@\0\0\0\0\0 �@\0\0\0\0\0\01@\0\0\0\0\0\01@\0\0\0\0\0\0\0\0\06@\0\0\0\0\0\06@\0\0\0\0\0\08@\0\0\0\0\0\06@\0\0\0\0\0\08@\0\0\0\0\0\08@\0\0\0\0\0\06@\0\0\0\0\0\08@\0\0\0\0\0\06@\0\0\0\0\0\06@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02@\0\0\0\0\0\02@\0\0\0\0\0@�@\0\0\0\0\0\02@\0\0\0\0\0@�@\0\0\0\0\0@�@\0\0\0\0\0\0�?\0\0\0\0\0@�@\0\0\0\0\0\02@\0\0\0\0\0\02@\0\0\0\0\0\0\0\0\07@\0\0\0\0\0\07@\0\0\0\0\0\09@\0\0\0\0\0\07@\0\0\0\0\0\09@\0\0\0\0\0\09@\0\0\0\0\0\07@\0\0\0\0\0\09@\0\0\0\0\0\07@\0\0\0\0\0\07@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\03@\0\0\0\0\0\03@\0\0\0\0\0@�@\0\0\0\0\0\0�?\0\0\0\0\0@�@\0\0\0\0\0@�@\0\0\0\0\0\03@\0\0\0\0\0@�@\0\0\0\0\0\03@\0\0\0\0\0\03@\0\0\0\0\0\0\0\0\08@\0\0\0\0\0\08@\0\0\0\0\0\0:@\0\0\0\0\0\08@\0\0\0\0\0\0:@\0\0\0\0\0\0:@\0\0\0\0\0\08@\0\0\0\0\0\0:@\0\0\0\0\0\08@\0\0\0\0\0\08@');


	return($ascii[$index]);

}


sub get_next_multipoint

{

	my($count) = @_;

	$index = $count % 20 ;


	@ascii = ('\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
	
'\0\0\0\0\0\0\0\0\0\0\0\0\0�?\0\0\0\0\0\0�?',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0*@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0 @\0\0\0\0\0\0 @',

'\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\04@',

'\0\0\0\0\0\0\0\0\0\0\0\0\04@\0\0\0\0\0\04@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0>@\0\0\0\0\0\0>@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0D@\0\0\0\0\0\0D@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0I@\0\0\0\0\0\0I@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0N@\0\0\0\0\0\0N@',

'\0\0\0\0\0\0\0\0\0\0\0\0�Q@\0\0\0\0\0�Q@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0T@\0\0\0\0\0\0T@',

'\0\0\0\0\0\0\0\0\0\0\0\0�V@\0\0\0\0\0�V@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0Y@\0\0\0\0\0\0Y@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0i@\0\0\0\0\0\0i@',

'\0\0\0\0\0\0\0\0\0\0\0\0�r@\0\0\0\0\0\0Y@');


	return($ascii[$index]);

}


sub get_next_multilinestring

{

	my($count) = @_;

	$index = $count % 20 ;


	@ascii = ('\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�?\0\0\0\0\0\0�?\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@',
	
'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�?\0\0\0\0\0\0�?\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0 @\0\0\0\0\0\0 @',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0 @\0\0\0\0\0\0 @\0\0\0\0\0\0"@\0\0\0\0\0\0"@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 @\0\0\0\0\0\0 @\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0$@\0\0\0\0\0\0$@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\04@\0\0\0\0\0\04@\0\0\0\0\0\0>@\0\0\0\0\0\0>@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04@\0\0\0\0\0\04@\0\0\0\0\0\0>@\0\0\0\0\0\0>@\0\0\0\0\0\0D@\0\0\0\0\0\0D@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>@\0\0\0\0\0\0>@\0\0\0\0\0\0D@\0\0\0\0\0\0D@\0\0\0\0\0\0I@\0\0\0\0\0\0I@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D@\0\0\0\0\0\0D@\0\0\0\0\0\0I@\0\0\0\0\0\0I@\0\0\0\0\0\0N@\0\0\0\0\0\0N@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0I@\0\0\0\0\0\0I@\0\0\0\0\0\0N@\0\0\0\0\0\0N@\0\0\0\0\0�Q@\0\0\0\0\0�Q@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0N@\0\0\0\0\0\0N@\0\0\0\0\0�Q@\0\0\0\0\0�Q@\0\0\0\0\0\0T@\0\0\0\0\0\0T@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Q@\0\0\0\0\0�Q@\0\0\0\0\0\0T@\0\0\0\0\0\0T@\0\0\0\0\0�V@\0\0\0\0\0�V@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T@\0\0\0\0\0\0T@\0\0\0\0\0�V@\0\0\0\0\0�V@\0\0\0\0\0\0Y@\0\0\0\0\0\0Y@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�V@\0\0\0\0\0�V@\0\0\0\0\0\0Y@\0\0\0\0\0\0Y@\0\0\0\0\0�[@\0\0\0\0\0�[@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Y@\0\0\0\0\0\0Y@\0\0\0\0\0�[@\0\0\0\0\0�[@\0\0\0\0\0\0^@\0\0\0\0\0\0^@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0i@\0\0\0\0\0\0i@\0\0\0\0\0�r@\0\0\0\0\0�r@\0\0\0\0\0\0y@\0\0\0\0\0\0y@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�r@\0\0\0\0\0\0Y@\0\0\0\0\0\0y@\0\0\0\0\0\0y@\0\0\0\0\0@@\0\0\0\0\0@@');


	return($ascii[$index]);

}


sub get_next_multipolygon

{

	my($count) = @_;

	$index = $count % 20 ;


	@ascii = ('\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�?\0\0\0\0\0\0�?\0\0\0\0\0\04@\0\0\0\0\0\0�?\0\0\0\0\0\04@\0\0\0\0\0\04@\0\0\0\0\0\0�?\0\0\0\0\0\04@\0\0\0\0\0\0�?\0\0\0\0\0\0�?\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0 @\0\0\0\0\0\0@\0\0\0\0\0\0 @\0\0\0\0\0\0 @\0\0\0\0\0\0@\0\0\0\0\0\0 @\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\04@\0\0\0\0\0\0\0@\0\0\0\0\0\0>@\0\0\0\0\0\0>@\0\0\0\0\0\0\0@\0\0\0\0\0\0>@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0"@\0\0\0\0\0\0@\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0@\0\0\0\0\0\0"@\0\0\0\0\0\0@\0\0\0\0\0\0@',

'\N',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0I@\0\0\0\0\0\0@\0\0\0\0\0\0I@\0\0\0\0\0\0I@\0\0\0\0\0\0@\0\0\0\0\0\0I@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0&@\0\0\0\0\0\0"@\0\0\0\0\0\0&@\0\0\0\0\0\0&@\0\0\0\0\0\0"@\0\0\0\0\0\0&@\0\0\0\0\0\0"@\0\0\0\0\0\0"@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0N@\0\0\0\0\0\0@\0\0\0\0\0\0N@\0\0\0\0\0\0N@\0\0\0\0\0\0@\0\0\0\0\0\0N@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\0(@\0\0\0\0\0\0$@\0\0\0\0\0\0(@\0\0\0\0\0\0(@\0\0\0\0\0\0$@\0\0\0\0\0\0(@\0\0\0\0\0\0$@\0\0\0\0\0\0$@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0�Q@\0\0\0\0\0\0@\0\0\0\0\0�Q@\0\0\0\0\0�Q@\0\0\0\0\0\0@\0\0\0\0\0�Q@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0&@\0\0\0\0\0\0&@\0\0\0\0\0\0*@\0\0\0\0\0\0&@\0\0\0\0\0\0*@\0\0\0\0\0\0*@\0\0\0\0\0\0&@\0\0\0\0\0\0*@\0\0\0\0\0\0&@\0\0\0\0\0\0&@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0T@\0\0\0\0\0\0@\0\0\0\0\0\0T@\0\0\0\0\0\0T@\0\0\0\0\0\0@\0\0\0\0\0\0T@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0(@\0\0\0\0\0\0(@\0\0\0\0\0\0,@\0\0\0\0\0\0(@\0\0\0\0\0\0,@\0\0\0\0\0\0,@\0\0\0\0\0\0(@\0\0\0\0\0\0,@\0\0\0\0\0\0(@\0\0\0\0\0\0(@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 @\0\0\0\0\0\0 @\0\0\0\0\0�V@\0\0\0\0\0\0 @\0\0\0\0\0�V@\0\0\0\0\0�V@\0\0\0\0\0\0 @\0\0\0\0\0�V@\0\0\0\0\0\0 @\0\0\0\0\0\0 @\0\0\0\0\0\0\0\0\0*@\0\0\0\0\0\0*@\0\0\0\0\0\0.@\0\0\0\0\0\0*@\0\0\0\0\0\0.@\0\0\0\0\0\0.@\0\0\0\0\0\0*@\0\0\0\0\0\0.@\0\0\0\0\0\0*@\0\0\0\0\0\0*@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0Y@\0\0\0\0\0\0"@\0\0\0\0\0\0Y@\0\0\0\0\0\0Y@\0\0\0\0\0\0"@\0\0\0\0\0\0Y@\0\0\0\0\0\0"@\0\0\0\0\0\0"@\0\0\0\0\0\0\0\0\0,@\0\0\0\0\0\0,@\0\0\0\0\0\00@\0\0\0\0\0\0,@\0\0\0\0\0\00@\0\0\0\0\0\00@\0\0\0\0\0\0,@\0\0\0\0\0\00@\0\0\0\0\0\0,@\0\0\0\0\0\0,@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\0i@\0\0\0\0\0\0$@\0\0\0\0\0\0i@\0\0\0\0\0\0i@\0\0\0\0\0\0$@\0\0\0\0\0\0i@\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\0\0\0\0.@\0\0\0\0\0\0.@\0\0\0\0\0\01@\0\0\0\0\0\0.@\0\0\0\0\0\01@\0\0\0\0\0\01@\0\0\0\0\0\0.@\0\0\0\0\0\01@\0\0\0\0\0\0.@\0\0\0\0\0\0.@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0&@\0\0\0\0\0\0&@\0\0\0\0\0�r@\0\0\0\0\0\0&@\0\0\0\0\0�r@\0\0\0\0\0�r@\0\0\0\0\0\0&@\0\0\0\0\0�r@\0\0\0\0\0\0&@\0\0\0\0\0\0&@\0\0\0\0\0\0\0\0\00@\0\0\0\0\0\00@\0\0\0\0\0\02@\0\0\0\0\0\00@\0\0\0\0\0\02@\0\0\0\0\0\02@\0\0\0\0\0\00@\0\0\0\0\0\02@\0\0\0\0\0\00@\0\0\0\0\0\00@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(@\0\0\0\0\0\0(@\0\0\0\0\0\0y@\0\0\0\0\0\0(@\0\0\0\0\0\0y@\0\0\0\0\0\0y@\0\0\0\0\0\0(@\0\0\0\0\0\0y@\0\0\0\0\0\0(@\0\0\0\0\0\0(@\0\0\0\0\0\0\0\0\01@\0\0\0\0\0\01@\0\0\0\0\0\03@\0\0\0\0\0\01@\0\0\0\0\0\03@\0\0\0\0\0\03@\0\0\0\0\0\01@\0\0\0\0\0\03@\0\0\0\0\0\01@\0\0\0\0\0\01@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*@\0\0\0\0\0\0*@\0\0\0\0\0@@\0\0\0\0\0\0*@\0\0\0\0\0@@\0\0\0\0\0@@\0\0\0\0\0\0*@\0\0\0\0\0@@\0\0\0\0\0\0*@\0\0\0\0\0\0*@\0\0\0\0\0\0\0\0\02@\0\0\0\0\0\02@\0\0\0\0\0\04@\0\0\0\0\0\02@\0\0\0\0\0\04@\0\0\0\0\0\04@\0\0\0\0\0\02@\0\0\0\0\0\04@\0\0\0\0\0\02@\0\0\0\0\0\02@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0,@\0\0\0\0\0\0,@\0\0\0\0\0��@\0\0\0\0\0\0,@\0\0\0\0\0��@\0\0\0\0\0��@\0\0\0\0\0\0,@\0\0\0\0\0��@\0\0\0\0\0\0,@\0\0\0\0\0\0,@\0\0\0\0\0\0\0\0\03@\0\0\0\0\0\03@\0\0\0\0\0\05@\0\0\0\0\0\03@\0\0\0\0\0\05@\0\0\0\0\0\05@\0\0\0\0\0\03@\0\0\0\0\0\05@\0\0\0\0\0\03@\0\0\0\0\0\03@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.@\0\0\0\0\0\0.@\0\0\0\0\0��@\0\0\0\0\0\0.@\0\0\0\0\0��@\0\0\0\0\0��@\0\0\0\0\0\0.@\0\0\0\0\0��@\0\0\0\0\0\0.@\0\0\0\0\0\0.@\0\0\0\0\0\0\0\0\04@\0\0\0\0\0\04@\0\0\0\0\0\06@\0\0\0\0\0\04@\0\0\0\0\0\06@\0\0\0\0\0\06@\0\0\0\0\0\04@\0\0\0\0\0\06@\0\0\0\0\0\04@\0\0\0\0\0\04@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\00@\0\0\0\0\0\00@\0\0\0\0\0\0�@\0\0\0\0\0\00@\0\0\0\0\0\0�@\0\0\0\0\0\0�@\0\0\0\0\0\00@\0\0\0\0\0\0�@\0\0\0\0\0\00@\0\0\0\0\0\00@\0\0\0\0\0\0\0\0\05@\0\0\0\0\0\05@\0\0\0\0\0\07@\0\0\0\0\0\05@\0\0\0\0\0\07@\0\0\0\0\0\07@\0\0\0\0\0\05@\0\0\0\0\0\07@\0\0\0\0\0\05@\0\0\0\0\0\05@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\01@\0\0\0\0\0\01@\0\0\0\0\0 �@\0\0\0\0\0\01@\0\0\0\0\0 �@\0\0\0\0\0 �@\0\0\0\0\0\01@\0\0\0\0\0 �@\0\0\0\0\0\01@\0\0\0\0\0\01@\0\0\0\0\0\0\0\0\06@\0\0\0\0\0\06@\0\0\0\0\0\08@\0\0\0\0\0\06@\0\0\0\0\0\08@\0\0\0\0\0\08@\0\0\0\0\0\06@\0\0\0\0\0\08@\0\0\0\0\0\06@\0\0\0\0\0\06@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02@\0\0\0\0\0\02@\0\0\0\0\0@�@\0\0\0\0\0\02@\0\0\0\0\0@�@\0\0\0\0\0@�@\0\0\0\0\0\0�?\0\0\0\0\0@�@\0\0\0\0\0\02@\0\0\0\0\0\02@\0\0\0\0\0\0\0\0\07@\0\0\0\0\0\07@\0\0\0\0\0\09@\0\0\0\0\0\07@\0\0\0\0\0\09@\0\0\0\0\0\09@\0\0\0\0\0\07@\0\0\0\0\0\09@\0\0\0\0\0\07@\0\0\0\0\0\07@',

'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\03@\0\0\0\0\0\03@\0\0\0\0\0@�@\0\0\0\0\0\0�?\0\0\0\0\0@�@\0\0\0\0\0@�@\0\0\0\0\0\03@\0\0\0\0\0@�@\0\0\0\0\0\03@\0\0\0\0\0\03@\0\0\0\0\0\0\0\0\08@\0\0\0\0\0\08@\0\0\0\0\0\0:@\0\0\0\0\0\08@\0\0\0\0\0\0:@\0\0\0\0\0\0:@\0\0\0\0\0\08@\0\0\0\0\0\0:@\0\0\0\0\0\08@\0\0\0\0\0\08@');


	return($ascii[$index]);

}


sub random

{

	my($limit) = @_ ;

	$random = int(rand($limit));

	return($random);

}

