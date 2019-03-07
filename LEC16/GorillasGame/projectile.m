function y = calcprojectile(x, x0, y0, a0, v0)
%
% CALCPROJECTILE: calculates the y values for give x for the projectile motion
% defined by the parameters x0, y0, a0 and vo.
%
% Input:
%  x0, y0: Coordinates of the origin of the projectile
%  a0: Launching angle, measured in anti-clockwise direction of the
%  positive x axis.
%  v0: Magnitude of the launching velocity
%

y = y0 + (x-x0) * tand(a0) - 0.5 * 9.81 * ((x-x0)/(v0*cosd(a0))).^2;

end

