q0=[0 0 0 0 0 0 0];
q1b=[3*pi .1745 pi/3 pi/2 .5236 pi/1.5 0];
q1=[.0873 .1745 .3491 .1745 .5236 .8727 0];
q2=[.0873 0 -.3491 .2618 .8727 1.2217 0];
q3=[-.1745 -.3491  .5236 .0873 -.1222 .3491 0];
q4=[.1745 .1745 0 -.1396 .3191 -.5236 0];
q5=[-.3491 -.3491 -.3491 0 -.0873 0 0];

%Iniciar Rbt
L1=Link([0 12.4 0 pi/2 0 -pi/2]);
L2=Link([0 0 0 -pi/2 ]);
L3=Link([0 15.43 0 pi/2 ]);
L4=Link([0 0 0 -pi/2 0 0]);
L5=Link([0 15.925 0 pi/2]);
L6=Link([0 0 0 -pi/2 ]);
L7=Link([0 15.0 0 0 0 pi/2]);

LinkMat=[0 12.4 0 pi/2 0 -pi/2;
    0 0 0 -pi/2 0 0;
    0 15.43 0 pi/2 0 0;
    0 0 0 -pi/2 0 0;
    0 15.925 0 pi/2 0 0;
    0 0 0 -pi/2 0 0;
    0 15 0 0 0 pi/2];
Rbt=SerialLink([L1 L2 L3 L4 L5 L6 L7]);
Rbt2=SerialLink([L1 L2 L3 L4 L5]);
Rbt3=SerialLink(LinkMat);
t=0:.03:2;%Time vector & steps
traj1=jtraj(q0,q1,t); 
traj2=jtraj(q1,q2,t);
traj3=jtraj(q2,q3,t);
traj4=jtraj(q3,q4,t);
traj5=jtraj(q4,q5,t);
traj6=jtraj(q5,q0,t);

% Rbt.plot(traj1)