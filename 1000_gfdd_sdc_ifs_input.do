clear all
macro drop _all
capture log close
set more off, perm
set scrollbufsize 320000
set linesize  80
cap set mem 1g


********************************************************************************
********************************************************************************
**
**
** Import podataka iz Global Financial Development Database (WB), 
** Sovereign Data Comparator (Fitch),
** International Financial Statisics (IMF)  
** Annual Report on Exchange Arrangements and Exchange Restrictions (IMF)
**
**
** Katja Gattin Turkalj 
**
**********************************************************************************
********************************************************************************


global phd "E:\Kgattin\My_Documents\_Ph.D_i_CV\Ph.D. rad\Radionica_Prijava rada"
global trn "K:\MONKRET\_Bilješke i analize\2017\01_Transparentnost monetarne politike\Podaci"

cd "$phd"
log using "$phd\1000_gfdd_sdc_ifs_input.smcl", replace

set linesize  80





********************************************************************************
********************************************************************************
**
** Import podataka iz GFDD  
** 
** Čihak, M., A. Demirguc-Kunt, E. Feyen and R. Levine. (2017). 
** Global Financial Development Database (GFDD): World Bank.
** 
** http://www.worldbank.org/en/publication/gfdr/data/global-financial-development-database 
** 
**
********************************************************************************
********************************************************************************

import excel "$phd\GlobalFinancialDevelopmentDatabaseJune2016.xlsx", sheet("Data - June 2016") firstrow

