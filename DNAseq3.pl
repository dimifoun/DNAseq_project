$i = 0;

printf "Please input sequence:\n";

while ( $seq = <STDIN> )


{
	while ( $seq =~ /(ATG)((\w\w\w)*)(TGA|TAA|TAG)/i )
	{
		$i++;
		print "$1 $3 $4\n";
		$seq = $';
			if( $i < 99 )
			{print "Was detected sequence with start and stop codon but the distance between them is too small! The threshold length in this program has been set at 96bp (32 amino acids)\n";}

			if( $i >= 99 )
			{print "There is an open reading frame (ORF)\n";}	
 
	}
	if ( $seq =~ /(ATG)|(\w\w\w)(\w\w\w\w)+(TAA|TGA|TAG|\w\w\w)/ )
	{print "There is NOT an open reading frame (ORF)\n";}	
 
}
