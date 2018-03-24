function [weights] = learn(control, patient)


%Learning rate
learning_rate = 0.5;
data = [control; patient];


%Weights initialization
weights = zeros(size(data,2),2);

%Distance D initialized to 0
D = 0;

%for loop to iterate and learn weights
for i = 1:10000
    
    %Inner for loop to take each patient data and learn weights. Takes each
    %patient at a time
    for j = 1:(size(data,1))
     
        %This expression calculates the Euclidean distance of each patient
        %vector and returns the minimum distance to the variable D and the
        %index of the minimum distance to the variable index. index corresponds
        %to the two classes we have; control and patient
        x = data(j,:)';
    
        [D index] = min(sum ((weights - repmat(x,1,2).^2)));
           
           
        %Weight update equation
  
        weights(:,index) = weights(:,index) + learning_rate *(data(j,:)' - weights(:,index));
    
        end
        %learning rate reduced to 95% of the previous value through each iteration
        learning_rate = learning_rate*0.95;
    
    end
end

