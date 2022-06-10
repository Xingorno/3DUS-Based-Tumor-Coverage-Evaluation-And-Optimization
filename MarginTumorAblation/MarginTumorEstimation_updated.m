

% Center
data_tumor = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\RayCastingData_Tumor_examples_center.txt');
data_ablation = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\RayCastingData_Ablation_examples_center.txt');
flag = 1;

% norm
% LPS
origin = [10, 10, 10]'; 
% Deeper/Shallower 
% Z axis
P_21 =[0.023, 10, 10]';
norm_1 = (origin - P_21)/norm(P_21 - origin) % along needle direction from tip to source 
% Left/Right
% Y axis
P_31 = [10, 0.15, 10]';
norm_2 = (origin - P_31)/norm(origin - P_31) % the left side along the needle
% Up/Down
% X axis
norm_3 = cross(norm_2, norm_1)
%%


% deeper
data_tumor = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\Deeper_Shallower\RayCastingData_Tumor_examples_up.txt');
data_ablation = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\Deeper_Shallower\RayCastingData_Ablation_examples_up.txt');


% norm
% LPS
origin = [10, 10, 10]'; 
% Deeper/Shallower 
% Z axis
P_21 =[0.023, 10, 10]';
norm_1 = (origin - P_21)/norm(P_21 - origin) % along needle direction from tip to source 
% Left/Right
% Y axis
P_31 = [10, 0.15, 10]';
norm_2 = (origin - P_31)/norm(origin - P_31) % the left side along the needle
% Up/Down
% X axis
norm_3 = cross(norm_2, norm_1)
%%

% shallower
data_tumor = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\Deeper_Shallower\RayCastingData_Tumor_examples_Down.txt');
data_ablation = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\Deeper_Shallower\RayCastingData_Ablation_examples_Down.txt');


% LPS
origin = [10, 10, 10]'; 
% Deeper/Shallower 
% Z axis
P_21 =[0.023, 10, 10]';
norm_1 = (origin - P_21)/norm(P_21 - origin) % along needle direction from tip to source 
% Left/Right
% Y axis
P_31 = [10, 0.15, 10]';
norm_2 = (origin - P_31)/norm(origin - P_31) % the left side along the needle
% Up/Down
% X axis
norm_3 = cross(norm_2, norm_1)

%%
% Right
data_tumor = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\Left_Right\RayCastingData_Tumor_examples_Left.txt');
data_ablation = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\Left_Right\RayCastingData_Ablation_examples_Left.txt');

% LPS
origin = [10, 10, 10]'; 
% Deeper/Shallower 
% Z axis
P_21 =[0.023, 10, 10]';
norm_1 = (origin - P_21)/norm(P_21 - origin) % along needle direction from tip to source 
% Left/Right
% Y axis
P_31 = [10, 0.15, 10]';
norm_2 = (origin - P_31)/norm(origin - P_31) % the left side along the needle
% Up/Down
% X axis
norm_3 = cross(norm_2, norm_1)

%%
% left
data_tumor = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\Left_Right\RayCastingData_tumor_example_right.txt');
data_ablation = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\Left_Right\RayCastingData_Ablation_example_right.txt');

% LPS
origin = [10, 10, 10]'; 
% Deeper/Shallower 
% Z axis
P_21 =[0.023, 10, 10]';
norm_1 = (origin - P_21)/norm(P_21 - origin) % along needle direction from tip to source 
% Left/Right
% Y axis
P_31 = [10, 0.15, 10]';
norm_2 = (origin - P_31)/norm(origin - P_31) % the left side along the needle
% Up/Down
% X axis
norm_3 = cross(norm_2, norm_1)

