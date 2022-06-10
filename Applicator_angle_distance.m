% case 4
s1 = [1.59378 -12.4927 -0.423091];
s2 = [13.6861 -2.44896 -9.53665];
s3 = [1.88286 -3.53445 -15.4895];
d1 = [0.683514 -0.729765 0.0159031];
d2 = [0.683496 -0.721164 -0.112942];
d3 = [0.548928 -0.834622 0.0456584];
s_total = [5.7209 -6.1587 -8.4831];
disp('Case 1 the distance each other:')
dist1 = norm(s1-s2)
dist2 = norm(s1-s3)
dist3 = norm(s2-s3)

disp('Case 1 the angle between each other:')
atan2(norm(cross(d1,d2)),dot(d1,d2))*180/pi
atan2(norm(cross(d1,d3)),dot(d1,d3))*180/pi
atan2(norm(cross(d2,d3)),dot(d2,d3))*180/pi

%%
s1 = [35.16, 5.40, -8.71];
s2 = [15.90, 3.25, -14.07];
s3 = [31.49, 5.63, -23.44];
d1 = [0.6005, -0.7949, -0.0864];
d2 = [0.5661, -0.8099, -0.1534];
d3 = [0.4109, -0.9051, 0.1093];
% s_total = [5.7209 -6.1587 -8.4831];
disp('Case 7 the distance each other:')
dist1 = norm(s1-s2)
dist2 = norm(s1-s3)
dist3 = norm(s2-s3)

disp('Case 7 the angle between each other:')
atan2(norm(cross(d1,d2)),dot(d1,d2))*180/pi
atan2(norm(cross(d1,d3)),dot(d1,d3))*180/pi
atan2(norm(cross(d2,d3)),dot(d2,d3))*180/pi