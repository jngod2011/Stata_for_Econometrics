function basketball%function name
clear all; close all; clc;
%% Drafting accuracy
timePause = 0.01;
%% Make the 3D vision
ground = axes('xlim', [-500 500],'ylim', [-605 360], 'zlim', [-105 500]);%coordinate axis
view(3)%set 3D view
grid on;%show the grid
axis equal;% make every axis equal to each other
hold on;
xlabel('x');%set x label
ylabel('y');%set y label
zlabel('z');%set z label
yAxisChange = - 600;%y axis change value to combine two coordinate axis
zAxisChange = - 105;%z axis change value to combine two coordinate axis
%% Play ground
%Ground
[ground1_x, ground1_y] = meshgrid(-500 : 1000 : 500, 0 : 960 : 960);%Set the x values and the y values
ground1_y = ground1_y + yAxisChange;%Change the y value to the plot coordinate axis
ground1_z = ground1_x.^0 + ground1_y.^0 - 2  + zAxisChange; %Change the y value to the plot coordinate axis
surface(ground1_x, ground1_y, ground1_z, 'FaceColor', [14/255 131/255 63/255], 'EdgeColor', [14/255 131/255 63/255]);%Fill that area
%The paint
[ground2_x, ground2_y] = meshgrid(-245 : 490 : 245, 0 : 580 : 580);
ground2_y = ground2_y + yAxisChange;
ground2_z = ground2_x.^0 + ground2_y.^0 - 1.99 + zAxisChange;
surface(ground2_x, ground2_y, ground2_z, 'FaceColor', [187/255 61/255 36/255], 'EdgeColor', [187/255 61/255 36/255]);
%Base line
[line1_x, line1_y] = meshgrid(-500 : 1000 : 500, -5 : 5 : 0);
line1_y = line1_y + yAxisChange;
line1_z = line1_x.^0 + line1_y.^0 - 1.99 + zAxisChange;
surface(line1_x, line1_y, line1_z, 'FaceColor', [1 1 1], 'EdgeColor', [1 1 1]);
%Freethrow line
[line2_x, line2_y] = meshgrid(-250 : 500 : 250, 580 : 5 : 585);
line2_y = line2_y + yAxisChange;
line2_z = line2_x.^0 + line2_y.^0 - 1.99 + zAxisChange;
surface(line2_x, line2_y, line2_z, 'FaceColor', [1 1 1], 'EdgeColor', [1 1 1]);
%Wing
[line3_x, line3_y] = meshgrid(-250 : 5 : -245, 0 : 585 : 585);
line3_y = line3_y + yAxisChange;
line3_z = line3_x.^0 + line3_y.^0 - 1.99 + zAxisChange;
surface(line3_x, line3_y, line3_z, 'FaceColor', [1 1 1], 'EdgeColor', [1 1 1]);
[line4_x, line4_y] = meshgrid(245 : 5 : 250, 0 : 585 : 585);
line4_y = line4_y + yAxisChange;
line4_z = line4_x.^0 + line4_y.^0 - 1.99 + zAxisChange;
surface(line4_x, line4_y, line4_z, 'FaceColor', [1 1 1], 'EdgeColor', [1 1 1]);
%Points
[pointL1_x, pointL1_y] = meshgrid(250 : 10 : 260, 175 : 5 : 180);
pointL1_y = pointL1_y + yAxisChange;
pointL1_z = pointL1_x.^0 + pointL1_y.^0 - 1.99 + zAxisChange;
surface(pointL1_x, pointL1_y, pointL1_z, 'FaceColor', [1 1 1], 'EdgeColor', [1 1 1]);
[pointL2_x, pointL2_y] = meshgrid(250 : 10 : 260, 265 : 40 : 305);
pointL2_y = pointL2_y + yAxisChange;
pointL2_z = pointL2_x.^0 + pointL2_y.^0 - 1.99 + zAxisChange;
surface(pointL2_x, pointL2_y, pointL2_z, 'FaceColor', [1 1 1], 'EdgeColor', [1 1 1]);
[pointL3_x, pointL3_y] = meshgrid(250 : 10 : 260, 390 : 5 : 395);
pointL3_y = pointL3_y + yAxisChange;
pointL3_z = pointL3_x.^0 + pointL3_y.^0 - 1.99 + zAxisChange;
surface(pointL3_x, pointL3_y, pointL3_z, 'FaceColor', [1 1 1], 'EdgeColor', [1 1 1]);
[pointL4_x, pointL4_y] = meshgrid(250 : 10 : 260, 480 : 5 : 485);
pointL4_y = pointL4_y + yAxisChange;
pointL4_z = pointL4_x.^0 + pointL4_y.^0 - 1.99 + zAxisChange;
surface(pointL4_x, pointL4_y, pointL4_z, 'FaceColor', [1 1 1], 'EdgeColor', [1 1 1]);

