opts = detectImportOptions('course_grades_2022.xlsx');
opts = setvartype(opts, {'ID_Number', 'Name'}, 'string');
table = readtable('course_grades_2022.xlsx', opts);

% 2a)
%iterates through all students and calculates the total lab mark (Excluding
%maximum mark)
labTotal = sum(table{2:end,3:6},2)
%stores the highest lab mark and its index in variables
[highest_lab_mark, highest_lab_name] = max(labTotal)
% displays the name with the highest lab mark
displayName = table(highest_lab_name+1, 1)

% 2b)
%iterates through all students and calculates the total exam mark (Excluding
%Maximum Mark)
examTotal = sum(table{2:end,8:11},2)
%stores the highest exam mark and its index in variables
[highest_exam_mark, highest_exam_name] = max(examTotal)
% displays the name with the highest exam mark
displayName = table(highest_exam_name+1, 1)

% % 2c)
%iterates through all students and calculates the total mark (Excluding
%Maximum Mark)
markTotal = sum(table{2:end,3:11},2)
%stores the highest mark and its index in variables
[highest_mark, highest_mark_name] = max(markTotal)
% displays the name with the highest total mark
displayName = table(highest_mark_name+1, 1)

% 2d) Appending new values into the excel file
A = {'Samer Rafidi', 400333524, 10, 10, 10, 10, 20, 10, 10, 10, 10}
B = {'Tamer Rafidi', 400333527, 7, 3, 6, 3, 8, 5, 9, 3, 10}
xlswrite("course_grades_2022.xlsx", A,'Grades','A23:K23');
xlswrite("course_grades_2022.xlsx", B,'Grades','A24:K24');


