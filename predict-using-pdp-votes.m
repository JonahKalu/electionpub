%program to predict the votes of pdp in 2023 using linear regression

%WRITTEN BY jONAH KALU & TEAM

% DATE DECEMBER 10, 2023



%loading original dataset

data = [2019, 1, 11262987, 4122, 27324583; 2015, 1, 12853162, 44.96, 28587564; 2011, 1, 22495187, 58.87, 38209978; 2007, 1, 24638063, 69.60, 35397517; 2003, 1, 24455140, 61.94, 39480489; 1999, 1, 18738154, 62.78, 29848441;]



%extract the columns

year_data= data(:,1);

pdp_data= data(:,3);

total_data= data(:,5);



%plot the original data

subplot(1,2,1) 

plot(year_data,pdp_data,'r', year_data, total_data,'b')

,xlabel('year'),ylabel('votes'),title('ploting pdp votes and total votes against the election year'), grid on, legend('pdp votes', 'total votes') %#ok<NOPTS>



%predict result using linear regression

a=polyfit(year_data, pdp_data,1);

line_fit=polyval(a, year_data);

est_2023=polyval(a, 2023);



%polt the estimated data

subplot(1,2,2) 

plot(year_data,pdp_data, 'o', year_data,line_fit,2023, est_2023, '*'), grid on, axis square, title('ploting estimated data'), legend('actual votes', 'line_fitting', 'estinmated vote'), xlabel('year'),ylabel('votes')

format long 

disp('the estimated vote for pdp by 2023 is: '); disp( est_2023)

