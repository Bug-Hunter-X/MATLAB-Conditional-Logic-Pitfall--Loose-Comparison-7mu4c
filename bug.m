```matlab
function result = myFunction(x)
  if x > 10
    result = x^2;
  else
    result = x * 2;
  end
end

% Example usage with unexpected behavior
x = 10;
y = myFunction(x);
% y will be 20, not 100 as one might expect based on a superficial reading
```