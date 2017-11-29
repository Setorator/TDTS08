clear
close all
format longg
decode = dlmread('decode_result.txt');
issue = dlmread('issue_result.txt');
commit = dlmread('commit_result.txt');
ruu = dlmread('ruu_result.txt');
ialu = dlmread('ialu_result.txt');
imult = dlmread('imult_result.txt');
fpalu = dlmread('fpalu_result.txt');
fpmult = dlmread('fpmult_result.txt');


sz = 75;

x = 0:10;

figure
scatter(x(1:6), decode, sz, 'r', '^', 'filled');
hold on;
scatter(x(1:6), issue, sz, 'g', '<', 'filled');
scatter(x(1:6), commit, sz, 'b', '>', 'filled');
hold off;
axis([-1 7 0 2500000]);
ax = gca;
ax.YAxis.Exponent = 0;
ax.YAxis.TickLabelFormat = '%.0f';
legend('decode', 'issue', 'commit');
xlabel('Value (power of 2)')
ylabel('Cycles')

figure
scatter(x(2:10), ruu, sz, 'r', '^', 'filled');
axis([-1 10 0 3500000]);
ax = gca;
ax.YAxis.Exponent = 0;
ax.YAxis.TickLabelFormat = '%.0f';
legend('ruu');
xlabel('Value (power of 2)')
ylabel('Cycles')


figure
scatter(x(1:4), ialu, sz, 'r', '^', 'filled');
hold on;
scatter(x(1:4), imult, sz, 'g', 'v', 'filled');
scatter(x(1:4), fpalu, sz, 'b', '>', 'filled');
scatter(x(1:4), fpmult, sz, 'm', '<', 'filled');
hold off;
axis([-1 7 0 2500000]);
ax = gca;
ax.YAxis.Exponent = 0;
ax.YAxis.TickLabelFormat = '%.0f';
legend('ialu', 'imult', 'fpalu', 'fpmult');
xlabel('Value (power of 2)')
ylabel('Cycles')