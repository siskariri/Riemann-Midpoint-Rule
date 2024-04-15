function riemannMid(f, a, b, h)

% METODE INTEGRAL RIEMANN TENGAH (MIDPOINT)

x = b:h:a;
N = fix((a-b)/h/2)*2;

int_analitik = integral(f, b, a);

int = 0;
for ii = 1 : N
    int = int + h * f((x(ii) + x(ii+1))/2);
end
I = int;

error = abs(I - int_analitik)/int_analitik;

tabel = table(I, int_analitik, error, 'VariableNames', {'Nilai Numerik', 'Nilai Analitik', 'Error'});
disp('RIEMANN MIDPOINT RULE')
disp(tabel)