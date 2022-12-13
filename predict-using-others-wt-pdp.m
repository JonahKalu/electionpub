%predicting nigeria election using linear regression



%clear screen

clc

disp('***************************************************')

disp('Predicting Nigeria Election Using Linear Regression')

disp('***************************************************')

disp(' ')



%the data is imported from the file

filename='ngElections.txt';

delimiter=' '; 

headerln=1;

A=importdata(filename,delimiter, headerln);



%view data

format long e

disp(A.colheaders);   

disp(A.data)

disp(' ')



year=A.data(:,1);

pdp_votes=A.data(:,2);

other_votes=A.data(:,3);

percentage_of_pdp_votes=A.data(:,4);

total_votes=A.data(:,5);



%plot the original data

subplot(1,2,1) 

plot(year,pdp_votes,'r', year, other_votes,'b')

,xlabel('year'),ylabel('votes'),title('ploting pdp votes and total votes against the election year'), grid on, legend('pdp votes', 'other parties') %#ok<NOPTS>



%predict result using linear regression

pData=polyfit(year, pdp_votes,1);

line_fit=polyval(pData, year);

est_2023=polyval(pData, 2023);



%polt the estimated data

subplot(1,2,2) 

plot(year,pdp_votes, 'o', year,line_fit,2023, est_2023, '*'), grid on, axis square, title('ploting estimated data'), legend('actual votes', 'line_fitting', 'estinmated vote'), xlabel('year'),ylabel('votes')

format long 

disp('the estimated vote for pdp by 2023 is: '); disp( est_2023)





        



