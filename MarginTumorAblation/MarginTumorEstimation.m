
total_data = [];
%%
data = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaulation_Margin\P020_Margin.txt');

figure(1)
scatter3(data(:,1), data(:,2), data(:,3),'filled')
hold on 
scatter3(data(:,4), data(:,5), data(:,6), 'filled')
hold off

temp = data(:,8).*data(:,7);
figure(3)
histogram(temp)
%% downsample data
temp = sort(temp);
temp = downsample(temp, 2);
figure(4)
histogram(temp)
%%
csvwrite('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaulation_Margin\ColorArray_sampled\P020_ColorArray.csv',temp)
% figure(2)
% scatter3(data(:,1),data(:,2),data(:,3),ones(size(data,1),1)*10,temp(:,1),'filled')


%% Downsample data
temp = sort(temp);
temp = downsample(temp, 10);
figure(4)
histogram(temp)
%%
total_data = [total_data temp];
%%



max(temp)
min(temp)
%%
xlabel({'X (mm)'});
ylabel({'Y (mm)'});
zlabel({'Z (mm)'});
title({'#019'});

figure
histogram(data(:,8).*data(:,7))
xticks([-40:2:30])
% Create ylabel
ylabel({'Samples'});

% Create xlabel
xlabel({'Margin (mm)'});
temp = data(:,8).*data(:,7);
% Create title
title({'#019'});
min(temp)

%%
% % Center
% data_tumor = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\RayCastingData_Tumor_examples_center.txt');
% data_ablation = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\RayCastingData_Ablation_examples_center.txt');

% % UP
% data_tumor = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\UP_DOWN\RayCastingData_Tumor_examples_up.txt');
% data_ablation = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\UP_DOWN\RayCastingData_Ablation_examples_up.txt');

% % Down
% data_tumor = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\UP_DOWN\RayCastingData_Tumor_examples_Down.txt');
% data_ablation = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\UP_DOWN\RayCastingData_Ablation_examples_Down.txt');

% Left

% data_tumor = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\Left_Right\RayCastingData_Tumor_examples_Left.txt');
% data_ablation = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\Left_Right\RayCastingData_Ablation_examples_Left.txt');

% Down_Left
% data_tumor = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\UpDown_LeftRight\RayCastingData_Tumor_examples_Down_Left.txt');
% data_ablation = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\UpDown_LeftRight\RayCastingData_Ablation_examples_Down_Left.txt');

% % % Up_Left
% data_tumor = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\UpDown_LeftRight\RayCastingData_Tumor_examples_Up_Left.txt');
% data_ablation = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\UpDown_LeftRight\RayCastingData_Ablation_examples_Up_Left.txt');
% 

% % Concept
% data_tumor = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\Concept\RayCastingData_Tumor_examples_concept.txt');
% data_ablation = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\Concept\RayCastingData_Ablation_examples_concept.txt');

% %P004
% data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P004.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P004.txt');
% % data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P004_adjustment.txt');
% flag = -1;

% P007
% data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P007.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P007.txt');
% flag = 1;

% %P008
% data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P008.txt');
% % data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P008.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P008_adjustment1.txt');
% % data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P008_adjustment2.txt');
% flag = 1;

% P010
% data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P010.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P010.txt');
% flag = 1;

% %P012
% data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P012.txt');
% % data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P012.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P012_adjustment1.txt');
% flag = -1;
% 
% %P013
% data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P013.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P013.txt');
% flag = 1;

% %P015
% data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P015.txt');
% % data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P015.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P015_adjustment_up_down.txt');
% flag = 1;

% %P017
% data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P017.txt');
% % data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P017.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P017_adjust_up_down.txt');
% 
% flag = 1;

% %P019
% data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P019.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P019.txt');
% flag = 1;

% %P020
% data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P020.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P020.txt');
% flag = 1;

%P003
data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P003.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P003.txt');
data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P003_adjust_up_down.txt');
flag = 1;

% %P003_Repeated
% data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P003_Repeated.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P003_Repeated.txt');
% flag = 1;
% 
% %P018_1
% data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P018_1.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P018_1.txt');
% flag = 1;

% %P018_2
% data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P018_2.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P018_2.txt');
% % data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P018_2_adjustment.txt');
% flag = 1;

direction_delta = [data_tumor(:,7)-data_ablation(:,7) data_tumor(:,8)-data_ablation(:,8) data_tumor(:,9)-data_ablation(:,9)];
figure (1)
scatter3(data_tumor(:,4), data_tumor(:,5), data_tumor(:,6),'filled')
hold on 
scatter3(data_ablation(:,4), data_ablation(:,5), data_ablation(:,6), 'filled')
hold off


delta = -[data_tumor(:,4)-data_ablation(:,4) data_tumor(:,5)-data_ablation(:,5) data_tumor(:,6)-data_ablation(:,6)];
temp = dot(data_tumor(:,7:9), delta, 2);
temp_ = sign(temp);
distance_margin = sqrt(delta(:,1).*delta(:,1) + delta(:,2).*delta(:,2) + delta(:,3).*delta(:,3)).*temp_;
if flag == -1
    distance_margin = flip(distance_margin);
