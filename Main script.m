clear all ; clc;
%Load training data


fprintf('Learning Phase ----------------------\n\n\n');

control = load('control.txt');
patient = load('patient.txt');

%calling learn function to learn weights
weights = learn (control, patient);

fprintf('The weights have been learnt\n\n');
fprintf('Press Enter to continue with the Testing phase\n\n');
pause;
%Load testing data

test_data = load('yamid.txt');

%calling test function to test data
[control_I patient_I] = test (test_data, weights);


%display values for subjects classified as control and patient.

display_values(control_I,patient_I,test_data);

