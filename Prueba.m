%% 
% Prueba de la función para comprobar que su comportamiento es correcto.

% Número de veces que se ejecuta el experimento.
muestras = 10000;
% Vector de ceros en el que guardo los resultados. 
salida = zeros(1,muestras);

% En el bucle relleno el vector.
for i = 1:muestras
    salida(i) = rand7();
end

% Con esta función agrupo los números para ver
% las veces que lo devuelve la función.
% Para no ver el número entero de veces, lo normalizo
% respecto al número total, hallando la probabilidad
% de cada número.
figure
histogram(salida, 'Normalization', 'probability');

% Si el experimento se hiciera un número infinito de veces,
% la probabilidad de que aparezca cada número sería de 1/7.