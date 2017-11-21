clear
format longg
data = dlmread('lab1/output_data.txt', '	').';
inst = dlmread('lab1/output_inst.txt', '	').';
unified = dlmread('lab1/output_unified.txt', '	').';


% figure
% plot(data)
% title('Only data')
% xlabel('Associativity')
% ylabel('Miss Ratio')
% figure
% plot(inst)
% title('Only instructions')
% xlabel('Associativity')
% ylabel('Miss Ratio')
% figure
% plot(unified)
% title('Instructions and data')
% xlabel('Associativity')
% ylabel('Miss Ratio')


line_size = 32;
associativity = [1 2 3 4 5 6 7 8];
no_sets = [128, 256, 512, 1024, 2048, 4096];
cache_sizes = line_size * (associativity.' * no_sets);

% cost function = (100000 * miss ratio) + (0.01 * cache size in bytes)

cost = (100000 * inst) + (0.01 * cache_sizes);

budget = 8000;
best = 0;

for row=1:size(cost,1)
    for col=1:size(cost,2)
          if ((cost(row,col) <= budget) && (cost(row,col) > best))
              best = cost(row, col);
          end
    end
end