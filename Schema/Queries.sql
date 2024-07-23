-- MarketCap by year by company
select c."CompanyName", m."MarketCap(Billions)", m."Year"
	from public."Company" as C
join public."MarketCap" as m
	on(c."CompanyID" = M."CompanyID")

-- MarketCapGrowth by year by company
select c."CompanyName", m."Change", m."Year"
	from public."Company" as C
join public."MarketCap" as m
	on(c."CompanyID" = M."CompanyID")


-- MarketCapGrowth by CEO
select c."CompanyName", m."Change", m."Year", ce."CeoName"
	from public."Company" as C
join public."MarketCap" as m
	on(c."CompanyID" = M."CompanyID")
		Join public."CEOs" as ce
		on(ce."CompanyID" = c."CompanyID")
		where ce."FirstYear" <= m."Year" 
		and ce."LastYear" >= m."Year"  


-- MarketCapby CEO
select c."CompanyName", m."MarketCap(Billions)", m."Year", ce."CeoName"
	from public."Company" as C
join public."MarketCap" as m
	on(c."CompanyID" = M."CompanyID")
		Join public."CEOs" as ce
		on(ce."CompanyID" = c."CompanyID")
		where ce."FirstYear" <= m."Year" 
		and ce."LastYear" >= m."Year" 

-- MarketCap by CEO
select c."CompanyName", m."MarketCap(Billions)", m."Year", ce."CeoName"
	from public."Company" as C
join public."MarketCap" as m
	on(c."CompanyID" = M."CompanyID")
		Join public."CEOs" as ce
		on(ce."CompanyID" = c."CompanyID")
		where ce."FirstYear" <= m."Year" 
		and ce."LastYear" >= m."Year" 

