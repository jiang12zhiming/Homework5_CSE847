function selected = get_relax_data(data_, k,epsilon)
    H = data_ * data_';
    [eig_vec, eig_val] = eigs(H, k);
    selector = abs(diag(eig_val)) > epsilon;
    selected = eig_vec(:,selector);
end