label var GFDDAI01 "Number of depositors with commercial banks per 1,000 adults."
label var GFDDAI02 "Number of commercial bank branches per 100,000 adults."
label var GFDDAI03 "Percentage of firms in the formal sector with a line of credit or a loan from a financial institution."
label var GFDDAI04 "Percentage of small firms (5-19 workers) in the formal sector with a line of credit or a loan from a financial institution."
label var GFDDAI05 "The percentage of respondents with an account (self or together with someone else) at a bank, credit union, another financial institution (e.g., cooperative, microfinance institution), or the post office (if applicable) including respondents who reported having a debit card (% age 15+)."
label var GFDDAI06 "The percentage of respondents who report saving or setting aside any money by using an account at a formal financial institution such as a bank, credit union, microfinance institution, or cooperative in the past 12 months (% age 15+)."
label var GFDDAI07 "The percentage of respondents who report borrowing any money from a bank, credit union, microfinance institution, or another financial institution such as a cooperative in the past 12 months (% age 15+)."
label var GFDDAI08 "The percentage of respondents who report using their accounts at a formal financial institution for business purposes only or for both business purposes and personal transactions (% age 15+)."
label var GFDDAI09 "The percentage of respondents who report using their accounts at a formal financial institution to receive money or payments from the government in the past 12 months (% age 15+)."
label var GFDDAI10 "The percentage of respondents who report using their accounts at a formal financial institution to receive money from family members living elsewhere in the past 12 months (% age 15+)."
label var GFDDAI11 "The percentage of respondents who report using their accounts at a formal financial institution to receive money or payments for work or from selling goods in the past 12 months (% age 15+)."
label var GFDDAI12 "The percentage of respondents who report saving or setting aside any money in the past 12 months (% age 15+)."
label var GFDDAI13 "The percentage of respondents who report saving or setting aside any money by using an informal savings club or a person outside the family in the past 12 months (% age 15+)."
label var GFDDAI14 "The percentage of respondents who borrowed any money in the past 12 months from any of the following sources: a formal financial institution, a store by using installment credit, family or friends, employer, or another private lender (% age 15+). (Note that getting a loan does not necessarily require having an account.)"
label var GFDDAI15 "The percentage of respondents who report borrowing any money from a private lender in the past 12 months (% age 15+)."
label var GFDDAI16 "The percentage of respondents who report borrowing any money from an employer in the past 12 months (% age 15+)."
label var GFDDAI17 "The percentage of respondents who borrowed any money in the past 12 months from a store by using installment credit or buying on credit (% age 15+)."
label var GFDDAI18 "The percentage of respondents who report borrowing any money from family or friends in the past 12 months (% age 15+)."
label var GFDDAI19 "The percentage of respondents who used checks in the past 12 months to make payments on bills or to buy things using money from their accounts (% age 15+)."
label var GFDDAI20 "The percentage of respondents with a credit card (% age 15+)."
label var GFDDAI21 "The percentage of respondents with a debit card (% age 15+)."
label var GFDDAI22 "The percentage of respondents who used electronic payments (payments that one makes or that are made automatically including wire transfers or payments made online) in the past 12 months to make payments on bills or to buy things using money from their accounts (% age 15+)."
label var GFDDAI23 "The percentage of respondents who report using a mobile phone to pay bills in the past 12 months (% age 15+)."
label var GFDDAI24 "The percentage of respondents who report using a mobile phone to send money in the past 12 months (% age 15+)."
label var GFDDAI25 "Number of ATMs per 100,000 adults."
label var GFDDAI26 "Adults depositing/withdrawing at least once in a typical month (% age 15+)"
label var GFDDAI27 "Percentage of firms with a checking or savings account."
label var GFDDAI28 "Percentage of firms using banks to finance purchases of fixed assets."
label var GFDDAI29 "Percentage of firms using bank loans to finance working capital."
label var GFDDAI30 "Percentage of loans where a formal financial institution requires collateral in order to provide the financing."
label var GFDDAI31 "Value of collateral needed by a formal financial institution for a loan or line of credit as a percentage of the loan value or the value of the line of credit."
label var GFDDAI32 "Percent of firms that did not apply for a loan in the last fiscal year because they did not need a loan. The denominator is the sum of all firms who applied and did not apply for a loan. The numerator is the number of firms who did not apply for a loan and also stated that they did not need a loan."
label var GFDDAI33 "Percent of firms whose most recent loan application was rejected by a formal financial institution."
label var GFDDAI34 "Estimated proportion of purchases of fixed assets that was financed from bank loans."
label var GFDDAI35 "Proportion of the working capital that was financed by bank loans."
label var GFDDAI36 "Percentage of firms identifying access or cost of finance as a major or very severe obstacle."
label var GFDDAM01 "Value of all traded shares outside of the largest ten traded companies as a share of total value of all traded shares in a stock market exchange."
label var GFDDAM02 "Value of listed shares outside of the largest ten largest companies to total value of all listed shares."
label var GFDDAM03 "Total amount of domestic nonfinancial corporate bonds and notes outstanding to total amount of domestic bonds and notes outstanding, both corporate and noncorporate."
label var GFDDAM04 "Estimated proportion of purchases of fixed assets that was financed by owners’ contribution or issue of new equity shares."
label var GFDDDI01 "The financial resources provided to the private sector by domestic money banks as a share of GDP. Domestic money banks comprise commercial banks and other financial institutions that accept transferable deposits, such as demand deposits."
label var GFDDDI02 "Total assets held by deposit money banks as a share of GDP. Assets include claims on domestic real nonfinancial sector which includes central, state and local governments, nonfinancial public enterprises and private sector. Deposit money banks comprise commercial banks and other financial institutions that accept transferable deposits, such as demand deposits."
label var GFDDDI03 "Total assets held by financial institutions that do not accept transferable deposits but that perform financial intermediation by accepting other types of deposits or by issuing securities or other liabilities that are close substitutes for deposits as a share of GDP. It covers institutions such as saving and mortgage loan institutions, post-office savings institution, building and loan associations, finance companies that accept deposits or deposit substitutes, development banks, and offshore banking institutions.  Assets include claims on domestic real nonfinancial sector such as central-, state- and local government, nonfinancial public enterprises and private sector."
label var GFDDDI04 "Total assets held by deposit money banks as a share of sum of deposit money bank and Central Bank claims on domestic nonfinancial real sector. Assets include claims on domestic real nonfinancial sector which includes central, state and local governments, nonfinancial public enterprises and private sector. Deposit money banks comprise commercial banks and other financial institutions that accept transferable deposits, such as demand deposits."
label var GFDDDI05 "Ratio of liquid liabilities to GDP. Liquid liabilities are also known as broad money, or M3. They are the sum of currency and deposits in the central bank (M0), plus transferable deposits and electronic currency (M1), plus time and savings deposits, foreign currency transferable deposits, certificates of deposit, and securities repurchase agreements (M2), plus travelers checks, foreign currency time deposits, commercial paper, and shares of mutual funds or market funds held by residents."
label var GFDDDI06 "Ratio of central bank assets to GDP. Central bank assets are claims on domestic real nonfinancial sector by the Central Bank."
label var GFDDDI07 "Ratio of assets of mutual funds to GDP. A mutual fund is a type of managed collective investment scheme that pools money from many investors to purchase securities."
label var GFDDDI08 "Demand, time and saving deposits in deposit money banks and other financial institutions as a share of GDP."
label var GFDDDI09 "Ratio of life insurance premium volume to GDP. Premium volume is the insurer's direct premiums earned (if Property/Casualty) or received (if Life/Health) during the previous calendar year."
label var GFDDDI10 "Ratio of nonlife insurance premium volume to GDP. Premium volume is the insurer's direct premiums earned (if Property/Casualty) or received (if Life/Health) during the previous calendar year."
label var GFDDDI11 "Ratio of assets of insurance companies to GDP."
label var GFDDDI12 "Private credit by deposit money banks and other financial institutions to GDP."
label var GFDDDI13 "Ratio of assets of pension funds to GDP. A pension fund is any plan, fund, or scheme that provides retirement income."
label var GFDDDI14 "Domestic credit to private sector refers to financial resources provided to the private sector."
label var GFDDDM01 "Total value of all listed shares in a stock market as a percentage of GDP."
label var GFDDDM02 "Total value of all traded shares in a stock market exchange as a percentage of GDP."
label var GFDDDM03 "Total amount of domestic private debt securities (amount outstanding) issued in domestic markets as a share of GDP. It covers data on long-term bonds and notes, commercial paper and other short-term notes."
label var GFDDDM04 "Total amount of domestic public debt securities (amount outstanding) issued in domestic markets as a share of GDP. It covers long-term bonds and notes, treasury bills, commercial paper and other short-term notes."
label var GFDDDM05 "Amount of private international debt securities (amount outstanding), as a share of GDP. It covers long-term bonds and notes and money market instruments placed on international markets."
label var GFDDDM06 "Amount of public international debt securities (amount outstanding), as a share of GDP. It covers long-term bonds and notes and money market instruments placed on international markets."
label var GFDDDM07 "Amount of international debt securities (amount outstanding), as a share of GDP. It covers long-term bonds and notes and money market instruments placed on international markets."
label var GFDDDM08 "Ratio of gross portfolio equity liabilities to GDP. Equity liabilities include shares, stocks, participation, and similar documents (such as American depository receipts) that usually denote ownership of equity."
label var GFDDDM09 "Ratio of gross portfolio equity assets to GDP. Equity assets include shares, stocks, participation, and similar documents (such as American depository receipts) that usually denote ownership of equity."
label var GFDDDM10 "Ratio of gross portfolio debt liabilities to GDP. Debt liabilities cover (1) bonds, debentures, notes, etc., and (2) money market or negotiable debt instruments."
label var GFDDDM11 "Ratio of gross portfolio debt assets to GDP."
label var GFDDDM12 "Ratio of new syndicated borrowing volume by private entities in industries other than finance, holding companies and insurance to GDP."
label var GFDDDM13 "Ratio of new corporate bond issuance volume by private entities in industries other than finance, holding companies and insurance to GDP."
label var GFDDDM14 "Volume weighted average maturity of new syndicated borrowing by private entities in industries other than finance, holding companies and insurance in years."
label var GFDDDM15 "Volume weighted average maturity of new corporate bond issuance by private entities in industries other than finance, holding companies and insurance in years."
label var GFDDEI01 "Accounting value of bank's net interest revenue as a share of its average interest-bearing (total earning) assets."
label var GFDDEI02 "Difference between lending rate and deposit rate. Lending rate is the rate charged by banks on loans to the private sector and deposit interest rate is the rate offered by commercial banks on three-month deposits."
label var GFDDEI03 "Bank’s income that has been generated by noninterest related activities as a percentage of total income (net-interest income plus noninterest income). Noninterest related income includes net gains on trading and derivatives, net gains on other securities, net fees and commissions and other operating income."
label var GFDDEI04 "Operating expenses of a bank as a share of the value of all assets held. Total assets include total earning assets, cash and due from banks, foreclosed real estate, fixed assets, goodwill, other intangibles, current tax assets, deferred tax assets, discontinued operations and other assets."
label var GFDDEI05 "Commercial banks’ after-tax net income to yearly averaged total assets."
label var GFDDEI06 "Commercial banks’ after-tax net income to yearly averaged equity."
label var GFDDEI07 "Operating expenses of a bank as a share of sum of net-interest revenue and other operating income."
label var GFDDEI08 "Ratio between credit by domestic money banks to the government and state-owned enterprises and GDP."
label var GFDDEI09 "Commercial banks’ pre-tax income to yearly averaged total assets."
label var GFDDEI10 "Commercial banks’ pre-tax income to yearly averaged equity."
label var GFDDEM01 "Total value of shares traded during the period divided by the average market capitalization for the period."
label var GFDDSI01 "It captures the probability of default of a country's commercial banking system. Z-score compares the buffer of a country's commercial banking system (capitalization and returns) with the volatility of those returns."
label var GFDDSI02 "Ratio of defaulting loans (payments of interest and principal past due by 90 days or more) to total gross loans (total value of loan portfolio). The loan amount recorded as nonperforming includes the gross value of the loan as recorded on the balance sheet, not just the amount that is overdue."
label var GFDDSI03 "Ratio of bank capital and reserves to total assets. Capital and reserves include funds contributed by owners, retained earnings, general and special reserves, provisions, and valuation adjustments. Capital includes tier 1 capital (paid-up shares and common stock), which is a common feature in all countries' banking systems, and total regulatory capital, which includes several specified types of subordinated debt instruments that need not be repaid if the funds are required to maintain minimum capital levels (these comprise tier 2 and tier 3 capital). Total assets include all nonfinancial and financial assets. "
label var GFDDSI04 "The financial resources provided to the private sector by domestic money banks as a share of total deposits. Domestic money banks comprise commercial banks and other financial institutions that accept transferable deposits, such as demand deposits. Total deposits include demand, time and saving deposits in deposit money banks."
label var GFDDSI05 "The capital adequacy of deposit takers. It is a ratio of total regulatory capital to its assets held, weighted according to risk of those assets. "
label var GFDDSI06 "The ratio of the value of liquid assets (easily converted to cash) to short-term funding plus total deposits. Liquid assets include cash and due from banks, trading securities and at fair value through income, loans and advances to banks, reverse repos and cash collaterals. Deposits and short term funding includes total customer deposits (current, savings and term) and short term borrowing (money market instruments, CDs and other deposits)."
label var GFDDSI07 "Provisions to nonperforming loans. Nonperforming loans are loans for which the contractual payments are delinquent, usually defined as and NPL ratio  being overdue for more than a certain number of days (e.g., usually more than 90 days). "
label var GFDDSM01 "Stock price volatility is the average of the 360-day volatility of the national stock market index."
label var GFDDOI01 "Assets of three largest commercial banks as a share of total commercial banking assets. Total assets include total earning assets, cash and due from banks, foreclosed real estate, fixed assets, goodwill, other intangibles, current tax assets, deferred tax assets, discontinued operations and other assets."
label var GFDDOI02 "The total value of demand, time and saving deposits at domestic deposit money banks as a share of GDP. Deposit money banks comprise commercial banks and other financial institutions that accept transferable deposits, such as demand deposits."
label var GFDDOI03 "A measure of the degree of competition in the banking market. It measures the elasticity of banks revenues relative to input prices. Under perfect competition, an increase in input prices raises both marginal costs and total revenues by the same amount, and hence the H-statistic equals 1. Under a monopoly, an increase in input prices results in a rise in marginal costs, a fall in output, and a decline in revenues, leading to an H-statistic less than or equal to 0. When H-statistic is between 0 and 1, the system operates under monopolistic competition. However,  it is possible for H-stat to be greater than 1 in some oligopolistic markets."
label var GFDDOI04 "A measure of market power in the banking market. It compares output pricing and marginal costs (that is, markup). An increase in the Lerner index indicates a deterioration of the competitive conduct of financial intermediaries."
label var GFDDOI05 "A measure of degree of competition based on profit-efficiency in the banking market. It is calculated as the elasticity of profits to marginal costs. An increase in the Boone indicator implies a deterioration of the competitive conduct of financial intermediaries."
label var GFDDOI06 "Assets of five largest banks as a share of total commercial banking assets. Total assets include total earning assets, cash and due from banks, foreclosed real estate, fixed assets, goodwill, other intangibles, current tax assets, deferred tax, discontinued operations and other assets."
label var GFDDOI07 "Absolute value of liquid liabilities in 2010 (in past versions, 2000) US million dollars. Liquid liabilities are also known as broad money, or M3. They are the sum of currency and deposits in the central bank (M0), plus transferable deposits and electronic currency (M1), plus time and savings deposits, foreign currency transferable deposits, certificates of deposit, and securities repurchase agreements (M2), plus travelers checks, foreign currency time deposits, commercial paper, and shares of mutual funds or market funds held by residents."
label var GFDDOI08 "Ratio of net offshore bank loans to GDP. An offshore bank is a bank located outside the country of residence of the depositor, typically in a low tax jurisdiction (or tax haven) that provides financial and legal advantages."
label var GFDDOI09 "Ratio of outstanding offshore bank loans to GDP. An offshore bank is a bank located outside the country of residence of the depositor, typically in a low tax jurisdiction (or tax haven) that provides financial and legal advantages."
label var GFDDOI10 "Percentage of loans and deposits of reporting banks vis-à-vis the banking sector to the domestic bank deposits."
label var GFDDOI11 "Percentage of loans and deposits of reporting banks vis-à-vis the nonbanking sectors to the domestic bank deposits."
label var GFDDOI12 "Percentage of loans and deposits of reporting banks vis-à-vis all sectors to the domestic bank deposits."
label var GFDDOI13 "Workers' remittances and compensation of employees comprise current transfers by migrant workers and wages and salaries earned by nonresident workers. Data are the sum of three items defined in the fifth edition of the IMF's Balance of Payments Manual: workers' remittances, compensation of employees, and migrants' transfers. "
label var GFDDOI14 "The ratio of consolidated foreign claims to GDP of the banks that are reporting to BIS. Foreign claims are defined as the sum of cross-border claims plus foreign offices’ local claims in all currencies. In the consolidated banking statistics claims that are granted or extended to nonresidents are referred to as either cross-border claims.  In the context of the consolidated banking statistics, local claims refer to claims of domestic banks’ foreign affiliates (branches/subsidiaries) on the residents of the host country (i.e. country of residence of affiliates)."
label var GFDDOI15 "Percentage of the number of foreign owned banks to the number of the total banks in an Economy. A foreign bank is a bank where 50 percent or more of its shares are owned by foreigners."
label var GFDDOI16 "Percentage of the total banking assets that are held by foreign banks. A foreign bank is a bank where 50 percent or more of its shares are owned by foreigners."
label var GFDDOI17 "Global leasing volume / GDP."
label var GFDDOI18 "Total factoring volume / GDP."
label var GFDDOI19 "Dummy variable for the presence of banking crisis (1=banking crisis, 0=none)"
label var GFDDOM01 "Number of domestically incorporated companies listed on the country's stock exchanges at the end of the year per 1,000,000 people (does not include investment companies, mutual funds, or other collective investment vehicles)."
label var GFDDOM02 "Stock market return is the growth rate of annual average stock market index."
label var GFDDOE01 "December Consumer Price Index (2010=100)"
label var GFDDOE02 "Average Consumer Price Index (2010=100)"
label var NYGDPMKTPCD "GDP (Current USD)"
label var NYGDPPCAPKD "GDP per Capita (Constant 2005 USD)"
label var NYGNPMKTPCD "GNP (Current USD)"
label var SPPOPTOTL "Population, Total"


