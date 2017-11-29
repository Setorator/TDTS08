clear
format longg
decode = dlmread('lab3/decode_result.txt');
issue = dlmread('lab3/issue_result.txt');
commit = dlmread('lab3/commit_result.txt');
ruu = dlmread('lab3/ruu_result.txt');
ialu = dlmread('lab3/ialu_result.txt');
imult = dlmread('lab3/imult_result.txt');
fpalu = dlmread('lab3/fpalu_result.txt');
fpmult = dlmread('lab3/fpmult_result.txt');


sz = 50;

x = 1:10;

figure
scatter(x(1:6), decode, sz, 'r', 'filled');
hold on;
scatter(x(1:6), issue, sz, 'g', 'filled');
scatter(x(1:6), commit, sz, 'b', 'filled');
hold off;
axis([0 7 0 2500000]);
ax = gca;
ax.YAxis.Exponent = 0;
ax.YAxis.TickLabelFormat = '%.0f';
title('Width')
xlabel('Value')
ylabel('Cycles')

figure
scatter(x(1:9), ruu, sz, 'r', 'filled');
axis([0 10 0 3500000]);
ax = gca;
ax.YAxis.Exponent = 0;
ax.YAxis.TickLabelFormat = '%.0f';
title('Size')
xlabel('Value')
ylabel('Cycles')


figure
scatter(x(1:4), ialu, sz, 'r', 'filled');
hold on;
scatter(x(1:4), imult, sz, 'g', 'filled');
scatter(x(1:4), fpalu, sz, 'b', 'filled');
scatter(x(1:4), fpmult, sz, 'p', 'filled');
hold off;
axis([0 7 0 2500000]);
ax = gca;
ax.YAxis.Exponent = 0;
ax.YAxis.TickLabelFormat = '%.0f';
title('Res')
xlabel('Value')
ylabel('Cycles')