****Paper****
clear all
import spss using "C:\Users\admin\Documents\Wahlen und Medien\Data\Kreis_Panel.sav", case(lower)
save "C:\Users\admin\Documents\Neuer Ordner\Projekte\Regional Media Coverage and Election Results\Data\Kreis_Panel.dta" , replace


encode jahr, gen(year2)
encode land, gen(nland)
encode partei, gen(npartei)
encode gkz, gen(ngkz)

gen odds_value = (value)/(1-value)
gen log_odds_value = log(odds_value)

***Regression***
***Bundeslanddummy***
reg value gew_avg_tonalität_3 bip alq zz_aus i.year2 i.npartei i.nland, r cluster(ngkz) 
reg value gew_avg_tonalität_2 bip alq zz_aus i.year2 i.npartei i.nland, r cluster(ngkz) 
reg value gew_avg_tonalität_1 bip alq zz_aus i.year2 i.npartei i.nland, r cluster(ngkz) 
reg value gew_tonalität_1 bip alq zz_aus i.year2 i.npartei i.nland, r cluster(ngkz) 
reg value gew_tonalität bip alq zz_aus i.year2 i.npartei i.nland, r cluster(ngkz) 

***log-odds-regression***
***mit Bundeslanddummy***
reg log_odds_value gew_avg_tonalität_3 bip alq zz_aus i.year2 i.npartei i.nland, r cluster(ngkz) 
reg log_odds_value gew_avg_tonalität_2 bip alq zz_aus i.year2 i.npartei i.nland, r cluster(ngkz) 
reg log_odds_value gew_tonalität_1 bip alq zz_aus i.year2 i.npartei i.nland, r cluster(ngkz) 
reg log_odds_value gew_tonalität bip alq zz_aus i.year2 i.npartei i.nland, r cluster(ngkz) 
reg log_odds_value gew_avg_tonalität_6 bip alq zz_aus i.year2 i.npartei i.nland, r cluster(ngkz) 

***log-odds-regression***
***mit Bundeslanddummy***
***ohne BIP, da BIP nicht für alle Beobachtungen vorhanden***
reg log_odds_value gew_tonalität  alq zz_aus i.year2 i.npartei i.nland, r cluster(ngkz) 
reg log_odds_value gew_tonalität_1 alq zz_aus i.year2 i.npartei i.nland, r cluster(ngkz) 
reg log_odds_value gew_avg_tonalität_3 alq zz_aus i.year2 i.npartei i.nland, r cluster(ngkz) 
reg log_odds_value gew_avg_tonalität_2 alq zz_aus i.year2 i.npartei i.nland, r cluster(ngkz) 
reg log_odds_value gew_avg_tonalität_6 alq zz_aus i.year2 i.npartei i.nland, r cluster(ngkz) 

***log-odds-regression***
***mit Wahlkreisdummy***
reg log_odds_value gew_avg_tonalität_3 bip alq zz_aus i.year2  i.ngkz, r cluster(ngkz) 
reg log_odds_value gew_avg_tonalität_2 bip alq zz_aus i.year2 i.npartei i.ngkz, r cluster(ngkz) 
reg log_odds_value gew_tonalität_1 bip alq zz_aus i.year2 i.npartei i.ngkz, r cluster(ngkz) 
reg log_odds_value gew_tonalität bip alq zz_aus i.year2 i.npartei i.ngkz, r cluster(ngkz) 
reg log_odds_value gew_avg_tonalität_6 bip alq zz_aus i.year2 i.npartei i.ngkz, r cluster(ngkz) 

***log-odds-regression***
***mit Wahlkreisdummy***
***ohne BIP, da BIP nicht für alle Beobachtungen vorhanden***
reg log_odds_value gew_avg_tonalität_3 alq zz_aus i.year2  i.ngkz, r cluster(ngkz) 
reg log_odds_value gew_avg_tonalität_2 alq zz_aus i.year2 i.npartei i.ngkz, r cluster(ngkz) 
reg log_odds_value gew_tonalität_1 alq zz_aus i.year2 i.npartei i.ngkz, r cluster(ngkz) 
reg log_odds_value gew_tonalität alq zz_aus i.year2 i.npartei i.ngkz, r cluster(ngkz) 
reg log_odds_value gew_avg_tonalität_6 alq zz_aus i.year2 i.npartei i.ngkz, r cluster(ngkz) 