[pointR1_x, pointR1_y] = meshgrid(-260 : 10 : -250, 175 : 5 : 180);
pointR1_y = pointR1_y + yAxisChange;
pointR1_z = pointR1_x.^0 + pointR1_y.^0 - 1.99 + zAxisChange;
surface(pointR1_x, pointR1_y, pointR1_z, 'FaceColor', [1 1 1], 'EdgeColor', [1 1 1]);
[pointR2_x, pointR2_y] = meshgrid(-260 : 10 : -250, 265 : 40 : 305);
pointR2_y = pointR2_y + yAxisChange;
pointR2_z = pointR2_x.^0 + pointR2_y.^0 - 1.99 + zAxisChange;
surface(pointR2_x, pointR2_y, pointR2_z, 'FaceColor', [1 1 1], 'EdgeColor', [1 1 1]);
[pointR3_x, pointR3_y] = meshgrid(-260 : 10 : -250, 390 : 5 : 395);
pointR3_y = pointR3_y + yAxisChange;
pointR3_z = pointR3_x.^0 + pointR3_y.^0 - 1.99 + zAxisChange;
surface(pointR3_x, pointR3_y, pointR3_z, 'FaceColor', [1 1 1], 'EdgeColor', [1 1 1]);
[pointR4_x, pointR4_y] = meshgrid(-260 : 10 : -250, 480 : 5 : 485);
pointR4_y = pointR4_y + yAxisChange;
pointR4_z = pointR4_x.^0 + pointR4_y.^0 - 1.99 + zAxisChange;
surface(pointR4_x, pointR4_y, pointR4_z, 'FaceColor', [1 1 1], 'EdgeColor', [1 1 1]);
%% Basket
hoop_radius = 45 / 2; %radius of the hoop = 45cm/2
[hoop_x, hoop_y, hoop_z] = cylinder([hoop_radius hoop_radius], 400);
hoop_z = 2 * hoop_z; %Thickness: 2cm
hoop = surface(hoop_x, hoop_y, hoop_z, 'FaceColor', 'r', 'EdgeColor', 'r'); %Hoop

[net_x, net_y, net_z] = cylinder([0.7*hoop_radius 0.75*hoop_radius 0.8*hoop_radius 0.9*hoop_radius hoop_radius]); %Net
net_z = 42 * net_z - 42; %Move net under the hoop
net = surface(net_x, net_y, net_z, 'FaceColor', 'w'); %Net

[board_x, board_y] = meshgrid(-90 : 180 : 90, 0 : 105 : 105);%Board
board_z = board_y - 37.5;  %Move the board
board_y = board_x.^0 .* 3 - hoop_radius - 3.5;
board = surface(board_x, board_y, board_z, 'FaceColor', [1 1 1], 'EdgeColor', [0 0 0]);%Board

basket_part(1) = hoop;
basket_part(2) = net;
basket_part(3) = board;

