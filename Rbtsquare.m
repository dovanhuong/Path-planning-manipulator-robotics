qsq1=[0.46088 0.37699 0 1.31 0 1.4451 0];
qsq2=[.81681 0.56549 0 1.0681 0 1.2566 0 ];
qsq3=[2.36 0.69115 0 0.848 0 1.4451 0 ];
qsq4=[2.66 0.37699 0 1.31 0 1.4451 0];
% qsq5=[pi/2 0.62831 0 1.5708 0 0.94249 0];
% qsq6=[0 0.62831 0 1.5708 0 0.94249 0];

t=0:.04:2;
sqtraj1=jtraj(q0,qsq1,t); 
sqtraj2=jtraj(qsq1,qsq2,t); 
sqtraj3=jtraj(qsq2,qsq3,t); 
sqtraj4=jtraj(qsq3,qsq4,t);
sqtraj5=jtraj(qsq4,qsq1,t);
sqtraj6=jtraj(qsq1,q0,t);
% sqtraj7=jtraj(qsq6,q0,t);

hold on
atj=zeros(4,4);
view(-35,40)
xlim([-40,40])
ylim([-40,40])
zlim([0,60])
for i=1:1:51
    atj=Rbt.fkine(sqtraj1(i,:));
    jta1=transpose(atj);
    JTA1(i,:)=jta1(4,1:3);
    jta1=JTA1;
    plot2(jta1(i,:),'r.')
    Rbt.plot(sqtraj1(i,:))
    plot2(JTA1,'b')
end
for i=1:1:51
    atj2=Rbt.fkine(sqtraj2(i,:));
    jta2=transpose(atj2);
    JTA2(i,:)=jta2(4,1:3);
    jta2=JTA2;
    plot2(jta2(i,:),'r.')
    Rbt.plot(sqtraj2(i,:))
    plot2(JTA2,'b')
end
for i=1:1:51
    atj3=Rbt.fkine(sqtraj3(i,:));
    jta3=transpose(atj3);
    JTA3(i,:)=jta3(4,1:3);
    jta3=JTA3;
    plot2(jta3(i,:),'r.')
    Rbt.plot(sqtraj3(i,:))
    plot2(JTA3,'b')
end
for i=1:1:51
    atj4=Rbt.fkine(sqtraj4(i,:));
    jta4=transpose(atj4);
    JTA4(i,:)=jta4(4,1:3);
    jta4=JTA4;
    plot2(jta4(i,:),'r.')
    Rbt.plot(sqtraj4(i,:))
    plot2(JTA4,'b')
end
for i=1:1:51
    atj5=Rbt.fkine(sqtraj5(i,:));
    jta5=transpose(atj5);
    JTA5(i,:)=jta5(4,1:3);
    jta5=JTA5;
    plot2(jta5(i,:),'r.')
    Rbt.plot(sqtraj5(i,:))
    plot2(JTA5,'b')
end
for i=1:1:51
    atj6=Rbt.fkine(sqtraj6(i,:));
    jta6=transpose(atj6);
    JTA6(i,:)=jta6(4,1:3);
    jta6=JTA6;
    plot2(jta6(i,:),'r.')
    Rbt.plot(sqtraj6(i,:))
    plot2(JTA6,'b')
end
% for i=1:1:51
%     atj7=Rbt.fkine(sqtraj7(i,:));
%     jta7=transpose(atj7);
%     JTA7(i,:)=jta7(4,1:3);
%     jta7=JTA7;
%     plot2(jta7(i,:),'r.')
%     Rbt.plot(sqtraj7(i,:))
%     plot2(JTA7,'b')
% end
% Rbt.plot(sqtraj1)
% Rbt.plot(sqtraj2)
% Rbt.plot(sqtraj3)
% Rbt.plot(sqtraj4)

%matiz=[1 0 0 9;0 1 0 12; 0 0 1 10;0 0 0 1];
% t = 0 : .1: 2;
% T0 = transl([9,10,10]);%Start point1 in space
% T1 = transl([-9,10,10]);%Finish point1 in space
% TS = ctraj(T0,T1,t);%Cartesian trajectory between two points
% %Rbt.ikine(TS);%Inverse Kinematics

% %Plot trajectory
% hold on
% atj=zeros(4,4);
% %view(0,20)
% view(-60,20)
% xlim([-40,40])
% ylim([-40,40])
% zlim([0,60])

% for i=1:1:154
%     atj=Rbt.fkine(traj1(i,:));
%     jta=transpose(atj);
%     JTA(i,:)=jta(4,1:3);
%     jta=JTA;
%     plot2(jta(i,:),'ro')
%     Rbt.plot(traj1(i,:))
%     plot2(JTA,'b')
% end

% qsq1=[0 .75 -1.4 .7 0 0 0];
% qsq2=[.2 .7 -2 -.51 .2 0 0];
% qsq3=[1.53 1.073 -1.4345 -1.33 0 0 0];
% qsq4=[1.34 -.56 -1.25 -.95 0 0 0];

%Draws a C
% qsq1=[0 1.0053 0 0.94247 0 1.0053 0];
% qsq2=[pi/2 1.0053 0 0.94247 0 1.0053 0];
% qsq3=[pi 1.0053 0 0.94247 0 1.0053 0];
% qsq4=[pi 0.62831 0 1.5708 0 0.94249 0];
% qsq5=[pi/2 0.62831 0 1.5708 0 0.94249 0];
% qsq6=[0 0.62831 0 1.5708 0 0.94249 0];