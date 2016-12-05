function P = To_P(node_num,load_num,load)
P = zeros(2*node_num,1);
for i = 1:load_num
    P(load(i,1)+1) = load(i,2);
end
end