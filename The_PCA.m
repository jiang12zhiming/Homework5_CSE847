load('USPS.mat');
p = [10,50,100,200];
errors = zeros(length(p),1);
% error rate [10,50,100,200];
for j = 1:4
    % digit from 0 to 9
    for i = 0:9
        % get data for perticular number.
        data = A(L==i,:);
        temp_mean = mean(data,1);
        data = data - repmat(temp_mean,size(data,1),1);
        coeff = pca(data);
        data_after_reconstuct = data * coeff(:,1:p(j)) * coeff(:,1:p(j))' + repmat(temp_mean,size(data,1),1);
        errors(j) = errors(j) + mean(mean(power(data_after_reconstuct - data, 2)));
        if i == 0
            image_1 = reshape(data_after_reconstuct(1,:),16,16);
            image_2 = reshape(data_after_reconstuct(2,:),16,16);
            figure;
            imshow(image_1);imwrite(image_1,sprintf('image%d_1.png', j));
            figure;
            imshow(image_2);imwrite(image_2, sprintf('image%d_2.png', j));
        end
    end
    errors(j) = errors(j) / 10;
end

figure;
plot(errors, '-o', 'MarkerFaceColor','r', 'LineWidth', 2);
grid on;
ylabel('Reconstruction error')