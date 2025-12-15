%% 
% Refactorización de función randi(5)

% La función randi(5) genera números enteros
% aleatorios de manera uniforme del 1 al 5.

function resultado = rand7()
    while true
        % Genero dos números enteros aleatorios del 1 al 5.
        n1 = randi(5);
        n2 = randi(5);

        indice = 5*(n1-1) + (n2-1);
        % Con la expresión anterior se genera un espacio uniforme de números 
        % enteros de 0 a 24. 
        % Si lo entendemos como una matriz:
        % Con el primer factor elegimos fila 0,5,15,20 y con el segundo
        % cuanto sumamos a esa fila para conseguir todos los números.

        if (indice) < 21
            % Elimino los valores 21-24 para que cada resto tenga la misma
            % probabilidad de salir. Sino, el 1,2,3,4 tendrían 4
            % oportunidades de salir y el 5,6,7 solo 3.
            
            resultado = mod(indice,7) + 1; 
            % Divido el indice entre 7 y me quedo el resto (0-6).
            % Sumo 1 para que devuelva sietes y evitar que devuelva ceros.
            return;
        end

        % Sino ha entrado en el if, vuelve al inicio del while hasta que
        % cumpla la condición.
    end
end