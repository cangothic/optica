function output = optica(m,n,a,f ) 
%m, n tamaño matriz, a: ancho de la franja, f: desfase f*pi/2.
    b=a/2;
    f = f*(b/2);
    i=b+1;
    desf = mod(f,a);
    matriz = zeros(m,n);
    inicial=0;
    if desf-b>0
        inicial = desf-b;
    end
    matriz(:,inicial+1:min(desf,n))=1;
    i = i+desf;
    while i<=n
        bandera = i+b-1;
        if bandera<n
            matriz(:,i:bandera)=1;
        else
            matriz(:,i:n)=1;
        end
        i = i+2*b;
    end
    output = matriz;
end

