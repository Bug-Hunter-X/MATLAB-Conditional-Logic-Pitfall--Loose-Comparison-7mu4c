```matlab
function result = myFunction(x)
  if x > 10 % Explicitly using > for strict comparison
    result = x^2;
  else
    result = x * 2;
  end
end

% Example usage showing corrected behavior
x = 10;
y = myFunction(x); % y will be 20
x = 11;
y = myFunction(x); % y will be 121
```