function [Lista, LNit, Lopt] = newton_raphson(f, Nvar, Nmax, errodf, NPontosIniciais, x_values, y_values)
    clc;

    syms a b 'real'

    v = [a; b]; 
        
    S = f(v);

    dS = jacobian(S, v); 
    d2S = jacobian(dS(:), v);
        
    df = @(x) double(subs(dS, v, x)');
    
    d2f = @(x) double(subs(d2S, v, x)');


                           
    Lista = [];
    LNit = [];
    Lopt = [];

    a = x_values;
    b = y_values;

    for i = 1:NPontosIniciais
        x = (b - a) .* rand(Nvar, 1) + a;
        Lista = [Lista, x];   
        dfx = df(x);   
        N = 1;     

        while norm(dfx) > errodf && N < Nmax  
            d = -inv(d2f(x)) * dfx;

            lambda = Wolfe(x, f, df, d, 0.1); % Chama a função Wolfe para calcular lambda. beta0 pode ser qualquer valor, pois ao contrario de sdm o passo não e calculado iterativamente
            x = x + lambda * d;  
            Lista = [Lista, x];       
            dfx = df(x);
            N = N + 1;           
        end 

        Lopt = [Lopt x];
        LNit = [LNit N];
    end 
end
