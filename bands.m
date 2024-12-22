clear
clc

data_bands = load("Si_bands.dat.gnu");
k = data_bands(:, 1);
E = data_bands(:, 2);
empty_row = [0; find(diff(k) < 0); length(k)];
offset = -6.172;

data_dos = readmatrix('Si_dos.dat', 'NumHeaderLines', 1);
energy = data_dos(:, 1);
dos = data_dos(:, 2);

figure(1)
subplot(1,2,1)
hold on
ylabel("Energy (eV)",FontSize=16)
title("Silicon Band Structure",FontSize=22)
xticks([0.0000, 0.87, 1.865, 2.3, 3.28])
xticklabels({"L", "Γ", "X", "U,K", "Γ"})
yticks([-12, -9, -6, -3, 0, 3, 6])
yline(0, '--')
yline(0.4625, '--')
text(2.45, 0.9, "{\Delta}E = 0.4625 eV",FontSize=16)
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
pos1 = get(gca, 'Position');
hold off

subplot(1,2,2)
plot(-energy, dos, 'LineWidth', 1.5)
title('DOS', FontSize=22)
camroll(-90)
xlim([-6+offset,13+offset])
hold off
ax = gca;
xticks([])
set(gca, 'Position', [pos1(1)+pos1(3)+0.01, pos1(2), pos1(3)*0.5, pos1(4)]);
set(gca, 'YAxisLocation', 'right');

fig = gcf;
fig.Position(3:4)=[1850,800];