ren GFDDAI01 no_bank_acc
ren GFDDAI02 no_bank_br
ren GFDDAI03 pc_firms_loans
ren GFDDAI04 pc_sme_loans
ren GFDDAI05 pc_bank_acc
ren GFDDAI06 pc_savings_acc
ren GFDDAI07 pc_loans
ren GFDDAI08 pc_buss_acc

ren GFDDAI20 cc
ren GFDDAI21 dc
ren GFDDAI22 ep
ren GFDDAI23 mbank
ren GFDDAI24 msend

ren GFDDDI01 credit_to_gdp
ren GFDDDI02 bk_assets_to_gdp
ren GFDDDI03 nfi_assets_to_gdp
ren GFDDDI04 share_bk_assets_in_total
ren GFDDDI05 liquid_to_gdp
ren GFDDDI06 cba_to_gdp
ren GFDDDI07 mfa_to_gdp
ren GFDDDI08 fsd_to_gdp

ren GFDDDI12 credit_to_gdp_defl_ifs
ren GFDDDI13 pfa_to_gdp
ren GFDDDI14 credit_to_gdp_wb

ren GFDDEI01 interest_margin
ren GFDDEI02 spread
ren GFDDEI03 non_interest_income
ren GFDDEI04 overhead_to_assets
ren GFDDEI05 roa
ren GFDDEI06 roe
ren GFDDEI07 cost_to_income

