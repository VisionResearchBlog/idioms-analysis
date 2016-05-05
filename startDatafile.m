%setup file saving

header=['subjID\ttrial\tGroup\tAge\tRT\terror\tmouse_distance_traveled\t'...
    'mouse_num_zero_crossings\tmouse_peakVel\tmouse_Total_num_AOIs_visited\t'...
    'mouse_AOI_visits-None\tmouse_AOI_visits-A\tmouse_AOI_visits-B\tmouse_AOI_visits-C\tmouse_AOI_visits-D\t'...
    'eye_AOI_total_dur-None\teye_AOI_total_dur-A\teye_AOI_total_dur-B\teye_AOI_total_dur-C\teye_AOI_total_dur-D\t'...
    'eye_AOI_num_visits-None\teye_AOI_num_visits-A\teye_AOI_num_visits-B\teye_AOI_num_visits-C\teye_AOI_num_visits-D\t'...
    'AOI_total_num_visits\teye_AOI_mean_dur-None\teye_AOI_mean_dur-A\teye_AOI_mean_dur-B\teye_AOI_mean_dur-C\teye_AOI_mean_dur-D\t\n'];

fileID = fopen([pwd outputdir num2str(subjID(1)) '.eye-mouse-data.txt'],'w');
fprintf(fileID,[header]);


fileID2 = fopen([pwd outputdir num2str(subjID(1)) '.doublecheck.txt'],'w');


% 
%  fprintf(fileID,['%d\t%d\t%s\t%s\t%d\t%d\t%g\t%d\t0%g\t%d\t%d\t%d\t%d\t%d\t%d\t'...
%      '%g\t%g\t%g\t%g\t%g\t%d\t%d\t%d\t%d\t%d\t%d\t%g\t%g\t%g\t%g\t%g\t\n'], ...
%      subjID(trial), trial, subject_summary.Group{sub_rng(trial)}, ...
%      subject_summary.Age{sub_rng(trial)}, RT(trial), error(trial), ...
%      mouse_distance_traveled(trial),mouse_num_zero_crossings(trial),...
%      mouse_peakVel(trial),mouse_num_AOIs_visited(trial), ...
%      AOI_mouse_visits, AOI_total_dur, AOI_num_visits,sum(AOI_num_visits),...
%      AOI_mean_dur);