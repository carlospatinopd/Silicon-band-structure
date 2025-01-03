clear
clc

k_points = [2,3,4,5,6,7,8,9,10];
final_energy = [-22.4803692297,-22.6259070131,-22.6585633143,-22.6680541949,-22.6712003683,-22.6723399614,-22.6727808267,-22.6729600573,-22.6730358353];

figure(1)
plot(k_points,final_energy,'o--',LineWidth=3,MarkerSize=10)
ax = gca;
ax.XAxis.FontSize = 20;
ax.YAxis.FontSize = 20;
ylabel("Final Energy (Ry)",FontSize=32)
xlabel("k-points grid size",FontSize=32)
fig = gcf;
fig.Position(3:4)=[1000,800];