ren GFDDSI01 zscore
ren GFDDSI02 npl
ren GFDDSI03 car
ren GFDDSI04 ltd
ren GFDDSI05 crwar
ren GFDDSI06 liquid
ren GFDDSI07 npl_prov
ren GFDDSM01 spv
ren GFDDOI01 bank_con
ren GFDDOI02 dep_to_gdp
ren GFDDOI03 h
ren GFDDOI04 lerner
ren GFDDOI05 boon
ren GFDDOI06 conc_5_bank
ren GFDDOI07 liq_liab
ren GFDDOI08 nrloans_to_gdp_net
ren GFDDOI09 nrloans_to_gdp_gross

ren GFDDOI13 rem_to_gdp
 
ren GFDDOI15 share_foreign
ren GFDDOI16 share_foreign_assets
ren GFDDOI17 leasing
ren GFDDOI18 factoring
ren GFDDOI19 crises_dummy
ren GFDDOM01 no_firms
ren GFDDOM02 stock_mkt_ret
ren GFDDOE01 cpi_eop_gfdd
ren GFDDOE02 cpi_avg_gfdd
ren NYGDPMKTPCD gdp_cur_usd_gfdd
ren NYGDPPCAPKD gdp_const_usd_gfdd
ren NYGNPMKTPCD gnp_cur_usd_gfdd
ren SPPOPTOTL pop_gfdd


