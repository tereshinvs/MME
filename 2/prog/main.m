[lam_ndata, lam_text, lam_alldata] = xlsread('w3.xls', 'lam')
[no_lam_ndata, no_lam_text, no_lam_alldata] = xlsread('w3.xls', 'no_lam')

s1 = 'w3';
s2 = 'I3/I1';
s3 = 'PY1/I1';
s4 = 'P3*Y3/(P1*I1)';

hold on;
plot(lam_ndata(:, get_column_num_by_name(lam_text, s1)), ...
    1./lam_ndata(:, get_column_num_by_name(lam_text, s3)) ./ ...
    lam_ndata(:, get_column_num_by_name(lam_text, s4)), 'b');
plot(no_lam_ndata(:, get_column_num_by_name(no_lam_text, s1)), ...
    1./no_lam_ndata(:, get_column_num_by_name(no_lam_text, s3)) ./ ...
    no_lam_ndata(:, get_column_num_by_name(no_lam_text, s4)), 'r');

xlabel(s1);
%ylabel('');

legend('lam', 'no lam');
