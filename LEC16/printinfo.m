function printinfo(name, score)

persistent index;

if isempty(index)
   index = 1; 
end

fprintf('%d: %s %d\n', index, name, score);

index = index + 1;

end