%%
% Down_Left
data_tumor = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\UpDown_LeftRight\RayCastingData_Tumor_examples_Down_Left.txt');
data_ablation = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\UpDown_LeftRight\RayCastingData_Ablation_examples_Down_Left.txt');
% LPS
origin = [10, 10, 10]'; 
% Deeper/Shallower 
% Z axis
P_21 =[0.023, 10, 10]';
norm_1 = (origin - P_21)/norm(P_21 - origin) % along needle direction from tip to source 
% Left/Right
% Y axis
P_31 = [10, 0.15, 10]';
norm_2 = (origin - P_31)/norm(origin - P_31) % the left side along the needle
% Up/Down
% X axis
norm_3 = cross(norm_2, norm_1)
%%


% % % Up_Left
data_tumor = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\UpDown_LeftRight\RayCastingData_Tumor_examples_Up_Left.txt');
data_ablation = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\UpDown_LeftRight\RayCastingData_Ablation_examples_Up_Left.txt');
% 

% LPS
origin = [10, 10, 10]'; 
% Deeper/Shallower 
% Z axis
P_21 =[0.023, 10, 10]';
norm_1 = (origin - P_21)/norm(P_21 - origin) % along needle direction from tip to source 
% Left/Right
% Y axis
P_31 = [10, 0.15, 10]';
norm_2 = (origin - P_31)/norm(origin - P_31) % the left side along the needle
% Up/Down
% X axis
norm_3 = cross(norm_2, norm_1)

%%

% % % Up_Left
data_tumor = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\UP_DOWN_Real\RayCastingData_tumor_example_up_real.txt');
data_ablation = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\UP_DOWN_Real\RayCastingData_Ablation_example_up_real.txt');
% 

% LPS
origin = [10, 10, 10]'; 
% Deeper/Shallower 
% Z axis
P_21 =[0.023, 10, 10]';
norm_1 = (origin - P_21)/norm(P_21 - origin) % along needle direction from tip to source 
% Left/Right
% Y axis
P_31 = [10, 0.15, 10]';
norm_2 = (origin - P_31)/norm(origin - P_31) % the left side along the needle
% Up/Down
% X axis
norm_3 = cross(norm_2, norm_1)


%%
% % % Up_Left
data_tumor = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\UP_DOWN_Real\RayCastingData_tumor_example_down_real.txt');
data_ablation = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\UP_DOWN_Real\RayCastingData_Ablation_example_down_real.txt');
% 

% LPS
origin = [10, 10, 10]'; 
% Deeper/Shallower 
% Z axis
P_21 =[0.023, 10, 10]';
norm_1 = (origin - P_21)/norm(P_21 - origin) % along needle direction from tip to source 
% Left/Right
% Y axis
P_31 = [10, 0.15, 10]';
norm_2 = (origin - P_31)/norm(origin - P_31) % the left side along the needle
% Up/Down
% X axis
norm_3 = cross(norm_2, norm_1)
%%
% % Concept
% data_tumor = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\Concept\RayCastingData_Tumor_examples_concept.txt');
% data_ablation = load('E:\DOCUMENTS\202106_tumor_coverage\Figures\Examples\Concept\RayCastingData_Ablation_examples_concept.txt');
%%
% %P004
data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P004.txt');
data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P004.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P004_adjustment.txt');
flag = -1;

origin = [-5.7209, 6.1587, -8.4831]';
% Z axis
% P_tip = [-53.1, 0.1, 4.4]';
% P_arbitary = [-15.8, -21.8, 2.9]';
% norm_ = (P_arbitary - P_tip)/norm(P_arbitary - P_tip)'
norm_1 = [0.6423, -0.7662, -0.0172];%P008
norm_1 = norm_1/norm(norm_1);

% Y axis
P1= [-5.7209, 6.1587, -8.4831];% left/right
P2 = [19.487, 28.955, -8.643]; % left/right
norm_2 = (P2-P1)/norm(P2-P1);

% X axis

norm_3 = cross(norm_2, norm_1);
%%
% P007
data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P007.txt');
data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P007.txt');
flag = 1;

% Z axis
origin = [-9.596, -5.586, 2.344]';
P_arbitary = [0.978, -22.027, 0.440]';
P_tip = [-16.350, 4.971, 3.0]';

norm_1 = (P_arbitary - P_tip)/norm(P_arbitary - P_tip);