ren ISO3 iso3
ren ISO2 iso2
ren IMFcode ctry
ren Country ctry_name
ren Region region
ren IncomeGroup incomegrp
ren Year yr


drop if ctry==.
assert ctry!=.

*Izmišljamo zemlju European Union, da bismo imali "placeholer" za ECB kad ga spojimo s "$trn\Monetarni okviri_i_tečajni režimi_2008_onwards.dta"

set obs 11056
replace yr =2000 in 11056
replace ctry = 110 in 11056
replace ctry_name = "European Union" in 11056

set obs 11057
replace yr =2001 in 11057
replace ctry = 110 in 11057
replace ctry_name = "European Union" in 11057

set obs 11058
replace yr =2002 in 11058
replace ctry = 110 in 11058
replace ctry_name = "European Union" in 11058

set obs 11059
replace yr =2003 in 11059
replace ctry = 110 in 11059
replace ctry_name = "European Union" in 11059

set obs 11060
replace yr =2004 in 11060
replace ctry = 110 in 11060
replace ctry_name = "European Union" in 11060

set obs 11061
replace yr =2005 in 11061
replace ctry = 110 in 11061
replace ctry_name = "European Union" in 11061

set obs 11062
replace yr =2006 in 11062
replace ctry = 110 in 11062
replace ctry_name = "European Union" in 11062

