#!/usr/local/bin/perl -w
#-------------------------------------------------------------------------
#            tdf11.perl
#
#  converts common fields of TDF11-formatted data to tab delimited ascii 
#  additional data indicator (pos 82) is assumed to be 6 for all records 
#  K. Elder Dec 97
#
#-------------------------------------------------------------------------

print "lat,lon,year,month,day,hour,wd_ind,w_dir,wsp_ind,w_sp,vis_ind,vis,pr_wthr,pa_wthr,sl_press,t_ind,t_air,t_wb,t_dp,t_ss,t_asea,cl_tot,wav_dir,wav_p,wav_ht,sw_dir,sw_p,sw_ht,add_di,bar_tdcy,press_chg,rel_hmd,iowb_ind,t_oind,t_sind,wav_p,low_cl_amt,low_cl_type,cl_ht_ind,cl_ht,mcl_type,hcl_type\n";
while ($line = <>) {
	print substr($line,9,2),".", substr($line,11,1),",", 		#lat
	      substr($line,12,3),".", substr($line,15,1),",",		#lon
	      substr($line,16,4),",", substr($line,20,2),",", 	#year, month
	      substr($line,22,2),",", substr($line,24,2),",",		#day, hour
	      substr($line,26,1),",", substr($line,27,2),",",		#wdir_ind, wind_dir 
              substr($line,29,1),",", substr($line,30,3),",",       	#wsp_ind, wind_sp	
	      substr($line,33,1),",", substr($line,34,2),",",		#vis_ind, vis
	      substr($line,36,2),",", substr($line,38,1),",",		#pr_wthr, pa_wthr
	      substr($line,39,5),",", substr($line,44,1),",",		#sl_press, t_ind
	      substr($line,45,3),",", substr($line,48,3),",",		#t_air, t_wb
	      substr($line,51,3),",", substr($line,54,3),",",		#t_dp, t_ss
	      substr($line,57,3),",", substr($line,60,1),",",		#t_asea, cl_tot
	      substr($line,67,2),",", substr($line,69,1),",",		#wav_dir, wav_p
	      substr($line,70,2),",", substr($line,72,2),",",		#wav_ht, sw_dir
	      substr($line,74,1),",", substr($line,75,2),",",		#sw_p, sw_ht
	      substr($line,81,1),",", substr($line,84,1),",",       	#add_di, bar_tdcy
	      substr($line,85,3),",", substr($line,93,3),",",       	#press_chg, rel_hmd
	      substr($line,96,1),",", substr($line,97,1),",",       	#iowb_ind, t_oind
	      substr($line,98,1),",", substr($line,99,2),",",       	#t_sind, wav_p
	      substr($line,61,1),",", substr($line,62,1),",",           #low_cl_amt, low_cl_type
	      substr($line,63,1),",", substr($line,64,1),",",           #cl_ht_ind,cl_ht
	      substr($line,65,1),",", substr($line,66,1),               #mcl_type, hcl_type
	      "\n";
}
