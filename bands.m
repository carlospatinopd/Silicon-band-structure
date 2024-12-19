clear
clc

data = load("Si_bands.dat.gnu");
k = data(:, 1);
E = data(:, 2);
empty_row = [0; find(diff(k) < 0); length(k)];
offset = -6.172;

figure(1)
hold on
ylabel("Energy (eV)",FontSize=16)
title("Silicon Band Structure",FontSize=22)
xticks([0.0000, 0.87, 1.865, 2.3, 3.28])
xticklabels({"L", "Γ", "X", "U,K", "Γ"})
yticks([-12, -9, -6, -3, 0, 3, 6])
yline(0, '--')
yline(0.4625, '--')
text(2.5, 0.9, "{\Delta}E = 0.4625 eV",FontSize=16)
for i = 1:length(empty_row)-1
    idx_start = empty_row(i)+1;
    idx_end = empty_row(i+1);
    plot(k(idx_start:idx_end), E(idx_start:idx_end)+offset, '-',Color="#7E2F8E",LineWidth=1.5)
end
ax = gca;
ax.XGrid = "on";
ax.XAxis.FontSize = 16;
xlim([min(k), max(k)])
ylim([-13, 6])
fig = gcf;
fig.Position(3:4)=[900,800];
