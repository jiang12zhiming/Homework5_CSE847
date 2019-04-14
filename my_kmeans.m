function label = my_kmeans(data_points, number_of_cluster,max_iter_num,epsilon)

    data_size = size(data_points, 1);
    init_center = randi([1 data_size],number_of_cluster, 1);
    k_means_center = data_points(init_center, :);
    k_means_center_save = k_means_center;
    
    for itr =0 : max_iter_num
        dist_rec = zeros(data_size, number_of_cluster);
        for ele = 1:data_size
            for class = 1:number_of_cluster
                dist_rec(ele, class) = norm(data_points(ele, :)-k_means_center(class, :));
            end
        end
        [M, I] = min(dist_rec,[],2);
        for i = 1 : number_of_cluster
            selector = I == i;
            if sum(selector) > 0
                k_means_center(i,:) = mean(data_points(selector, :));
            end 
        end
        if sum(norm(k_means_center - k_means_center_save)) < epsilon
            break
        end
    end
    label = I;
end