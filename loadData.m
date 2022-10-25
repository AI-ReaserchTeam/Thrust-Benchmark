
%% Set up the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 12);
opts.Delimiter = ",";
% Specify column names and types
opts.VariableNames = ["Times", "Throttle", "RotationSpeed", "Thrust", "Torque", "Voltage", "Current", "ElectricalPower", "MechanicalPower", "MotorESCEfficiency", "PropellerEfficiency", "PropulsionSystemEfficiency"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
opts.MissingRule = 'omitrow';

% Import the data
data = readtable('T-Motor 2216 920KV1045P4S.csv', opts);
markersize = 10;

hfig = figure;

%Rotation Speed X Thrust
subplot(4,3,1)
plot(data.RotationSpeed, data.Thrust,'r.','MarkerSize', markersize)
xlabel('Rotation Speed $(rpm)$','Interpreter','latex')
ylabel('Thrust $(kgf)$','Interpreter','latex')
set(findall(hfig,'-property','FontSize'), 'FontSize',8)
set(findall(hfig,'-property','Box'),'Box','on')
set(findall(hfig,'-property','Interpreter'),'Interpreter','latex')
set(findall(hfig, '-property','TickLableInterpreter'),'TickLabelInterpreter','latex')

%Rotation Speed X Torque
subplot(4,3,2)
plot(data.RotationSpeed, data.Torque,'r.','MarkerSize', markersize)
xlabel('Rotation Speed $(rpm)$','Interpreter','latex')
ylabel('Torque $(N.m)$','Interpreter','latex')
set(findall(hfig,'-property','FontSize'), 'FontSize',8)
set(findall(hfig,'-property','Box'),'Box','on')
set(findall(hfig,'-property','Interpreter'),'Interpreter','latex')
set(findall(hfig, '-property','TickLableInterpreter'),'TickLabelInterpreter','latex')

%Rotation Speed X Voltage
subplot(4,3,3)
plot(data.RotationSpeed, data.Voltage,'r.','MarkerSize', markersize)
xlabel('Rotation Speed $(rpm)$','Interpreter','latex')
ylabel('Voltage $(V)$','Interpreter','latex')
set(findall(hfig,'-property','FontSize'), 'FontSize',8)
set(findall(hfig,'-property','Box'),'Box','on')
set(findall(hfig,'-property','Interpreter'),'Interpreter','latex')
set(findall(hfig, '-property','TickLableInterpreter'),'TickLabelInterpreter','latex')

%Rotation Speed X Current
subplot(4,3,4)
plot(data.RotationSpeed, data.Current,'r.','MarkerSize', markersize)
xlabel('Rotation Speed $(rpm)$','Interpreter','latex')
ylabel('Current $(A)$','Interpreter','latex')
set(findall(hfig,'-property','FontSize'), 'FontSize',8)
set(findall(hfig,'-property','Box'),'Box','on')
set(findall(hfig,'-property','Interpreter'),'Interpreter','latex')
set(findall(hfig, '-property','TickLableInterpreter'),'TickLabelInterpreter','latex')

%Rotation Speed X Electrical Power
subplot(4,3,5)
plot(data.RotationSpeed, data.ElectricalPower,'r.','MarkerSize', markersize)
xlabel('Rotation Speed $(rpm)$','Interpreter','latex')
ylabel('Electrical Power $(W)$','Interpreter','latex')
set(findall(hfig,'-property','FontSize'), 'FontSize',8)
set(findall(hfig,'-property','Box'),'Box','on')
set(findall(hfig,'-property','Interpreter'),'Interpreter','latex')
set(findall(hfig, '-property','TickLableInterpreter'),'TickLabelInterpreter','latex')

%Rotation Speed X Mechanical Power
subplot(4,3,6)
plot(data.RotationSpeed, data.MechanicalPower,'r.','MarkerSize', markersize)
xlabel('Rotation Speed $(rpm)$','Interpreter','latex')
ylabel('Mechanical Power $(W)$','Interpreter','latex')
set(findall(hfig,'-property','FontSize'), 'FontSize',8)
set(findall(hfig,'-property','Box'),'Box','on')
set(findall(hfig,'-property','Interpreter'),'Interpreter','latex')
set(findall(hfig, '-property','TickLableInterpreter'),'TickLabelInterpreter','latex')

%Rotation Speed X Propulsion System Efficiency
subplot(4,3,7)
plot(data.RotationSpeed, data.PropulsionSystemEfficiency,'r.','MarkerSize', markersize)
xlabel('Rotation Speed $(rpm)$','Interpreter','latex')
ylabel('Propulsion Efficiency $(gf/W)$','Interpreter','latex')
set(findall(hfig,'-property','FontSize'), 'FontSize',8)
set(findall(hfig,'-property','Box'),'Box','on')
set(findall(hfig,'-property','Interpreter'),'Interpreter','latex')
set(findall(hfig, '-property','TickLableInterpreter'),'TickLabelInterpreter','latex')

%RotationSpeed X Propeller Efficiency
subplot(4,3,8)
plot(data.RotationSpeed, data.PropellerEfficiency,'r.','MarkerSize', markersize)
xlabel('Rotation Speed $(rpm)$','Interpreter','latex')
ylabel('Propeller Efficiency $(gf/W)$','Interpreter','latex')
set(findall(hfig,'-property','FontSize'), 'FontSize',8)
set(findall(hfig,'-property','Box'),'Box','on')
set(findall(hfig,'-property','Interpreter'),'Interpreter','latex')
set(findall(hfig, '-property','TickLableInterpreter'),'TickLabelInterpreter','latex')

subplot(4,3,9)
plot(data.Thrust, data.Times,'r.','MarkerSize', markersize)
xlabel('Thrust $kg$','Interpreter','latex')
ylabel('Voltage $(V)$','Interpreter','latex')
set(findall(hfig,'-property','FontSize'), 'FontSize',8)
set(findall(hfig,'-property','Box'),'Box','on')
set(findall(hfig,'-property','Interpreter'),'Interpreter','latex')
set(findall(hfig, '-property','TickLableInterpreter'),'TickLabelInterpreter','latex')

subplot(4,3,10)
plot(data.Thrust, data.Times,'r.','MarkerSize', markersize)
xlabel('Thrust $kg$','Interpreter','latex')
ylabel('Voltage $(V)$','Interpreter','latex')
set(findall(hfig,'-property','FontSize'), 'FontSize',8)
set(findall(hfig,'-property','Box'),'Box','on')
set(findall(hfig,'-property','Interpreter'),'Interpreter','latex')
set(findall(hfig, '-property','TickLableInterpreter'),'TickLabelInterpreter','latex')

subplot(4,3,11)
plot(data.Thrust, data.Times,'r.','MarkerSize', markersize)
xlabel('Thrust $kg$','Interpreter','latex')
ylabel('Voltage $(V)$','Interpreter','latex')
set(findall(hfig,'-property','FontSize'), 'FontSize',8)
set(findall(hfig,'-property','Box'),'Box','on')
set(findall(hfig,'-property','Interpreter'),'Interpreter','latex')
set(findall(hfig, '-property','TickLableInterpreter'),'TickLabelInterpreter','latex')

%print(data)
%print(hfig,'pdf-figure', '-dpdf')


