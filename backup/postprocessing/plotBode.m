function plotBode(G)
h=bodeplot(G);
setoptions(h,'FreqUnits','Hz');
h=gca;
set(h,'LineWidth',2);
end
