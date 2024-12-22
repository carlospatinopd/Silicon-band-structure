clear
clc

cutoff_number = [10, 15, 20, 25, 30, 35, 40, 45, 50];
final_energy = [-22.6462242342, -22.6539747717, -22.6570465411, -22.6581669311, -22.6583718491, -22.6585139935, -22.6585633143, -22.6585633292, -22.6585728712];

figure(1)
plot(cutoff_number,final_energy,'o--',LineWidth=1.5,MarkerSize=6)
ax = gca;
ax.XAxis.FontSize = 16;
ax.YAxis.FontSize = 16;
ylabel("Final Energy (Ry)",FontSize=20)
xlabel("Kinetic Energy Cutoff (Ry)",FontSize=20)
fig = gcf;
fig.Position(3:4)=[1000,800];