set obs 11063
replace yr =2007 in 11063
replace ctry = 110 in 11063
replace ctry_name = "European Union" in 11063

set obs 11064
replace yr =2008 in 11064
replace ctry = 110 in 11064
replace ctry_name = "European Union" in 11064

set obs 11065
replace yr =2009 in 11065
replace ctry = 110 in 11065
replace ctry_name = "European Union" in 11065

set obs 11066
replace yr =2010 in 11066
replace ctry = 110 in 11066
replace ctry_name = "European Union" in 11066

set obs 11067
replace yr =2011 in 11067
replace ctry = 110 in 11067
replace ctry_name = "European Union" in 11067

set obs 11068
replace yr =2012 in 11068
replace ctry = 110 in 11068
replace ctry_name = "European Union" in 11068

set obs 11069
replace yr =2013 in 11069
replace ctry = 110 in 11069
replace ctry_name = "European Union" in 11069

set obs 11070
replace yr =2014 in 11070
replace ctry = 110 in 11070
replace ctry_name = "European Union" in 11070

set obs 11071
replace yr =2015 in 11071
replace ctry = 110 in 11071
replace ctry_name = "European Union" in 11071

replace region = "Europe & Central Asia" if ctry ==110
replace incomegrp ="High income: OECD" if ctry == 110