% Y axis

P_y1 = [9.353, 2.184, 2.344]';
norm_2 = (P_y1 - origin)/norm(P_y1 - origin);

% X axis

norm_3 = cross(norm_2, norm_1);





%%
clc 
clear all
close all
% %P008
data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P008.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P008.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P008_adjustment1.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P008_adjustment2.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P008_Up_Down_3.txt');
data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P008_left_28.txt');


flag = 1;

% Z axis 
% P_tip = [-53.1, 0.1, 4.4]';
% P_arbitary = [-15.8, -21.8, 2.9]';
% norm_ = (P_arbitary - P_tip)/norm(P_arbitary - P_tip)'
norm_1 = [0.8618, -0.5060, 0.0347];%P008
norm_1 = norm_1/norm(norm_1);

% Y axis
P1= [-29.236, -14.134, 2.850];% left/right
P2 = [-20.330, 3.355, 2.850]; % left/right
norm_2 = (P2-P1)/norm(P2-P1);

% X axis
norm_3 = cross(norm_2, norm_1);



% origin = [-38.7, -8.7, 4.0]'; % origin
% origin = [-29.0475, -14.3674, 4.3887]'; % adjustment shallower/deeper
% origin = [-28.8307,-14.4778, -2.6071]'; % after up/down 7
% origin = [-28.9546, -14.4147,1.3905]'; % after up/down
origin = [-27.7294, -12.0087, 1.3905]';
%%
clc 
clear all
close all
% P010
data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P010.txt');
data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P010.txt');
flag = 1;
origin = [4.3, -17.5, 10.1]';
% Z axis
P_tip = [9.845, -6.780, 13.448]';
P_arbitary = [4.271, -17.537, 10.070]';
norm_1 = (P_arbitary - P_tip)/norm(P_arbitary - P_tip)'
% norm_1 = [0.8618, -0.5060, 0.0347];%P008
% norm_1 = norm_1/norm(norm_1);

% Y axis
P1= [22.063, -29.367, 10.070]';% left/right
P2 = [4.271, -17.537, 10.070]'; % left/right
norm_2 = (P1-P2)/norm(P1-P2);

% X axis

norm_3 = cross(norm_2, norm_1);
%%
clc 
clear all
close all
% %P012
data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P012.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P012.txt');
data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P012_adjustment1.txt');
flag = -1;
origin = [-16.0, 10.0, 12.2]';
% Z axis
P_tip = [1.6, -7.3, 8.2]';
P_arbitary = [-28.3, 22.7, 12.5]';
norm_1 = (P_arbitary - P_tip)/norm(P_arbitary - P_tip)'


% Y axis
P1= [-12.147, 6.019, 9.519];% left/right
P2 = [-22.081, -4.625, 9.519]; % left/right
norm_2 = (P1-P2)/norm(P1-P2);

% X axis

norm_3 = cross(norm_2, norm_1);

%%
% %P013
data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_tumor_P013_1.txt');
data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P013_1.txt');
flag = 1;

origin = [-0.3, 3.0, -17.6]';
% Z axis
P_tip = [10.6, 13.2, -15.2]';
P_arbitary = [-10.4, -6.2, -19.6]';
norm_1 = ((P_arbitary - P_tip)/norm(P_arbitary - P_tip))'


% Y axis
P1= [0.318, 3.830, -17.908];% left/right
P2 = [12.498, -5.362, -17.908]; % left/right
norm_2 = (P2-P1)/norm(P2-P1)

% X axis

norm_3 = cross(norm_2, norm_1)

%%
clc 
clear all
close all
% %P015
data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P015.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P015.txt');
data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P015_adjustment_up_down.txt');
flag = 1;


% Z axis
% P_tip = [10.6, 13.2, -15.2]';
% P_arbitary = [-10.4, -6.2, -19.6]';
norm_1 = [0.5316, -0.8458, -0.0440]'


