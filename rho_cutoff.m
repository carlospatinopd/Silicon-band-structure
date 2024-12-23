clear
clc

cutoff_number = [160, 180, 200, 220, 240];
final_energy = [-22.6585633143, -22.6585595501, -22.6585580159, -22.6585658449, -22.6585653458];

figure(1)
plot(cutoff_number,final_energy,'o--',LineWidth=3,MarkerSize=10)
ax = gca;
ax.XAxis.FontSize = 20;
ax.YAxis.FontSize = 20;
ylabel("Final Energy (Ry)",FontSize=32)
xlabel("Charge Density Energy Cutoff (Ry)",FontSize=32)
ylim([-22.66,-22.65])
fig = gcf;
fig.Position(3:4)=[1000,800];