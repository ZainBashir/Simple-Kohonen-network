%The function test takes in test data and the learnt weights as iput
%parameters and outputs two matrices each containing either control or
%patient data depending on how they have been classified.
function [control, patient] = test(A, weights)

%Initialize control and patient as empty matrices
control = [];
patient = [];

    for j = 1: size(A,1)

        %Each iteration takes one row of test data at a time to calculate
        %Euclidean distance from the Weights.
        x = A(j,:)';
        [D index] = max(sum ((weights - repmat(x,1,2)).^2));

            %Classification of test data as either control or  patient.
            if (index == 1)

                control = [control; A(j,:)];
                
                elseif (index == 2)
                    patient = [patient; A(j,:)];
                    
            end 
       end
end