% Y axis
P1= [-24.548, -10.718, -15.876];% left/right
P2 = [-52.028, -28.499, -15.876]; % left/right
norm_2 = (P1-P2)/norm(P1-P2)

% X axis

norm_3 = cross(norm_2, norm_1)
% origin = [-27.3, -4.6, -15.2]';
origin = [-24.1634,-9.5904, -15.4596]';
%%
clc 
clear all
close all
% %P017
data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P017.txt');
data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P017.txt');
%data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P017_adjust_up_down.txt');

flag = 1;

origin = [-32.0, -8.7, -8.2]';
% Z axis
P_tip = [-46.8, 0.2, -8.2]';
P_arbitary = [-22.8, -14.0, -7.4]';
norm_1 = ((P_arbitary - P_tip)/norm(P_arbitary - P_tip))'


% Y axis
P1= [-29.214, -10.244, -7.410];% left/right
P2 = [-40.158, -29.620, -7.410]; % left/right
norm_2 = (P2-P1)/norm(P2-P1)

% X axis

norm_3 = cross(norm_2, norm_1)
%%
% %P019
data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P019.txt');
data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P019.txt');
flag = 1;
origin = [-6.5, -13.8, -1.8]';
% Z axis
P_tip = [-17.5, -4.0, 0.6]';
P_arbitary = [1.3, -21.0, -3.4]';
norm_1 = ((P_arbitary - P_tip)/norm(P_arbitary - P_tip))'


% Y axis
P1= [-6.527, -13.8, -1.8];% left/right
P2 = [6.447, 5.459, -1.8]; % left/right
norm_2 = (P2-P1)/norm(P2-P1)

% X axis

norm_3 = cross(norm_2, norm_1)
%%
clc 
clear all
close all
% %P020
data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P020.txt');
data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P020.txt');
flag = 1;
origin = [7.6, -45.3, 5.1]';
% Z axis
P_tip = [23.1, -37.5, 5.1]';
P_arbitary = [-4.0, -50.8, 5.1]';
norm_1 = ((P_arbitary - P_tip)/norm(P_arbitary - P_tip))'


% Y axis
P2= [17.750, -63.032, 5.632];
P1 = [7.544, -45.037, 5.632];
norm_2 = (P2-P1)/norm(P2-P1)

% X axis

norm_3 = cross(norm_2, norm_1)

%%
clc 
clear all
close all
% %P003
data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P003.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P003.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P003_adjust_up_down.txt');
data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P003_left_2.txt');

flag = 1;

origin = [-6.3, -15.3, 1.6]';
% Z axis
P_tip = [-19.8, -5.5, 2.4]';
P_arbitary = [12.8, -29.5, 0.8]';
norm_1 = ((P_arbitary - P_tip)/norm(P_arbitary - P_tip))'


% Y axis
P2= [-12.860, -37.385, 1.407];
P1 = [0.836, -20.001, 1.407];
norm_2 = (P1-P2)/norm(P1-P2)

% X axis

norm_3 = cross(norm_2, norm_1)
%%
clc 
clear all
close all
% %P003_Repeated
data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P003_Repeated.txt');
data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P003_Repeated.txt');
flag = 1;
% 

origin = [13.36, -48.02, -7.68]';
% Z axis
P_tip = [2.9, -38.3, -11.3]';
P_arbitary = [14.7, -49.3, -7.2]';
norm_1 = ((P_arbitary - P_tip)/norm(P_arbitary - P_tip))'


% Y axis
P2= [26.836, -40.455, -7.168];
P1 = [14.7, -49.3, -7.2];
norm_2 = (P2-P1)/norm(P2-P1)

% X axis

norm_3 = cross(norm_2, norm_1)

%%
% %P018_1
data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P018_1.txt');
data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P018_1.txt');
flag = 1;
origin = [6.3, 0.8, -4.6]';
% Z axis
P_tip = [0.0, 11.8, -6.1]';
P_arbitary = [11.3, -8.8, -4.1]';
norm_1 = ((P_arbitary - P_tip)/norm(P_arbitary - P_tip))'


