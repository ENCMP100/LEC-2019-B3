%
% PERSON: A basic person record.
%

classdef person < handle
    properties
        Name
        Address
        Phone
        DOB
    end
    methods
        
        %% Gets the value of a given property.
        function val = get(obj, propName)
            % Dynamically constructing a statement to read the value of the
            % requested property
            statement = sprintf('obj.%s;', propName);
            
            % Executing/evaluating the statement
            val = eval(statement);
        end
        
        
        %% Method ro display all properties and their values
        function print(obj)
            listOfProperties = properties(obj); 
            
            for i = 1 : numel(listOfProperties)
                propName = listOfProperties{i};
                propVal = obj.get(propName);
                fprintf('%d: %s => %s\n', i, propName, propVal)
            end
        end

        
        %%
        % A generic edit method which gets the list of properties of the
        % object and then repeatedly prompt to select a property
        % and update it until the user chooses tofinish editing.
        function edit(obj)
            
            % Getting a cell array of property names.
            listOfProperties = properties(obj); 
            selectedPropertyIndex = 0;
            
            while selectedPropertyIndex ~= -1
                
                % Start with a fresh screen
                clc 
                
                % Display menu options
                fprintf('Editing Record\n==============\n\n')
                for i = 1 : numel(listOfProperties)
                    propName = listOfProperties{i};
                    propVal = obj.get(propName);
                    fprintf('%d: %s => %s\n', i, propName, propVal)
                end
                fprintf('-1: Done\n\n');
                
                 % Prompting to identify the property to be edited
                selectedPropertyIndex = input('Select option to edit: ');
                
                if selectedPropertyIndex >= 1 && selectedPropertyIndex <= numel(listOfProperties)
                    % A valid propery selection.
                    
                    propName = listOfProperties{selectedPropertyIndex};
                    
                    % Prompting to input the value for the selected property
                    val = input(propName + ": ", 's');
                    
                    % Setting the selected property value
                    obj.set(propName, val)
                elseif selectedPropertyIndex ~= -1
                    % An invalid entry.
                end

            end % END: while
        end % END: function edit(obj)   
        

    end % END: methods
end