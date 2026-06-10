function A = vec2max(v)

m = length(v);
n = (1 + sqrt(1 + 8*m))/2;

if mod(n,1) ~= 0
    error('Invalid vector length.');
end

A = eye(n);

k = 1;
    for i = 1:n-1
        for j = i+1:n
            A(i,j) = v(k);
            A(j,i) = v(k);   % mirror to lower triangle
            k = k + 1;
        end
    end
end