basket = hgtransform('parent',ground); %Put all basket together
set(basket_part,'parent',basket);
moveBasket = makehgtform('translate', [0, 157.5 + yAxisChange, 305 + zAxisChange]); %Basket position
set(basket, 'matrix', moveBasket);
%% Player
%Head
head_radius = 40 / 2; %Radius of the head
[head_x, head_y, head_z] = sphere();
head_x = head_x * head_radius;
head_y = head_y * head_radius;
head_z = head_z * head_radius + 135;
head = surface(head_x, head_y, head_z, 'FaceColor', [0 0 0], 'EdgeColor', [0 0 0]);
%Body
[body_x, body_y, body_z] = cylinder([20 20 20 15],160);
body_z = 85 * body_z + 55;
body = surface(body_x, body_y, body_z, 'FaceColor', [0 0 0.5], 'EdgeColor', [0 0 0.35]);
%Legs
[leftleg_x, leftleg_y, leftleg_z] = cylinder([9 9], 80);
leftleg_x = leftleg_x + 10;
leftleg_z = 75 * leftleg_z + 0.1;
leftleg = surface(leftleg_x, leftleg_y, leftleg_z, 'FaceColor', [0 0 0.5], 'EdgeColor', [0 0 0.35]);
[rightleg_x, rightleg_y, rightleg_z] = cylinder([9 9], 80);
rightleg_x = rightleg_x - 10;
rightleg_z = 75 * rightleg_z + 0.1;
rightleg = surface(rightleg_x, rightleg_y, rightleg_z, 'FaceColor', [0 0 0.5], 'EdgeColor', [0 0 0.35]);
%Arms
[leftarm_x, leftarm_y, leftarm_z] = cylinder([8 8], 80);
leftarm_x = leftarm_x + 17;
leftarm_z = 65 * leftarm_z - 65;
leftarm = surface(leftarm_x, leftarm_y, leftarm_z, 'FaceColor', [0.5 0 0], 'EdgeColor', [0.5 0 0]);
[rightarm_x, rightarm_y, rightarm_z] = cylinder([8 8], 80);
rightarm_x = rightarm_x - 17;
rightarm_z = 65 * rightarm_z - 65;
rightarm = surface(rightarm_x, rightarm_y, rightarm_z, 'FaceColor', [0.5 0 0], 'EdgeColor', [0.5 0 0]);
%Player
man(1) = head;
man(2) = body;
man(3) = leftleg;
man(4) = rightleg;
player = hgtransform('parent', ground);
set(man, 'parent', player);
man_dy = 600;
manMove =  makehgtform('translate', [0, man_dy + yAxisChange, zAxisChange]);
set(player,'matrix',manMove);
%Arms
arms(1) = leftarm;
arms(2) = rightarm;
arm = hgtransform('parent', ground);
set(arms, 'parent', arm);
%% Ball
ball_radius = 24.6 / 2; %Radius of the basket ball
[ball_x, ball_y, ball_z] = sphere();
ball_x = ball_x * ball_radius;
ball_y = ball_y * ball_radius;
ball_z = ball_z * ball_radius;
ball = surface(ball_x, ball_y, ball_z, 'FaceColor', [231/255 101/255 26/255],'EdgeColor', [231/255 101/255 26/255]);
basketball = hgtransform('parent',ground);
set(ball,'parent',basketball);
%% GUI
prompt = {'Slow Play (from 1 to 8): ','Duration Time (from 1 to 2): ', 'Arm Rotation Angle (from 20 to 100): ', 'Ball Rotation Cycles (No Negative Number): '};%set user's input and limit range of value
dlg_title = 'Preference Setting';% named that UI as "oreference setting"
userinput = inputdlg(prompt,dlg_title);% make the pop-up window UI

playSpeed = str2double(userinput(1)); % transfer playspeed input from string to double
goalTime = str2double(userinput(2));  % transfer duration time input from string to double
armAngle = str2double(userinput(3)); % transfer arm rotation angle input from string to double
rotationCycles_ball= str2double(userinput(4));% transfer ball rotation cycles input from string to doule

while playSpeed < 1 || playSpeed > 8 % If user types value that are smaller 1 or bigger than 8 in playspeed part, back to preference setting. User should retype the value.
    prompt = {'Slow Play (from 1 to 8): '};
    dlg_title = 'Preference Setting';
    userinput = inputdlg(prompt,dlg_title);
    playSpeed = str2double(userinput(1));
end
while goalTime < 1 || goalTime > 2 %If user types value that are smaller 1 or bigger than 2 in goaltime part, back to preference setting. User should retype the value.
    prompt = {'Duration Time (from 1 to 2): '};
    dlg_title = 'Preference Setting';
    userinput = inputdlg(prompt,dlg_title);
    goalTime = str2double(userinput(1));
end
while armAngle <= 20 || armAngle > 100 % If user types value that are smaller and equal 20 or bigger than 100 in arm angle part, back to preference setting. User should retype the value.
    prompt = {'Arm Rotation Angle (from 20 to 100): '};
    dlg_title = 'Preference Setting';
    userinput = inputdlg(prompt,dlg_title);
    armAngle = str2double(userinput(1));
end
while rotationCycles_ball < 0 %If user types value that are smaller 0 in ball rotation cycles part, back to preference setting. User should retype the value.
    
    
    prompt = {'Ball Rotation Cycles (No Negative Number): '};
    dlg_title = 'Preference Setting';
    userinput = inputdlg(prompt,dlg_title);
    rotationCycles_ball = str2double(userinput(1));