% Y axis
P1= [6.252, 0.842, -4.608];
P2 = [10.727, 2.943, -4.608];
norm_2 = (P2-P1)/norm(P2-P1)

% X axis

norm_3 = cross(norm_2, norm_1)


%%
% %P018_2
data_tumor = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Tumor_P018_2.txt');
data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P018_2.txt');
% data_ablation = load('E:\PROGRAM\Project_PhD\TumorCoverage\Results\Evaluation_Margin_Uniformity\RayCastingData_Ablation_P018_2_adjustment.txt');
flag = 1;

origin = [2.7, -29.9, 6.1]';
% Z axis
P_tip = [-7.6, -23.0, 8.7]';
P_arbitary = [17.9, -40.1, 2.6]';
norm_1 = ((P_arbitary - P_tip)/norm(P_arbitary - P_tip))'


% Y axis
P1= [-7.522, -47.216, 5.632];
P2 = [1.664, -29.348, 5.632];
norm_2 = (P2-P1)/norm(P2-P1)

% X axis
norm_3 = cross(norm_2, norm_1)
%% Display
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
% index_sampled = 1:5:5000;
% index = 1:1000;
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
display_data = data_ablation(1:10:5000, 4:6); 
% data_for_display = [display_data, distance_margin];



%%
% quadrant_lookup_table = [1, 4, 5, 8, 2, 3, 6, 7];
quadrant_lookup_table = [7, 3, 8, 4, 6, 2, 5, 1];
color_lookup_table ={'#0072BD','#D95319','#EDB120','#7E2F8E','#0072BD','#D95319','#EDB120','#7E2F8E'};
quadrant_total = [];
% figure (5)
for i = 1:500
% i = 1
    delta = display_data(i,:) - origin';
    if dot(norm_1, delta)< 0
        index_0 = 0;
    else
        index_0 = 1;
    end
    if dot(norm_2, delta)< 0
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
%     scatter(i, distance_margin_sampled(i), 'filled','MarkerFaceColor',color_lookup_table{quadrant})
%     hold on
end
% ylim([-10 35])
% xlabel({'Sample point number'},'FontWeight','bold','FontSize',12);
% ylabel({'Raycasting margin(mm)'},'FontWeight','bold','FontSize',12);
% set(gca,'FontSize',12);
% set(gcf,'Position',[200 200 380 300])
% hold off

% merge the quadrant
% Q1 + Q5
q1_mask = zeros(500,1);
q1_index = find(quadrant_total == 1);
q1_mask(q1_index) = 1;

q5_mask = zeros(500,1);
q5_index = find(quadrant_total == 5);
q5_mask(q5_index) = 1;
Q15_total = q1_mask.*distance_margin_sampled + q5_mask.*distance_margin_sampled;
Q15_index = find(Q15_total ~= 0);
Q15 = sum(Q15_total)/size(Q15_index,1)

% Q2 + Q6
q2_mask = zeros(500,1);
q2_index = find(quadrant_total == 2);
q2_mask(q2_index) = 1;

q6_mask = zeros(500,1);
q6_index = find(quadrant_total == 6);
q6_mask(q6_index) = 1;
Q26_total = q2_mask.*distance_margin_sampled + q6_mask.*distance_margin_sampled;
Q26_index = find(Q26_total ~= 0);
Q26 = sum(Q26_total)/size(Q26_index,1)

% Q3 + Q7
q3_mask = zeros(500,1);
q3_index = find(quadrant_total == 3);
q3_mask(q3_index) = 1;

q7_mask = zeros(500,1);
q7_index = find(quadrant_total == 7);
q7_mask(q7_index) = 1;
Q37_total = q3_mask.*distance_margin_sampled + q7_mask.*distance_margin_sampled;
Q37_index = find(Q37_total ~= 0);
Q37 = sum(Q37_total)/size(Q37_index,1)


% Q4 + Q8
q4_mask = zeros(500,1);
q4_index = find(quadrant_total == 4);
q4_mask(q4_index) = 1;

