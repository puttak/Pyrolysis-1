function null = plotdata(v, y, conv)
%Y variables key:
    % 1 = c2h4
    % 2 = hcl
    % 3 = vinylCl
    % 4 = 1,1,2-trichloroethane
    % 5 = h2
    % 6 = cl2
    % 7 = 1,2-dichloroethane
    % 8 = c4h6
    % 9 = c2h2
    % 10 = c2h2cl2
    % 11 = T (reactor temp)
    % 12 = P (reactor pres)
    % 13 = Tc (coolant temp)

% Figure 1 -- Flowrate vs Reactor Vol
figure(1)
%y-axis left
plot(v,y(:,1),'b-',v,y(:,2),'y-',v,y(:,3),'m-',v,y(:,4),'c-',v,y(:,5),'r-',v,y(:,6),'g-',v,y(:,7),'k-',v,y(:,9),'k-',v,y(:,9),'k-',v,y(:,10))
ylabel('Molar Flowrate - mol/hr')
%y-axis right
grid
xlabel('Reactor Volume - m^3')
ylabel('Molar Flowrate - mol/hr')
title('Flowrate vs. Reactor Volume')
legend('C_2H_4','HCl','VinylCl','C_2H_3Cl_3','H_2','Cl_2','C_2H_4Cl_2','C_4H_6','C_2H_2','C_2_H_2Cl_2','Location','northeastoutside')

%Figure 2 -- HCl Flowrate vs Reactor Vol
figure(2)
plot(v,y(:,2),'k-')
grid
xlabel('Reactor Volume - m^3')
ylabel('HCl Molar Flowrate - mol/hr')
title('HCl Flowrate vs. Reactor Volume')


% Figure 3 -- Reactor T vs Reactor Vol
figure(3)
plot(v,y(:,11),'k-')
grid
xlabel('Reactor Volume - m^3')
ylabel('Reactor Temperature - K')
title('Reactor Temperature vs. Reactor Volume')

% Figure 4 -- Coolant T vs Reactor Vol
figure(4)
plot(v,y(:,13),'k-')
grid
xlabel('Reactor Volume - m^3')
ylabel('Coolant Temperature - K')
title('Coolant Temperature vs. Reactor Volume')

% Figure 5 -- Reactor P vs Reactor Vol
figure(5)
plot(v,y(:,12),'k-')
grid
xlabel('Reactor Volume - m^3')
ylabel('Reactor Pressure - kPa')
title('Reactor Pressure vs. Reactor Volume')

%Conversion profile
figure(6)
plot(v ,conv,'k-')                      %conv(7) is the seventh element of the conv vector, no? #7 is dichloro, which is the species we want to specify conversion in terms of.
grid
xlabel('Reactor Volume - m^3')
ylabel('Conversion (% of C_2H_4Cl_2)')  %This was previously conv of ethylene. Not sure how to change graph values to specify conv of dichloro.
title('Conversion profile')

end