end
%% Arm compute
armRotationTime = armAngle / 120; %The time will be needed to rotation arm for user's input rotation angle
armRotationTimes = ( armRotationTime / timePause ) + 1; %The times (the number of the data)
startDegree = 45 * pi / 180;%The start degree
rotationDegree = ( armAngle * pi / 180 );%The rotation degree
endDegree = rotationDegree + startDegree;%End degree = start degree + rotation degree
rotationDegrees_arm = -linspace(startDegree, endDegree, armRotationTimes);%Set the rotation
%% Shooting compute
gravity = 980; %Gravity
height = sin(rotationDegree) * 80; %Height of the shoot position
Vy = (540 - 157.5) / goalTime;%The velocity of y-component
Vz = (305 - (height + 58) + gravity * goalTime^2 / 2) / goalTime;%The velocity of z-component
touchTime = ( 535 - 120 - 37.5 - ball_radius ) / Vy - timePause; %The time that the ball will touch the net (stop going by y-component)
downTouchTime = ( -Vz - (Vz^2 - 4 * ( -gravity / 2 ) * (height + 58 - 0.1))^(1/2) ) / ( 2 * (-gravity/2) ) - 2 * timePause; %The time that ball touch the ground
%% Rotation
ballRotationTimes = (downTouchTime / timePause) + 1;
rotationDegrees_ball = linspace(0, 2*pi*rotationCycles_ball, ballRotationTimes);
basketball = hgtransform('parent',ground);
set(ball,'parent',basketball);
%% Bounce compute
bounceVi =  3 * (Vz - gravity * downTouchTime  / 2);
bounceTime = - bounceVi / gravity; %The time bounce from ground to the time that velocity is 0
%% Plot
while(1)
    %Ball going up with the hand
    ball_dy = 540 + yAxisChange; %Move the ball to the through y axis
    RotationTime = 0;%Set the rotation count to 0
    time = 0;%Set time conut of this part to 0
    while time < armRotationTime
        RotationTime = RotationTime + 1;
        rotationArm = makehgtform('xrotate', rotationDegrees_arm(RotationTime));%Arm rotation
        set(arm,'matrix',rotationArm);%Plot the arms
        
        ball_dz = time * ( height / armRotationTime ) + zAxisChange + 58;%Ball going up
        upBall = makehgtform('translate', [0, ball_dy, ball_dz]);%Move the ball
        set(basketball,'matrix',upBall);%Plot the ball
        
        time = time + timePause;%Change time conut of this part
        pause(playSpeed * timePause);
    end
    %Projectile motion and Plummeting
    RotationTime = 0;%Set the rotation count to 0
    for time = 0 : timePause : downTouchTime;%Time conut of this part
        RotationTime = RotationTime + 1;
        if time < touchTime
            dy = 525 - time * Vy + yAxisChange;%Y changes
        else
            dy = 525 - touchTime * Vy + yAxisChange;%After touching the net, the y value won't change any more
        end
        dz = height + Vz * time - gravity * time^2 / 2 + zAxisChange + 58;%The value of z axis change
        moveBall = makehgtform('translate', [0, dy, dz]);%Move the ball
        rotationBall = makehgtform('xrotate',rotationDegrees_ball(RotationTime));%Rotation the ball
        ballChange = moveBall * rotationBall;%Change the ball
        set(basketball,'matrix',ballChange);%Plot the ball
        pause(playSpeed * timePause);
    end
    %Impacting, bouncing and back to origin size
    dz = height + Vz * (downTouchTime + timePause) - gravity * (downTouchTime + timePause)^2 / 2 + zAxisChange + 58;%The value of z axis change
    moveBall = makehgtform('translate', [0, dy, dz]);%Move the ball
    ballSize = 0.7;%Set the minimum size of the ball
    scaleBall = makehgtform('scale', ballSize);%Scale the ball
    ballChange = moveBall * scaleBall;%Set the ball move and scale together
    set(basketball,'matrix',ballChange);%Plot
    pause(2 * playSpeed * timePause);
    for time = 0 : timePause : 2*bounceTime
        dzDown = - bounceVi * time - gravity * time^2 / 2 + dz;%The value of z axis change
        moveBall = makehgtform('translate', [0, dy, dzDown]);%Move the ball
        ballSize = ballSize + 0.05;%Let ball become bigger
        if ballSize > 1
            ballSize = ballSize - 0.05;%Keep the ball no bigger than it original size
        end
        scaleBall = makehgtform('scale', ballSize);%Scale the ball
        ballChange = moveBall * scaleBall;%Set the ball move and scale together
        set(basketball,'matrix',ballChange);%Plot
        pause(playSpeed * timePause);
    end
    pause(playSpeed * 0.5);
end
end
