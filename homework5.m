% homework 5 - geometric tansform
function homework5

N = 256;
R = 30;
%type = 1;
for type = 1:3,
alpha = 3;
theta = pi/4;

h = filter_gen(N, R, type);
w = randn(N);
H = fft2(h);
W = fft2(w);

colormap(gray(256));

for alpha = [1,2,4,8],
    for angle = 1:4,
        theta = (angle-1)*pi/4;
        H1 = gtrans(H, alpha, theta);
        Y = W.*H1;
        y = ifft2(Y);


imagesc(real(y));
pause;
    end;
end;
end;