replace iso2 = "EU" if ctry ==110
replace iso3 = "EU" if ctry ==110

encode region, generate(reg)
order reg, after(region)

encode incomegrp, generate(incgrp)
order incgrp, after(incomegrp)


note: Čihak, M., A. Demirguc-Kunt, E. Feyen and R. Levine. (2017). 
note: Global Financial Development Database (GFDD): World Bank. 
note: http://www.worldbank.org/en/publication/gfdr/data/global-financial-development-database 


save "$phd\gfdd.dta", replace


********************************************************************************
********************************************************************************
**
** Import i merge podataka iz AREAER 2008-2015
** 
** http://data.imf.org/?sk=388DFA60-1D26-4ADE-B505-A05A558D9A42
**
********************************************************************************
********************************************************************************


merge m:m yr ctry using "$trn\\Monetarni okviri_i_tečajni režimi_2008_onwards.dta", keepusing(arr era) force

* GFDD ima samo do 2014. Za sada drop-amo 2015. Ako bude dostupan aupdate file-a, preskočimo drop
drop if yr==2015

*Monetarni okviri_i_tečajni režimi_2008_onwards.dta ima manji obuhvat zemalja (192). 
*Kada smo maknuli 2015. _merge==3 je prazno
list ctry ctry_name if yr==2014 & _merge==3, clean

*gledamo koje zemlje nisu u oba skupa

list ctry ctry_name if yr==2014 & _merge==3, clean


list region ctry ctry_name if yr==2014 & era==., clean
list region ctry ctry_name if yr==2014 & _merge==1, clean


note: Čihak, M., A. Demirguc-Kunt, E. Feyen and R. Levine. (2017). 
note: Global Financial Development Database (GFDD): World Bank. 
note: http://www.worldbank.org/en/publication/gfdr/data/global-financial-development-database 
note: AREAER 2008-2015
note: http://data.imf.org/?sk=388DFA60-1D26-4ADE-B505-A05A558D9A42
note: Spajamo GFDD (WB) i AREAER (IMF)


********************************************************************************
********************************************************************************
**
** Produžimo serije za Monetary framework i Exchange rate anchor unatrag
** 
** 
**
********************************************************************************
********************************************************************************


*Radimo panel

xtset ctry yr, yearly
xtdescribe

datasignature set
save "$phd\gfdd_areaer.dta", replace
export excel using "$phd\gfdd_areaer", sheet("data") firstrow(variables) sheetreplace


*Osnovne tabulacije

table region incomegrp if yr==2014, c(freq) col row
table arr era if yr==2014, c(freq) col row


log close
clear
