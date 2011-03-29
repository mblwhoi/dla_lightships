BEGIN { FS=","; OFS=","  };
{
	if ( NR == 1) {
		print "jday,"  $0
	}
	if ( NR >= 2 )  {
	y = $3
	d = $5
	m = $4
	h = $6/24.0
	dpy4 = 1461
	dpc4 = 146097
	jdbase = 1721119


	if (m > 2)
		m = m -3
	else {
		m = m + 9
		y = y -1
	}

	c = y/100
	y = y - c*100
	julian = (dpc4*c)/4 + (dpy4*y)/4 + (153*m + 2)/5 +d + jdbase + h
	printf("%f"",", julian) 
	for (i = 1; i<= NF; ++i ) {
		if ( i >= 17 && i <= 21 ) {
			if ( $i ~ /J/ )  $i = -10 * (substr($i,1,2) + 0.1)  
			if ( $i ~ /K/ )  $i = -10 * (substr($i,1,2) + 0.2)  
			if ( $i ~ /L/ )  $i = -10 * (substr($i,1,2) + 0.3)  
			if ( $i ~ /M/ )  $i = -10 * (substr($i,1,2) + 0.4)  
			if ( $i ~ /N/ )  $i = -10 * (substr($i,1,2) + 0.5)  
			if ( $i ~ /O/ )  $i = -10 * (substr($i,1,2) + 0.6)  
			if ( $i ~ /P/ )  $i = -10 * (substr($i,1,2) + 0.7)  
			if ( $i ~ /Q/ )  $i = -10 * (substr($i,1,2) + 0.8)  
			if ( $i ~ /R/ )  $i = -10 * (substr($i,1,2) + 0.9)  
			if ( $i ~ /}/ )  $i = -10 * (substr($i,1,2) + 0.0)  
			if ( $i ~ /A/ )  $i = -10 * (substr($i,1,2) + 0.1)  
			if ( $i ~ /B/ )  $i = -10 * (substr($i,1,2) + 0.2)  
			if ( $i ~ /C/ )  $i = -10 * (substr($i,1,2) + 0.3)  
			if ( $i ~ /D/ )  $i = -10 * (substr($i,1,2) + 0.4)  
			if ( $i ~ /E/ )  $i = -10 * (substr($i,1,2) + 0.5)  
			if ( $i ~ /F/ )  $i = -10 * (substr($i,1,2) + 0.6)  
			if ( $i ~ /G/ )  $i = -10 * (substr($i,1,2) + 0.7)  
			if ( $i ~ /H/ )  $i = -10 * (substr($i,1,2) + 0.8)  
			if ( $i ~ /I/ )  $i = -10 * (substr($i,1,2) + 0.9)  
			if ( $i !~ /[A-R]}/ ) $i = ($i/10)
		}
		if ( i == 25 ) $i = ($i * 0.5)  #wave height in half m incr
		if ( i == 29 ) $i = ($i * 0.5)  #swell height in half m incr
		if ( i == 15 ) $i = ($i/10)     #sea level pressure needs decimal
		if ( i == 33 ) $i = ($i/10)     #amount pressure change needs decimal
	}
	print 
	}
}
