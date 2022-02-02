load data.mat ;
plot(C1(1,:), C1(2,:),'+')
hold
plot(C2(1,:), C2(2,:),'rd')
plot(C3(1,:), C3(2,:),'*') 
if(size(C1)==size(C2))
disp("C1 C2 equal");
else
    disp("Not Equal");
end
if(size(C1)==size(C3))
disp("C1 C3 equal");
else
    disp("Not Equal");
end
if(size(C2)==size(C3))
disp("C2 C3 equal");
else
    disp("Not Equal");
end
m1=[mean(C1(1,:)) mean(C1(2,:))]';
m2=[mean(C2(1,:)) mean(C2(2,:))]';
m3=[mean(C3(1,:)) mean(C3(2,:))]';
s1=[cov(C1(1,:)) cov(C1(2,:))];
s2=[cov(C2(1,:)) cov(C2(2,:))];
s3=[cov(C3(1,:)) cov(C3(2,:))];

P=1/3;
x1=[6 8]';x2=[-5 -3]';x3=[12 0]';
m=[m1 m2 m3];
S=[s1 s2 s3];


disp("x1 belongs to "+bayes_classifier(m,S,P,x1));
disp("x2 belongs to "+bayes_classifier(m,S,P,x2));
disp("x3 belongs to "+bayes_classifier(m,S,P,x3));


