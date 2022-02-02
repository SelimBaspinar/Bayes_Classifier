function [z]=bayes_classifier(m,S,P,X)
[l,c]=size(m);

for i=1:4
    for j=1:c
        t(j)=P*comp_gauss_dens_val(m(:,j),S(:,j),X);
    end
end
     result=max(t);
if(result==t(1))
    z="Class 1";
elseif(result==t(2)) 
     z="Class 2";
else
     z="Class 3";

end