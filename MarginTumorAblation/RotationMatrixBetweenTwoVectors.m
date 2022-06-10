%%
% Single Needle

% % ablation zone raw
% P1 = [-27.1, -22.0, 22.1]';% source 
% P2 = [-10.1, -22.0, 22.1]';% tip
% 
% % Needle parameters
B1 = [10.4, 6.2, -19.6]'; % artibary point
B2 = [-10.6, -13.2, -15.2]'; % tip




% Center example
% B1 = [-0.023, -10, 10]';
% B2 = [-10, -10, 10]';
% change to another coordiante system
% 
% a_initial = P2 - P1;
% b_initial = [0.6423, -0.7662, -0.0172]';
b_initial = -B2 + B1;
% b_initial = [-0.5316, 0.8459, 0.0439]';
b_initial = b_initial.*[-1, -1, 1]';
a_initial = [0,0,1]'
% a_initial = [1,0,0]';
% b_initial = [1, 0, 0]
a = a_initial/norm(a_initial);
b = b_initial/norm(b_initial);

% delta = tip_point - center_applicator;
% dotProduct = dot(b_inital, delta);
% if dotProduct < 0
%     b_initial = -b_initial;
% end
% b_inital = delta;


I = [1 0 0; 0 1 0; 0 0 1];
v = cross(a, b);
c = dot(a, b);
s = norm(v);

v_x =[0 -v(3) v(2); v(3) 0 -v(1); -v(2) v(1) 0];
disp('Rotation Matrix:')
R = I + v_x + v_x^2 * (1-c)/(s^2)

eulXYZ = rotm2eul(R,'XYZ')*180/pi;

% shift_center_shaft = R * P2;
% disp('Translation is: ')
% translation = B2 - shift_center_shaft