q8_mask = zeros(500,1);
q8_index = find(quadrant_total == 8);
q8_mask(q8_index) = 1;
Q48_total = q4_mask.*distance_margin_sampled + q8_mask.*distance_margin_sampled;
Q48_index = find(Q48_total ~= 0);
Q48 = sum(Q48_total)/size(Q48_index,1)


Q = [Q15, Q26, Q37, Q48];
index1 = find(Q == max(Q))
Q(index1)= -50;
index2 = find(Q == max(Q))
if abs(index1 - index2) == 2
    Q(index2) = -50;
    index3 = find(Q == max(Q))
else
    index3 = index2
end
UNIT=[1,1; 1, -1; -1, -1; -1, 1];

direction_vector = UNIT(index1, :) + UNIT(index3,:)

%     color_lookup_table_merge = {'#EDB120','#7E2F8E','#7E2F8E','#EDB120','#EDB120','#7E2F8E','#7E2F8E','#EDB120'};

% Left/Right
if direction_vector(1,2) == 0
    color_lookup_table_merge ={'#0072BD','#0072BD','#D95319','#D95319','#0072BD','#0072BD','#D95319','#D95319'};
    flag = 1;
else direction_vector(1,1) == 0
    flag = 2;
    color_lookup_table_merge = {'#EDB120','#7E2F8E','#7E2F8E','#EDB120','#EDB120','#7E2F8E','#7E2F8E','#EDB120'};
% %     color_lookup_table_merge = {'#7E2F8E','#EDB120','#EDB120','#7E2F8E','#7E2F8E','#EDB120','#EDB120','#7E2F8E'};
% %     color_lookup_table_merge ={'#0072BD','#D95319','#D95319','#0072BD','#0072BD','#D95319','#D95319','#0072BD'};
%     color_lookup_table_merge ={'#D95319','#0072BD','#0072BD','#D95319','#D95319','#0072BD','#0072BD','#D95319'};
end
quadrant_lookup_table = [7, 3, 8, 4, 6, 2, 5, 1];
% color_lookup_table_merge ={'#0072BD','#0072BD','#D95319','#D95319','#0072BD','#0072BD','#D95319','#D95319'};

figure (6)
for i = 1:500
    quadrant = quadrant_total(i);
    scatter(i, distance_margin_sampled(i), 'filled','MarkerFaceColor',color_lookup_table_merge{quadrant})
    hold on
end

ylim([-10 35])
xlabel({'Sample point number'},'FontWeight','bold','FontSize',12);
ylabel({'Raycasting margin(mm)'},'FontWeight','bold','FontSize',12);
ax = gca
% ax.YAxis.LineWidth = 1;
% ax.XAxis.LineWidth = 1;
set(gca,'FontSize',12);
set(gcf,'Position',[200 200 380 300])
hold off
%%
% compute the boundary
% x = 1:5000;

