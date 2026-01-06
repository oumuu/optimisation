param n;
param U{i in 1..n};
param A{i in 1..n};
param B;

var x{1..n} binary;

maximize valeur_totale:
    sum{i in 1..n} U[i]*x[i];

subject to
capa:
    sum{i in 1..n} A[i]*x[i] <= B;

solve;

printf "Solution du sac à dos\n";
for {i in 1..n}{
    printf "Objet %d : x=%d\n", i, x[i];
}
printf "Valeur totale = %f\n", valeur_totale;
