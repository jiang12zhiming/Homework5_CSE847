rng default; % For reproducibility
X = [randn(100,2)*0.75+ones(100,2);
    randn(100,2)*0.5-ones(100,2)];
epsilon = 1e-3
figure;
plot(X(:,1),X(:,2),'.');
title 'Randomly Generated Data';

number_of_cluster = 2;
max_iter_num = 50;
new_label = my_kmeans(X, number_of_cluster, max_iter_num,epsilon);

figure(2); clf;
RGB1 = [255 153 153]/256 ;
RGB2 = [204 204 255]/256 ;    
for i = 1 : size(centers, 1)
    selector = (new_label == i);
    if i == 1
        scatter(X(selector,1), X(selector,2), 20, RGB1, 'fill');
    
    else
        scatter(X(selector,1), X(selector,2), 20, RGB2, 'fill');
    end
    hold on
end
title('results')
axis equal


