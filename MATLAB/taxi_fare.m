function fare = taxi_fare(d,t)
real_d = ceil(d);
real_t = ceil(t);
fare = 5 + (2*(real_d-1)) + (0.25*real_t)
end
