clear
clc

cutoff_number = [160, 180, 200, 220, 240];
final_energy = [-22.6585633143, -22.6585595501, -22.6585580159, -22.6585658449, -22.6585653458];

figure(1)
plot(cutoff_number,final_energy,'o--',LineWidth=1.5,MarkerSize=6)
ax = gca;
ax.XAxis.FontSize = 16;
ax.YAxis.FontSize = 16;
ylabel("Final Energy (Ry)",FontSize=20)
xlabel("Charge Density Energy Cutoff (Ry)",FontSize=20)
ylim([-22.66,-22.65])
fig = gcf;
fig.Position(3:4)=[1000,800];