end

min(distance_margin)
% figure
% 
% for i= 1:3000
%     scatter(i,distance_margin(i),'b', 'filled')
%     xlim([1 3000])
%     ylim([-2 35])
%     pause(.001)
%     hold on
% end


index_sampled = 1:10:5000;
index = 1:500;
distance_margin_sampled = distance_margin(index_sampled);

figure(2)
scatter(index, distance_margin_sampled, 'filled','MarkerEdgeColor','none')
xlabel({'Sample point number'},'FontWeight','bold','FontSize',12);
ylabel({'Raycasting margin(mm)'},'FontWeight','bold','FontSize',12);
% title({'#008'})
ylim([-10 35])

% figure
% histogram(distance_margin)
% xticks([-20:1:35])
set(gca,'FontSize',12);
set(gcf,'Position',[200 200 380 300])

starting_point = mean(distance_margin_sampled(1:10,1));
ending_point = mean(distance_margin_sampled(491:500,1));

pull_back = (ending_point - starting_point)/2

% mean(distance_margin)
% std(distance_margin)
% min(distance_margin)
% max(distance_margin)
% 
display_data = data_ablation(:, 4:6); 
% data_for_display = [display_data, distance_margin];
%% Adjustment
% Pull back

% direction_needle = [0.6423, -0.7662, -0.0172];%P004
% direction_needle = [0.8618, -0.5060, 0.0347];%P008
% direction_needle = [-0.7023, 0.7047, -0.1010];%P012

% direction_needle = [0.5316, -0.8458, -0.0440]; %P015
% direction_needle = [0.8603, -0.5090, -0.0287]; %P017
% direction_needle = [0.7327, -0.6625, 0.1559]; %P019
% direction_needle = [0.8047, -0.5924, 0.0395];%P003

direction_needle = [0.7089, -0.6609, -0.2463];%P003_repeated



z_axis = [0 0 1];
x_axis = [1 0 0];
y_axis = [0 1 0];


angle_z = dot(direction_needle, z_axis)/norm(direction_needle)
angle_x = dot(direction_needle, x_axis)/norm(direction_needle)
angle_y = dot(direction_needle, y_axis)/norm(direction_needle)


delta_x = pull_back*angle_x
delta_y = pull_back*angle_y
delta_z = pull_back*angle_z

%% Left/Right
%P018
% % up_down = 6.8262; %P018
% 
% P1= [7.522, 47.216, 5.632];
% P2 = [-1.664, 29.348, 5.632];

% %P020
% left_right = 3.8998;
% 
% P1= [-17.750, 63.032, 5.632];
% P2 = [-7.544, 45.037, 5.632];

%P003
left_right = 4.8893;

P1= [12.860, 37.385, 1.407];
P2 = [-0.836, 20.001, 1.407];

direction_left_right = P1-P2;%P018_2
% direction_needle = [0.8146, -0.5463, 0.1949];%P004
z_axis = [0 0 1];
x_axis = [1 0 0];
y_axis = [0 1 0];


angle_z = dot(direction_left_right, z_axis)/norm(direction_left_right)
angle_x = -dot(direction_left_right, x_axis)/norm(direction_left_right)
angle_y = -dot(direction_left_right, y_axis)/norm(direction_left_right)


delta_x = left_right*angle_x
delta_y = left_right*angle_y
delta_z = left_right*angle_z


%% Front/back




% %P008
% front_back = 7.0155;
% P1= [29.236, 14.134, 2.850];% left/right
% P2 = [20.330, -3.355, 2.850]; % left/right
% direction_needle = [0.8618, -0.5060, 0.0347];
% % N1 = [53.1, -0.1, 4.4];% needle tip
% % N2 = [15.8, 21.8, 2.9];% needle arbitrary

% %P012
% front_back = 2.5612; %P012
% direction_needle = [-0.7023, 0.7047, -0.1010];
% N1 = [-1.6, 7.3, 8.2];% needle tip
% N2 = [28.3, -22.7, 12.5];% needle arbitrary
% 
% P1= [12.147, -6.019, 9.519];% left/right
% P2 = [22.081, 4.625, 9.519]; % left/right


% %P013
% % front_back = 3.4152; 
% front_back = 1.8114
% P1= [-0.318, -3.830, -17.908];% left/right
% P2 = [-12.498, 5.362, -17.908]; % left/right
% % N1 = [-1.6, 7.3, 8.2];% needle tip
% % N2 = [28.3, -22.7, 12.5];% needle arbitrary
% direction_needle = [-0.7260, -0.6707, 0.1521];


% %P015
% front_back = 9.3357;
% P1= [24.548, 10.718, -15.876];% left/right
% P2 = [52.028, 28.499, -15.876]; % left/right
% direction_needle = [0.5316, -0.8458, -0.0440];

