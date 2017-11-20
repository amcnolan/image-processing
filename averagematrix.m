function avg_matrix = averagematrix(inputarray)
%read the given matrix

column_vector = inputarray(:);
%create a column vector from the input (called inputarray) using the 'all' operator

vector_length = length(column_vector);
%find the length of the column vector by using the built-in length function

vector_sum = 0;
%start the vector sum at 0 because nothing has been added yet

for ind = 1 : vector_length
	%for the index from 1 to the predefined vector length
	
	vector_sum = vector_sum + column_vector(ind);
	
	%add the number from each successive index and call the result vector_sum
	
	%index changes for each loop because of the defined variable at the beginning of the loop
	
	%next index number is added to the previous vector sum
	
end

avg_matrix = vector_sum / vector_length;
%define the output of the function (avg_matrix) as the calculated vector sum / vector length

%both arguments are previously defined above
   
end