**# Title

abseff - immediate calculation of absolute effects from relative treatment estimates

**# Syntax

abseff N1 N2 N3 N4 N5 N6

where,

N1 = identification of treatment effect estimate (rr, rr100, or, or100, hrevent, hrevent100, hrsurv, hrsurv100)
N2-N6 = numerical values based on each treatment effect

**# Description

The command abseff was created for the immediate calculating of absolute effects based on relative treatment estimates. 

The main intention of this command is to facilitate absolute effects derivation for health researchers and systematic review authors. Editors and peer-reviewers of Cochrane reviews may also find this helpful as they have to revise multiple summary of findings table. 


**# Absolute effect based on relative risk (risk ratios)

abseff rr N2 N3 N4 N5 N6
abseff rr100 N2 N3 N4 N5 N6

N2 = point estimate for the relative risk
N3 = lower limit of the confidence interval for the relative risk
N4 = upper limite of the confidence interval for the relative risk
N5 = total number of events on control group
N6 = total number of participants on control group

Example (1): 
. abseff rr 0.83 0.63 1.03 50 130

Display:
point absolute effect = 319
lower_limit absolute effect = 242
upper_limit absolute effect = 396

Explanation:
This example is calculating the absolute effects on base 1000 for a relative risk of 0.83 (95% CI of 0.63 to 1.03) considering a control risk of 50/130. The antecipated risk with intervention of 319 (242 to 396) per 1000 patients.

Example (2): 
. abseff rr100 0.83 0.63 1.03 50 130

Display:
point absolute effect = 32
lower_limit absolute effect = 24
upper_limit absolute effect = 40

Explanation:
If you wish an easy and rapid convertion on base 100 you can identify rr100. The rationale is the same on example(1), but the results are on base 100. The antecipated risk with intervention of 32 (24 to 40) per 100 patients.

**# Absolute effect based on odds ratios

abseff or N2 N3 N4 N5 N6
abseff or100 N2 N3 N4 N5 N6

N2 = point estimate for the odds ratio
N3 = lower limit of the confidence interval for the odds ratio
N4 = upper limite of the confidence interval for the odds ratio
N5 = total number of events on control group
N6 = total number of participants on control group

Example (3):
. abseff or 1.57 1.31 1.87 14 100

Display:
point absolute effect = 204
lower_limit absolute effect = 176
upper_limit absolute effect = 233

Explanation:
This example is calculating the absolute effects on base 1000 for a odds ratio of 1.57 (95% CI of 1.31 to 1.87) considering a control risk of 14/100.

Example (4):
. abseff or100 1.57 1.31 1.87 14 100

Display:
point absolute effect = 20
lower_limit absolute effect = 18
upper_limit absolute effect = 23

Explanation:
This example is calculating the absolute effects on base 100 for a odds ratio of 1.57 (95% CI of 1.31 to 1.87) considering a control risk of 14/100.


**# Absolute effect based on hazard ratios

**# ***Event calculation (absolute risk of an event within a particular period of time)


abseff hrevent N2 N3 N4 N5 
abseff hrevent100 N2 N3 N4 N5 

N2 = point estimate for the hazard ratio
N3 = lower limit of the confidence interval for the hazard ratio
N4 = upper limite of the confidence interval for the hazard ratio
N5 = % of patients with event in control group

Example (5):
. abseff hrevent 0.90 0.61 1.34 0.055

Display: 
point absolute effect = 50
lower_limit absolute effect = 34
upper_limit absolute effect = 73

Explanation:
This example is calculating the absolute risk of an event on base 1000 for a hazard ratio of 0.90 (95% CI of 0.61 to 1.34) considering a control risk of 0.055 (5.5%) in a particular time (e.g. 5 years).
Indicating hrevent100 would wield the result on base 100. 
For hazard ratios, we include the % of patients with event in control group, as this is more often the available information presented in survival curves rather than number of events. If you have the number of events, you can just calculate the % and add to the code.


**# ***Event-free survival calculation (absolute risk of event-free survival within a particular period of time)

abseff hrsurv N2 N3 N4 N5 
abseff hrsurv100 N2 N3 N4 N5 

N2 = point estimate for the hazard ratio
N3 = lower limit of the confidence interval for the hazard ratio
N4 = upper limite of the confidence interval for the hazard ratio
N5 = % of patients with event-free in control group

Example (6):
. abseff hrsurv 0.35 0.18 0.65 0.7

Display:
point absolute effect = 883
lower_limit absolute effect = 793
upper_limit absolute effect = 938

Explanation:
This example is calculating the absolute risk of an event-free survival on base 1000 for a hazard ratio of 0.35 (95% CI of 0.18 to 0.65) considering a control risk of 0.7 (70%) in a particular time (e.g. 5 years). The antecipated risk of event-free (e.g. alive) patients with intervention is 883 (793 to 938) per 1000 patients.
Indicating hrsurv100 would wield the result on base 100. 


**# References
Calculations were based on the following publications:

[1] Schünemann HJ, Higgins JPT, Vist GE, Glasziou P, Akl EA, Skoetz N, Guyatt GH. Chapter 14: Completing `Summary of findings' tables and grading the certainty of the evidence. In: Higgins JPT, Thomas J, Chandler J, Cumpston M, Li T, Page MJ, Welch VA (editors). Cochrane Handbook for Systematic Reviews of Interventions version 6.2 (updated February 2021). Cochrane, 2021. Available from www.training.cochrane.org/handbook.

[2] Skoetz N, Goldkuhle M, van Dalen EC, Akl EA, Trivella M, Mustafa RA, Nowak A, Dahm P, Schünemann H, Bender R; GRADE Working Group. GRADE guidelines 27: how to calculate absolute effects for time-to-event outcomes in summary of findings tables and Evidence Profiles. J Clin Epidemiol. 2020 Feb;118:124-131. doi: 10.1016/j.jclinepi.2019.10.015.


**# Authors
Rafael Leite Pacheco
Núcleo de Avaliação de Tecnologias em saúde, Hospital Sírio-Libanês; Núcleo de Ensino e Pesquisa em Saúde Baseada em Evidências, Universidade Federal de São Paulo.

Rachel Riera
Núcleo de Avaliação de Tecnologias em saúde, Hospital Sírio-Libanês; Núcleo de Ensino e Pesquisa em Saúde Baseada em Evidências, Universidade Federal de São Paulo.

**# Support
e-mail: rleitepacheco@hotmail.com

