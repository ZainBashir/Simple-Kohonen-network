function display_values(control , patient, test_data)

%saving the number of rows of each matrix to print the number of subjects
%classified as patients and as controls
control_size = size(control,1);
patient_size = size(patient,1);

% Check if Control matrix is empty.
% Print values for patient matrix
if (isempty(control))
    
    fprintf('There are no control subjects in the test data\n\n');
    index_patient = find(ismember(test_data,patient, 'rows'));
    fprintf('The  number of subjects classified as patient is  %i \n\n',patient_size);
    fprintf('Subject number ')
    fprintf(num2str(index_patient'))
    fprintf(' are patients')

%Check if patient matrix is empty
%Print values from Control matrix
else if (isempty(patient))
    
    fprintf('There are no patient subjects in the test data\n\n');
    index_control = find(ismember(test_data,control, 'rows'));
    fprintf('The  number of subjects classified as control is  %i \n\n',control_size);
    fprintf('Subject number ')
    fprintf(num2str(index_control'))
    fprintf(' are control')
    
%If none are empty print values for both control and patients  
    else
        
    index_patient = find(ismember(test_data,patient, 'rows'));
    index_control = find(ismember(test_data,control, 'rows'));
    
    fprintf('The  number of subjects classified as control is  %i \n\n',control_size);
    fprintf('Subject number ')
    fprintf(num2str(index_control'))
    fprintf(' are control\n\n')
    
    
    fprintf('The  number of subjects classified as patient is  %i \n\n',patient_size);
    fprintf('Subject number ')
    fprintf(num2str(index_patient'))
    fprintf(' are patients\n\n')
    end
end
end