%P017
front_back = 4.1939;
P1= [29.214, 10.244, -7.410];% left/right
P2 = [40.158, 29.620, -7.410]; % left/right
direction_needle = [0.8603, -0.5090, -0.0287];



direction_left_right = P2-P1;
% direction_needle = N2 - N1;

direction_front_back = cross(direction_needle, direction_left_right)

z_axis = [0 0 1];
x_axis = [1 0 0];
y_axis = [0 1 0];


angle_z = dot(direction_front_back, z_axis)/norm(direction_front_back)
angle_x = dot(direction_front_back, x_axis)/norm(direction_front_back)
angle_y = dot(direction_front_back, y_axis)/norm(direction_front_back)


delta_x = front_back*angle_x
delta_y = front_back*angle_y
delta_z = front_back*angle_z
%%
save('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\P020_PointsArray.txt','data_for_display','-ascii')
%%
transform = [0.998462 -0.0335887 -0.0440996 -67.825; 
0.0337214 0.999429 0.00226748 -72.8759; 
0.0439983 -0.00375109 0.999025 -3.63059; 
0 0 0 1 
] % P003

display_data_new = transform(1:3, 1:3)*display_data'.*[-1; -1; 1] + transform(1:3,4);

origin = [-62.505, -57.225, -1.883];
norm_1 =[0 0 1]'; % from front to back 
norm_2 = [-0.807729, 0.587621, -0.0477017]'; % along needle direction from tip to source
norm_3 = [0.588291, 0.808649, 0]; % the left side along the needle
%%
quadrant_lookup_table = [1, 4, 5, 8, 2, 3, 6, 7];
color_lookup_table ={'#0072BD','#D95319','#EDB120','#7E2F8E','#77AC30','#4DBEEE','#A2142F','#FF00FF'};
quadrant_total = [];
figure
for i = 1:5000
% i = 1
    delta = display_data_new(:,i) - origin';
    if dot(norm_1, delta)< 0
        index_0 = 0;
    else
        index_0 = 1;
    end
    if dot(norm_2, delta)>0
        index_1 = 0;
    else
        index_1 = 1;
    end
    if dot(norm_3, delta)< 0
        index_2 = 0;
    else
        index_2 = 1;
    end
    index_total = index_2*4 + index_1*2 + index_0 + 1;
    quadrant = quadrant_lookup_table(index_total);
    quadrant_total = [quadrant_total, quadrant];
    scatter(i, distance_margin(i), 'filled','MarkerFaceColor',color_lookup_table{quadrant})
    hold on
end

%%
% compute the boundary
% x = 1:5000;

x = 1:500;
k = boundary(x', distance_margin_sampled);
boundary_index = find(k==max(k));
k_down = k(1:boundary_index);
k_up = k(boundary_index+1 : end);
distance_down = distance_margin_sampled(k_down);
distance_up = flip(distance_margin_sampled(k_up));
k_up = flip(k_up);

figure (3)
scatter(index, distance_margin_sampled, 'filled','MarkerEdgeColor','none')
xlabel({'Sample point number'},'FontWeight','bold','FontSize',12);
ylabel({'Raycasting margin'},'FontWeight','bold','FontSize',12);
% title({'#008'})
% ylim([-10 20])
hold on
% figure
plot(x(k_down), distance_down);
% hold on
plot(x(k_up), distance_up)
hold off
% compute the envelope

interp_down = interp1(x(k_down), distance_down, x,'spline');
interp_up = interp1(x(k_up), distance_up, x, 'spline');

figure (4)

% plot(x, interp_down,'r')

scatter(x, distance_margin_sampled, 'filled','MarkerEdgeColor','none')
xlabel({'Sample point number'},'FontWeight','bold','FontSize',12);
ylabel({'Raycasting margin'},'FontWeight','bold','FontSize',12);
% ylim([-5 20])
hold on

smoothed_down = smoothdata(interp_down,'sgolay',40);
hold on
plot(x, smoothed_down,'LineWidth', 2)
smoothed_up = smoothdata(interp_up, 'sgolay',40);
plot(x, smoothed_up, 'LineWidth', 2)
% plot(x, interp_up,'r')

% compute the distance

delta = abs(smoothed_up - smoothed_down);
delta_max = max(delta)


index_max = find(delta == delta_max)
xline(index_max,'Color','red','LineWidth',10)
disp('max left_right:')
left_right = delta_max/2

disp('median left_right:')
left_right_median = mean(delta(240:259))/2

%%
figure

% plot(x, interp_down,'r')

scatter(x, distance_margin_sampled(1:end), 'filled')
xlabel({'Sample points with specific order'})
ylabel({'Raycasting margin (mm)'})
hold on
yline(-15.6490, 'Color','red','LineWidth',5)
yline(3.7013, 'Color', 'red','LineWidth',5 )


%%

% save P008_margin_uniformity.txt data_for_display -ascii
% csvwrite('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\P008_PointsArray.csv',data_ablation(:, 4:6))
save('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\P003_PointsArray.txt','data_for_display','-ascii')