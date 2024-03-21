function d = steepest_descent_wolfe_method()
    % MÉTODO DE DECIDA MÁXIMA C/WOLFE (SDM- STEEPEST DESCENT METHOD)
    
    % ESTE m.FILE IMPLEMENTA O SDM PARA FUNÇÕES OBJETIVO f DEFINIDAS COMO FUNC-
    % TION-HANDLE f=@(x) ATRAVÉS DE UMA EXPRESSÃO NAS SUAS VARIÁVEIS x(i); ES-
    % TAS VARIÁVEIS x(i)COMPOÊM A VARIÁVEL x DA FUNÇÃO f), SENDO x TRATADA A
    % NÍVEL DO MATLAB COMO UM VETOR COLUNA [x(1);x(2);...].
    
    % ESTE m.FILE IMPLEMENTA O SDM COM:
    % - ESCOLHA DE PASSOS lambda DE ACORDO COM AS CONDIÇÕES DE WOLFE;  RECORRE  
    %   AO FICHEIRO "Wolfe.m" ONDE ESTAS CONDIÇÕES ESTÃO IMPLEMENTADAS SEGUNDO 
    %   O ALGORITMO 2 (VER FICHEIRO SOBRE ESCOLHA DE PTOS INICIAIS E PASSOS).
    
    % ESTE M.file RECORRE A 3 m.FILES: 
    % - "nivelGraficos.m", "graficosLineSearch.m", "mean.m" E AINDA "Wolfe.m". 
    
    
    clc

    d=1;

end
