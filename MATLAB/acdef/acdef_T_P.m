% ---------------------------------------------------------------------
% Package:    TopiCo (https://github.com/AIS-Bonn/TopiCo)
% Version:    2021-03-18 12:09:55
% Maintainer: Marius Beul (mbeul@ais.uni-bonn.de)
% License:    BSD
% ---------------------------------------------------------------------

% Software License Agreement (BSD License)
% Copyright (c) 2021, Computer Science Institute VI, University of Bonn
% All rights reserved.
% Redistribution and use in source and binary forms, with or without
% modification, are permitted provided that the following conditions
% are met:
% 
% * Redistributions of source code must retain the above copyright
%   notice, this list of conditions and the following disclaimer.
% * Redistributions in binary form must reproduce the above
%   copyright notice, this list of conditions and the following
%   disclaimer in the documentation and/or other materials provided
%   with the distribution.
% * Neither the name of University of Bonn, Computer Science Institute
%   VI nor the names of its contributors may be used to endorse or
%   promote products derived from this software without specific
%   prior written permission.
% 
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
% "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
% LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
% FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
% COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
% INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
% BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
% LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
% CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
% LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
% ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
% POSSIBILITY OF SUCH DAMAGE.
%% --------------------------------------------------------------------

function [t] = acdef_T_P(P_init,V_init,A_init,P_wayp,~,~,V_max,~,~,A_min,J_max,J_min,T) %#codegen
% Generated on 29-Aug-2019 14:48:21
%coder.inline('default');

l2 = A_init.^2;
l3 = J_max.^2;
l4 = A_init.*J_min;
l5 = A_init.*J_max;
l6 = J_min.*J_max;
l7 = J_max.*V_init.*2.0;
l8 = J_max.*V_max.*2.0;
l9 = -J_max;
l10 = -l7;
l11 = -l6;
l12 = J_min+l9;
l13 = l3+l11;
l15 = l2+l8+l10;
l14 = 1.0./l13;
l16 = J_min.*l12.*l15;
l17 = sqrt(complex(l16));
t1 = [l14.*(l4-l5+l17);-l14.*(-l4+l5+l17)];

l2 = A_init.^2;
l3 = J_min.^2;
l4 = J_max.^2;
l5 = t1.^2;
l6 = t1.^3;
t6 = (sqrt(3.0).*sqrt(complex(A_min.*(P_init.*l3.*-2.4e+1+P_wayp.*l3.*2.4e+1+J_max.^3.*l6.*4.0+A_init.^3.*4.0-A_min.^3+J_min.*T.*l2.*1.2e+1-T.*V_init.*l3.*2.4e+1+A_init.*l3.*l5.*1.2e+1+A_init.*l4.*l5.*1.2e+1-J_min.*l4.*l6.*1.2e+1+J_max.*l3.*l6.*8.0-J_min.*l2.*t1.*1.2e+1+J_max.*l2.*t1.*1.2e+1-A_init.*J_min.*J_max.*l5.*2.4e+1-A_init.*T.*l3.*t1.*2.4e+1+J_min.*T.*l4.*l5.*1.2e+1-J_max.*T.*l3.*l5.*1.2e+1+A_init.*J_min.*J_max.*T.*t1.*2.4e+1))-A_min.^2.*3.0))./(A_min.*J_min.*6.0);

t4 = (A_init-A_min-J_min.*t1+J_max.*t1-J_min.*t6+J_min.*T)./J_min;

l2 = 1.0./J_min;
l3 = A_min.*l2;
t5 = [l3;l3];

t3 = -(A_init+J_max.*t1)./J_min;

t2 = [0.0;0.0];

t7 = [0.0;0.0];

t = [t1, t2, t3, t4, t5, t6, t7];

end
