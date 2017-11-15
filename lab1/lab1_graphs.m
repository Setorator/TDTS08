clear
format longg
data = dlmread('lab1/output_data.txt', '	').';
inst = dlmread('lab1/output_inst.txt', '	').';
unified = dlmread('lab1/output_unified.txt', '	').';

figure
plot(data)
title('Only data')
xlabel('Associativity')
ylabel('Miss Ratio')
figure
plot(inst)
title('Only instructions')
xlabel('Associativity')
ylabel('Miss Ratio')
figure
plot(unified)
title('Instructions and data')
xlabel('Associativity')
ylabel('Miss Ratio')