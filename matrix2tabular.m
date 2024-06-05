function T = matrix2tabular(M)
% Converts a matrix into a LaTeX tabular environment.
%
% Sets up the beginning and ending strings.
cols = size(M,2);
begstr = '\begin{tabular}{|';
for i = 1:cols
    begstr = strcat(begstr, 'c|');
end
begstr = strcat(begstr, '}$');
endstr = '$\end{tabular}';
% Creates the string.
T = mat2str(M);
T = replace(T, '[', begstr);
T = replace(T, ' ', '$ & $');
T = replace(T, ';', '$\\ $');
T = replace(T, ']', endstr);
end