distance_margin_new = [quadrant_total', distance_margin_sampled];
if flag == 2 % left/right
    index_left = [find(quadrant_total == 1), find(quadrant_total == 4), find(quadrant_total == 5), find(quadrant_total == 8)];
    index_right = [find(quadrant_total == 2), find(quadrant_total == 3), find(quadrant_total == 6), find(quadrant_total == 7)];
end
if flag == 1 % up/down
    index_left = [find(quadrant_total == 1), find(quadrant_total == 2), find(quadrant_total == 5), find(quadrant_total == 6)];
    index_right = [find(quadrant_total == 3), find(quadrant_total == 4), find(quadrant_total == 7), find(quadrant_total == 8)];
end

mask = zeros(1,500);
mask_left = mask;
mask_left(index_left) = 1;

mask_right = mask;
mask_right(index_right) = 1;

mask_left_ = sort(index_left)
x = mask_left_;
k = boundary(x', distance_margin_sampled(x));
k = x(k)';
boundary_index = find(k==max(k));
k_down = k(1:boundary_index);
k_up = k(boundary_index : end);
distance_down = distance_margin_sampled(k_down);
distance_up = flip(distance_margin_sampled(k_up));
k_up = flip(k_up);

mask_right_ = sort(index_right)
y = mask_right_;
k = boundary(y', distance_margin_sampled(y));
k = y(k)';
boundary_index = find(k==max(k));
k_down_r = k(1:boundary_index);
k_up_r = k(boundary_index : end);
distance_down_r = distance_margin_sampled(k_down_r);
distance_up_r = flip(distance_margin_sampled(k_up_r));
k_up_r = flip(k_up_r);

% figure (3)
% scatter(x, distance_margin_sampled(x), 'filled','MarkerEdgeColor','none')
% xlabel({'Sample point number'},'FontWeight','bold','FontSize',12);
% ylabel({'Raycasting margin'},'FontWeight','bold','FontSize',12);
% % title({'#008'})
% % ylim([-10 20])
% hold on
% % figure
% % plot(x(k_down), distance_down);
% plot(k_down, distance_down);
% % hold on
% % plot(x(k_up), distance_up)
% plot(k_up, distance_up)
% hold off
% 
query_points = 1:2:500;
interp_down = interp1(k_down, distance_down, query_points,'spline');
interp_up = interp1(k_up, distance_up, query_points, 'spline');
interp_down_r = interp1(k_down_r, distance_down_r, query_points,'spline');
interp_up_r = interp1(k_up_r, distance_up_r, query_points, 'spline');

figure (4)

% plot(x, interp_down,'r')
full_index = 1:500;

% scatter(full_index, distance_margin_sampled, 'filled','MarkerEdgeColor','none')
scatter(x, distance_margin_sampled(x), 'filled','MarkerEdgeColor','none')

% xlabel({'Sample point number'},'FontWeight','bold','FontSize',12);
% ylabel({'Raycasting margin'},'FontWeight','bold','FontSize',12);
% ylim([-5 20])
hold on
scatter(y, distance_margin_sampled(y), 'filled','MarkerEdgeColor','none')
smoothed_down = smoothdata(interp_down,'sgolay',40);
smoothed_down_r = smoothdata(interp_down_r,'sgolay',40);

plot(query_points, smoothed_down,'LineWidth', 2, 'color','g')
plot(query_points, smoothed_down_r,'LineWidth', 2, 'color','g')
smoothed_up = smoothdata(interp_up, 'sgolay',40);
smoothed_up_r = smoothdata(interp_up_r, 'sgolay',40);
% plot(x, smoothed_up, 'LineWidth', 2)
% plot(y, smoothed_up_r, 'LineWidth', 2)
hold off

ylim([-10 35])
% xlabel({'Sample point number'},'FontWeight','bold','FontSize',12);
% ylabel({'Raycasting margin(mm)'},'FontWeight','bold','FontSize',12);
ax = gca
ax.YAxis.LineWidth = 2;
ax.XAxis.LineWidth = 2;
set(gca,'FontSize',12);
set(gcf,'Position',[200 200 380 300])
delta = abs(smoothed_down - smoothed_down_r);
delta_max = max(delta)
disp('median :')
median = mean(delta(124:128))/2
% disp('median left_right:')
% left_right_median = mean(delta(240:259))/2
%%
figure (7)

hold on
for i = 1:500
    quadrant = quadrant_total(i);
    scatter(i, distance_margin_sampled(i), 'filled','MarkerFaceColor',color_lookup_table_merge{quadrant})
end
plot(query_points, smoothed_down,'LineWidth', 2, 'color','g')
plot(query_points, smoothed_down_r,'LineWidth', 2, 'color','g')
ylim([-10 35])
xlabel({'Sample point number'},'FontWeight','bold','FontSize',12);
ylabel({'Raycasting margin(mm)'},'FontWeight','bold','FontSize',12);
ax = gca
ax.YAxis.LineWidth = 2;
ax.XAxis.LineWidth = 2;
set(gca,'FontSize',12);
set(gcf,'Position',[200 200 380 300])
hold off
%%
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