%%fitness1 for time
function y = fitness1(Dc, v)
y = Dc - max( ft(v), m(v) );
end