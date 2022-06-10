% How to adjust in 3D slicer


%%
% Shallower/Deeper adjustment
shallower_deeper = 11.2;

norm_1 = [0.5316, -0.8458, -0.0440]'
% Y axis
P1= [-24.548, -10.718, -15.876];% left/right
P2 = [-52.028, -28.499, -15.876]; % left/right
norm_2 = (P1-P2)/norm(P1-P2)
% X axis
norm_3 = cross(norm_2, norm_1)
direction = norm_1;

z_axis = [0 0 1];
x_axis = [1 0 0];
y_axis = [0 1 0];


angle_z = dot(direction, z_axis)/norm(direction)
angle_x = dot(direction, x_axis)/norm(direction)
angle_y = dot(direction, y_axis)/norm(direction)

% LPS
delta_x = shallower_deeper*angle_x
delta_y = shallower_deeper*angle_y
delta_z = shallower_deeper*angle_z
% RAS
display('RAS (3D slicer):')
delta = [delta_x, delta_y, delta_z]
%%
% Up/Down adjustment
up_down = 7;

norm_1 = [0.8618, -0.5060, 0.0347];%P008
norm_1 = norm_1/norm(norm_1);
% Y axis
P1= [-29.236, -14.134, 2.850];% left/right
P2 = [-20.330, 3.355, 2.850]; % left/right
norm_2 = (P2-P1)/norm(P2-P1);
% X axis
norm_3 = cross(norm_2, norm_1);
direction = norm_3;

z_axis = [0 0 1];
x_axis = [1 0 0];
y_axis = [0 1 0];


angle_z = dot(direction, z_axis)/norm(direction)
angle_x = dot(direction, x_axis)/norm(direction)
angle_y = dot(direction, y_axis)/norm(direction)

% LPS
delta_x = up_down*angle_x
delta_y = up_down*angle_y
delta_z = up_down*angle_z
% RAS
display('LPS (3D slicer):')
[delta_x, delta_y, delta_z]

%%
% Left/Right adjustment
left_right = -4.5;

P_tip = [-7.6, -23.0, 8.7]';
P_arbitary = [17.9, -40.1, 2.6]';
norm_1 = ((P_arbitary - P_tip)/norm(P_arbitary - P_tip))'


% Y axis
P1= [-7.522, -47.216, 5.632];
P2 = [1.664, -29.348, 5.632];
norm_2 = (P2-P1)/norm(P2-P1)

% X axis

norm_3 = cross(norm_2, norm_1)
direction = norm_2;
z_axis = [0 0 1];
x_axis = [1 0 0];
y_axis = [0 1 0];


angle_z = dot(direction, z_axis)/norm(direction)
angle_x = dot(direction, x_axis)/norm(direction)
angle_y = dot(direction, y_axis)/norm(direction)

% LPS
delta_x = left_right*angle_x
delta_y = left_right*angle_y
delta_z = left_right*angle_z
% RAS
display('RAS (3D slicer):')
[-delta_x, -delta_y, delta_z]

LPS = [delta_x, delta_y, delta_z]'

%%

