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

function [t] = acdeg_T_P(P_init,V_init,A_init,P_wayp,~,~,V_max,V_min,~,~,J_max,J_min,T) %#codegen
% Generated on 03-Sep-2019 16:11:46
%coder.inline('default');

l2 = A_init.^2;
l3 = A_init.^3;
l4 = J_max.^2;
l5 = J_min.^5;
l6 = J_max.^3;
l7 = J_min.^6;
l9 = J_min.^7;
l10 = J_max.^5;
l12 = J_max.^7;
l13 = T.^2;
l14 = T.^3;
l15 = J_max.*V_init.*2.0;
l16 = J_max.*V_max.*2.0;
l17 = -J_min;
l18 = J_min.^8;
l19 = J_min.^9;
l22 = J_min.^11;
l25 = -V_min;
l27 = sqrt(2.0);
l28 = sqrt(3.0);
l29 = sqrt(J_max);
l8 = l4.^2;
l11 = l4.^3;
l20 = l5.^2;
l23 = l6.^3;
l24 = l7.^2;
l26 = -l15;
l30 = l29.^3;
l31 = l29.^5;
l32 = l29.^7;
l33 = J_max+l17;
l34 = V_max+l25;
l36 = l29.^11;
l37 = l29.^13;
l39 = l29.^17;
l42 = l17.^(9.0./2.0);
l43 = l17.^(1.1e+1./2.0);
l44 = l17.^(1.3e+1./2.0);
l45 = l17.^(1.5e+1./2.0);
l46 = l17.^(1.7e+1./2.0);
l47 = l17.^(1.9e+1./2.0);
l48 = l17.^(2.1e+1./2.0);
l49 = l17.^(2.3e+1./2.0);
l55 = P_init.*l9.*l12.*3.6e+1;
l58 = P_wayp.*l9.*l12.*3.6e+1;
l64 = V_min.*l6.*l22.*6.0;
l72 = l12.*l18.*1.5e+1;
l82 = A_init.*l9.*l12.*1.8e+1;
l85 = P_init.*l6.*l22.*3.6e+1;
l87 = P_wayp.*l6.*l22.*3.6e+1;
l92 = T.*l12.*l18.*4.5e+1;
l97 = V_init.*l6.*l22.*4.2e+1;
l98 = V_init.*l9.*l12.*1.26e+2;
l105 = V_max.*l6.*l22.*4.8e+1;
l106 = V_min.*l9.*l12.*9.0e+1;
l107 = V_max.*l9.*l12.*2.16e+2;
l111 = A_init.*T.*l9.*l12.*3.6e+1;
l113 = A_init.*V_init.*l7.*l12.*4.8e+1;
l115 = A_init.*V_min.*l4.*l22.*6.0;
l116 = A_init.*V_min.*l7.*l12.*3.6e+1;
l117 = l3.*l5.*l12.*3.0;
l131 = A_init.*l6.*l22.*1.8e+1;
l132 = J_max.*l3.*l22.*3.9e+1;
l135 = A_init.*l10.*l19.*6.0e+1;
l138 = P_init.*l10.*l19.*1.2e+2;
l142 = P_wayp.*l10.*l19.*1.2e+2;
l149 = V_init.*l10.*l19.*2.1e+2;
l152 = V_min.*l10.*l19.*9.0e+1;
l155 = V_max.*l10.*l19.*3.0e+2;
l160 = A_init.*T.*l6.*l22.*3.6e+1;
l167 = A_init.*V_max.*l7.*l12.*8.4e+1;
l171 = l2.*l7.*l12.*2.4e+1;
l178 = T.*V_min.*l6.*l22.*-6.0;
l184 = T.*V_max.*l9.*l12.*2.52e+2;
l202 = A_init.*T.*l10.*l19.*1.2e+2;
l203 = A_init.*V_init.*l4.*l22.*7.8e+1;
l206 = A_init.*V_init.*l10.*l18.*3.0e+2;
l209 = A_init.*V_max.*l4.*l22.*8.4e+1;
l212 = A_init.*V_min.*l10.*l18.*1.2e+2;
l214 = A_init.*V_max.*l10.*l18.*4.2e+2;
l218 = l2.*l4.*l22.*3.9e+1;
l220 = l3.*l9.*l10.*8.1e+1;
l221 = T.*V_init.*l6.*l22.*-4.2e+1;
l222 = T.*V_init.*l9.*l12.*-1.26e+2;
l228 = T.*V_max.*l6.*l22.*8.4e+1;
l229 = T.*V_min.*l9.*l12.*-9.0e+1;
l234 = T.*V_max.*l10.*l19.*4.2e+2;
l244 = l12.*l13.*l18.*4.5e+1;
l261 = l2.*l10.*l18.*1.5e+2;
l264 = l3.*l6.*l19.*1.65e+2;
l265 = T.*V_init.*l10.*l19.*-2.1e+2;
l267 = T.*V_min.*l10.*l19.*-9.0e+1;
l270 = l12.*l14.*l18.*-1.5e+1;
l277 = T.*l2.*l7.*l12.*-2.4e+1;
l293 = T.*l2.*l10.*l18.*-1.5e+2;
l21 = l8.^2;
l35 = l30.^3;
l38 = l30.^5;
l40 = l7.*l23;
l41 = l6.*l24;
l50 = l3.*l24.*6.0;
l52 = l8.*l22.*6.0;
l54 = P_init.*l4.*l24.*6.0;
l57 = P_wayp.*l4.*l24.*6.0;
l61 = V_init.*l5.*l23.*6.0;
l62 = V_init.*l4.*l24.*6.0;
l63 = V_min.*l5.*l23.*6.0;
l65 = V_max.*l4.*l24.*6.0;
l67 = sqrt(complex(l33));
l73 = l10.*l20.*1.5e+1;
l74 = l11.*l19.*2.0e+1;
l75 = sqrt(complex(l34));
l77 = A_init.*J_max.*V_init.*l24.*1.2e+1;
l78 = A_init.*J_max.*V_max.*l24.*1.2e+1;
l80 = A_init.*l4.*l24.*3.0;
l81 = J_max.*l2.*l24.*6.0;
l86 = -l58;
l91 = T.*l8.*l22.*1.8e+1;
l93 = T.*l10.*l20.*4.5e+1;
l94 = T.*l11.*l19.*6.0e+1;
l100 = -l64;
l102 = V_max.*l5.*l23.*1.2e+1;
l104 = V_min.*l8.*l20.*3.6e+1;
l109 = A_init.*T.*l4.*l24.*6.0;
l133 = A_init.*l11.*l18.*4.5e+1;
l134 = A_init.*l8.*l20.*4.5e+1;
l136 = P_init.*l11.*l18.*9.0e+1;
l137 = P_init.*l8.*l20.*9.0e+1;
l139 = -l87;
l140 = P_wayp.*l11.*l18.*9.0e+1;
l141 = P_wayp.*l8.*l20.*9.0e+1;
l143 = -l92;
l145 = -l97;
l146 = -l98;
l147 = V_init.*l8.*l20.*1.26e+2;
l148 = V_init.*l11.*l18.*2.1e+2;
l151 = -l106;
l153 = V_min.*l11.*l18.*1.2e+2;
l154 = V_max.*l8.*l20.*1.62e+2;
l156 = V_max.*l11.*l18.*3.3e+2;
l159 = J_max.*T.*l2.*l24.*-6.0;
l162 = A_init.*V_init.*l9.*l11.*1.62e+2;
l164 = -l115;
l166 = A_init.*V_min.*l6.*l20.*3.6e+1;
l168 = A_init.*V_min.*l9.*l11.*9.0e+1;
l169 = A_init.*V_max.*l9.*l11.*2.52e+2;
l172 = l3.*l7.*l11.*2.4e+1;
l173 = T.*V_init.*l5.*l23.*-6.0;
l177 = T.*V_min.*l5.*l23.*-6.0;
l180 = T.*V_max.*l4.*l24.*1.2e+1;
l191 = l2+l16+l26;
l194 = -l142;
l195 = -l149;
l197 = -l152;
l200 = A_init.*T.*l11.*l18.*9.0e+1;
l201 = A_init.*T.*l8.*l20.*9.0e+1;
l205 = A_init.*V_init.*l6.*l20.*2.16e+2;
l207 = A_init.*V_init.*l8.*l19.*3.3e+2;
l208 = -l167;
l211 = A_init.*V_min.*l8.*l19.*9.0e+1;
l213 = A_init.*V_max.*l6.*l20.*2.52e+2;
l215 = A_init.*V_max.*l8.*l19.*4.2e+2;
l216 = -l171;
l219 = l2.*l9.*l11.*8.1e+1;
l232 = T.*V_max.*l8.*l20.*2.52e+2;
l233 = T.*V_max.*l11.*l18.*4.2e+2;
l242 = l8.*l13.*l22.*1.8e+1;
l245 = l10.*l13.*l20.*4.5e+1;
l246 = l11.*l13.*l19.*6.0e+1;
l250 = l13.*l82;
l254 = -l203;
l258 = -l214;
l259 = l2.*l6.*l20.*1.08e+2;
l260 = l3.*l4.*l20.*1.08e+2;
l262 = l3.*l8.*l18.*1.5e+2;
l263 = l2.*l8.*l19.*1.65e+2;
l271 = l10.*l14.*l20.*-1.5e+1;
l272 = -l244;
l275 = A_init.*l4.*l13.*l24.*-3.0;
l276 = l13.*l131;
l278 = T.*l218;
l281 = l13.*l135;
l285 = -l261;
l287 = A_init.*l11.*l13.*l18.*-4.5e+1;
l288 = A_init.*l8.*l13.*l20.*-4.5e+1;
l292 = T.*l2.*l6.*l20.*-1.08e+2;
l51 = l9.*l21.*6.0;
l53 = P_init.*l7.*l21.*6.0;
l56 = P_wayp.*l7.*l21.*6.0;
l59 = T.*l40.*3.0;
l60 = T.*l41.*3.0;
l66 = -l50;
l68 = l67.^3;
l69 = l67.^7;
l71 = -l52;
l76 = l75.^3;
l79 = A_init.*l7.*l21.*3.0;
l84 = -l54;
l90 = T.*l9.*l21.*1.8e+1;
l95 = -l61;
l96 = V_init.*l7.*l21.*4.2e+1;
l99 = -l63;
l101 = -l65;
l103 = V_min.*l7.*l21.*3.6e+1;
l108 = A_init.*T.*l7.*l21.*6.0;
l112 = A_init.*V_init.*l5.*l21.*6.0;
l114 = A_init.*V_min.*l5.*l21.*6.0;
l119 = T.*l62;
l122 = l14.*l40;
l123 = l14.*l41;
l125 = l67.^11;
l126 = -l74;
l127 = -l78;
l129 = -l80;
l130 = -l81;
l144 = -l93;
l150 = V_max.*l7.*l21.*7.8e+1;
l158 = -l109;
l165 = A_init.*V_max.*l5.*l21.*1.2e+1;
l170 = l2.*l5.*l21.*3.0;
l179 = T.*l102;
l182 = T.*l104;
l185 = l13.*l40.*3.0;
l186 = l13.*l41.*3.0;
l188 = l14.*l52;
l189 = -l133;
l190 = -l134;
l192 = -l136;
l193 = -l137;
l198 = -l154;
l199 = -l156;
l204 = -l162;
l210 = -l168;
l217 = -l172;
l223 = T.*l147;
l224 = T.*l148;
l226 = -l180;
l227 = T.*V_max.*l7.*l21.*8.4e+1;
l231 = T.*l153;
l241 = l9.*l13.*l21.*1.8e+1;
l243 = l14.*l74;
l252 = -l200;
l253 = -l201;
l255 = -l207;
l256 = -l211;
l257 = -l213;
l268 = -l232;
l269 = -l233;
l273 = -l245;
l274 = A_init.*l7.*l13.*l21.*-3.0;
l282 = T.*l219;
l283 = -l259;
l284 = -l260;
l286 = -l262;
l291 = T.*l263;
l294 = sqrt(complex(l191));
l312 = l27.*l32.*l48.*l67.*l75.*3.0;
l329 = A_init.*l27.*l31.*l48.*l67.*l75.*6.0;
l330 = T.*l27.*l32.*l48.*l67.*l75.*6.0;
l332 = V_min.*l27.*l32.*l47.*l67.*l75.*6.0;
l334 = V_max.*l27.*l31.*l48.*l67.*l75.*6.0;
l349 = l27.*l39.*l43.*l67.*l75.*3.0;
l356 = A_init.*l27.*l38.*l43.*l67.*l75.*6.0;
l359 = A_init.*l27.*l32.*l47.*l67.*l75.*3.0e+1;
l362 = T.*l27.*l39.*l43.*l67.*l75.*6.0;
l371 = V_min.*l27.*l38.*l43.*l67.*l75.*6.0;
l374 = V_max.*l27.*l37.*l44.*l67.*l75.*6.0;
l376 = V_max.*l27.*l32.*l47.*l67.*l75.*2.4e+1;
l409 = l27.*l38.*l44.*l67.*l75.*1.5e+1;
l410 = l27.*l35.*l47.*l67.*l75.*1.5e+1;
l411 = l27.*l37.*l45.*l67.*l75.*3.0e+1;
l412 = l27.*l36.*l46.*l67.*l75.*3.0e+1;
l415 = A_init.*l27.*l37.*l44.*l67.*l75.*3.0e+1;
l416 = A_init.*l27.*l36.*l45.*l67.*l75.*6.0e+1;
l417 = A_init.*l27.*l35.*l46.*l67.*l75.*6.0e+1;
l421 = T.*l27.*l38.*l44.*l67.*l75.*3.0e+1;
l422 = T.*l27.*l35.*l47.*l67.*l75.*3.0e+1;
l423 = T.*l27.*l37.*l45.*l67.*l75.*6.0e+1;
l424 = T.*l27.*l36.*l46.*l67.*l75.*6.0e+1;
l433 = V_min.*l27.*l37.*l44.*l67.*l75.*2.4e+1;
l434 = V_min.*l27.*l35.*l46.*l67.*l75.*2.4e+1;
l435 = V_max.*l27.*l36.*l45.*l67.*l75.*2.4e+1;
l437 = V_min.*l27.*l36.*l45.*l67.*l75.*3.6e+1;
l438 = V_max.*l27.*l35.*l46.*l67.*l75.*3.6e+1;
l469 = A_init.*T.*l27.*l31.*l48.*l67.*l75.*1.8e+1;
l497 = A_init.*T.*l27.*l38.*l43.*l67.*l75.*1.8e+1;
l498 = A_init.*T.*l27.*l32.*l47.*l67.*l75.*9.0e+1;
l501 = l2.*l27.*l30.*l48.*l67.*l75.*2.4e+1;
l535 = A_init.*T.*l27.*l37.*l44.*l67.*l75.*9.0e+1;
l536 = A_init.*T.*l27.*l36.*l45.*l67.*l75.*1.8e+2;
l537 = A_init.*T.*l27.*l35.*l46.*l67.*l75.*1.8e+2;
l542 = l2.*l27.*l37.*l43.*l67.*l75.*2.4e+1;
l544 = l2.*l27.*l31.*l47.*l67.*l75.*1.2e+2;
l545 = l2.*l27.*l32.*l46.*l67.*l75.*2.4e+2;
l566 = l2.*l27.*l36.*l44.*l67.*l75.*1.2e+2;
l567 = l2.*l27.*l35.*l45.*l67.*l75.*2.4e+2;
l70 = -l51;
l83 = -l53;
l88 = -l59;
l89 = -l60;
l124 = l68.^3;
l128 = -l79;
l157 = -l108;
l161 = -l112;
l163 = -l114;
l174 = T.*l96;
l181 = T.*l103;
l187 = l14.*l51;
l196 = -l150;
l235 = -l122;
l236 = -l123;
l237 = -l185;
l238 = -l186;
l247 = T.*l170;
l266 = -l227;
l295 = l294.^3;
l300 = A_init.*J_max.*l49.*l67.*l294.*6.0;
l301 = J_max.*V_init.*l49.*l67.*l294.*6.0;
l306 = J_max.*V_init.*l44.*l125.*l294.*6.0;
l307 = l2.*l48.*l68.*l294.*3.0;
l310 = l4.*l49.*l67.*l294.*3.0;
l314 = l2.*l49.*l67.*l294.*2.1e+1;
l315 = l21.*l43.*l67.*l294.*3.0;
l319 = l12.*l44.*l67.*l294.*1.8e+1;
l322 = l6.*l48.*l67.*l294.*1.8e+1;
l324 = l11.*l45.*l67.*l294.*4.5e+1;
l326 = l8.*l47.*l67.*l294.*4.5e+1;
l328 = l10.*l46.*l67.*l294.*6.0e+1;
l331 = V_init.*l27.*l31.*l47.*l68.*l75.*6.0;
l333 = V_max.*l27.*l31.*l47.*l68.*l75.*6.0;
l335 = A_init.*J_max.*T.*l49.*l67.*l294.*1.8e+1;
l336 = A_init.*l12.*l43.*l67.*l294.*6.0;
l337 = T.*l4.*l49.*l67.*l294.*6.0;
l338 = V_init.*l12.*l43.*l67.*l294.*6.0;
l339 = V_min.*l12.*l42.*l68.*l294.*6.0;
l340 = V_min.*l12.*l43.*l67.*l294.*6.0;
l341 = V_max.*l12.*l42.*l68.*l294.*6.0;
l342 = V_max.*l12.*l43.*l67.*l294.*6.0;
l343 = V_min.*l6.*l46.*l68.*l294.*6.0;
l344 = V_min.*l4.*l48.*l67.*l294.*6.0;
l345 = V_max.*l6.*l46.*l68.*l294.*6.0;
l346 = V_max.*l4.*l48.*l67.*l294.*6.0;
l347 = l27.*l38.*l42.*l68.*l76.*2.0;
l348 = l27.*l35.*l45.*l68.*l76.*2.0;
l350 = l27.*l31.*l44.*l75.*l125.*3.0;
l351 = l27.*l37.*l43.*l68.*l76.*6.0;
l352 = l27.*l36.*l44.*l68.*l76.*6.0;
l353 = l2.*l44.*l125.*l294.*9.0;
l360 = l24.*l27.*l30.*l75.*l294.*6.0;
l361 = l5.*l27.*l39.*l75.*l294.*6.0;
l365 = V_init.*l27.*l38.*l42.*l68.*l75.*6.0;
l366 = V_init.*l27.*l31.*l43.*l75.*l125.*6.0;
l370 = V_init.*l27.*l32.*l46.*l68.*l75.*3.0e+1;
l372 = V_max.*l27.*l38.*l42.*l68.*l75.*6.0;
l377 = V_max.*l27.*l32.*l46.*l68.*l75.*3.0e+1;
l379 = J_max.*l2.*l47.*l68.*l294.*1.5e+1;
l380 = A_init.*l11.*l44.*l67.*l294.*3.6e+1;
l381 = A_init.*l4.*l48.*l67.*l294.*3.6e+1;
l382 = T.*l21.*l43.*l67.*l294.*6.0;
l383 = T.*l12.*l44.*l67.*l294.*3.6e+1;
l384 = T.*l6.*l48.*l67.*l294.*3.6e+1;
l385 = V_init.*l4.*l43.*l125.*l294.*6.0;
l386 = V_init.*l11.*l44.*l67.*l294.*3.6e+1;
l387 = V_init.*l4.*l48.*l67.*l294.*3.6e+1;
l392 = V_min.*l11.*l43.*l68.*l294.*2.4e+1;
l393 = V_max.*l11.*l43.*l68.*l294.*2.4e+1;
l394 = V_min.*l8.*l45.*l68.*l294.*2.4e+1;
l395 = V_max.*l8.*l45.*l68.*l294.*2.4e+1;
l396 = V_min.*l11.*l44.*l67.*l294.*3.0e+1;
l397 = V_max.*l11.*l44.*l67.*l294.*3.0e+1;
l398 = V_min.*l6.*l47.*l67.*l294.*3.0e+1;
l399 = V_max.*l6.*l47.*l67.*l294.*3.0e+1;
l400 = V_min.*l10.*l44.*l68.*l294.*3.6e+1;
l401 = V_max.*l10.*l44.*l68.*l294.*3.6e+1;
l402 = V_min.*l10.*l45.*l67.*l294.*6.0e+1;
l403 = V_min.*l8.*l46.*l67.*l294.*6.0e+1;
l404 = V_max.*l10.*l45.*l67.*l294.*6.0e+1;
l405 = V_max.*l8.*l46.*l67.*l294.*6.0e+1;
l406 = A_init.*T.*l27.*l32.*l44.*l69.*l75.*6.0;
l407 = A_init.*T.*l27.*l30.*l46.*l69.*l75.*6.0;
l419 = l22.*l27.*l31.*l75.*l294.*4.2e+1;
l420 = l7.*l27.*l38.*l75.*l294.*4.2e+1;
l429 = V_init.*l27.*l37.*l43.*l68.*l75.*3.0e+1;
l431 = V_init.*l27.*l36.*l44.*l68.*l75.*6.0e+1;
l432 = V_init.*l27.*l35.*l45.*l68.*l75.*6.0e+1;
l436 = V_max.*l27.*l37.*l43.*l68.*l75.*3.0e+1;
l439 = V_max.*l27.*l36.*l44.*l68.*l75.*6.0e+1;
l440 = V_max.*l27.*l35.*l45.*l68.*l75.*6.0e+1;
l442 = J_max.*l2.*l43.*l125.*l294.*9.0;
l444 = A_init.*l10.*l45.*l67.*l294.*9.0e+1;
l445 = A_init.*l6.*l47.*l67.*l294.*9.0e+1;
l446 = A_init.*l8.*l46.*l67.*l294.*1.2e+2;
l447 = J_max.*l2.*l48.*l67.*l294.*1.26e+2;
l448 = T.*l11.*l45.*l67.*l294.*9.0e+1;
l449 = T.*l8.*l47.*l67.*l294.*9.0e+1;
l450 = T.*l10.*l46.*l67.*l294.*1.2e+2;
l452 = V_init.*l10.*l45.*l67.*l294.*9.0e+1;
l453 = V_init.*l6.*l47.*l67.*l294.*9.0e+1;
l454 = V_init.*l8.*l46.*l67.*l294.*1.2e+2;
l466 = A_init.*l24.*l27.*l29.*l75.*l294.*6.0;
l467 = A_init.*l5.*l27.*l38.*l75.*l294.*6.0;
l468 = A_init.*T.*l27.*l31.*l45.*l69.*l75.*1.2e+1;
l470 = l2.*l27.*l31.*l44.*l69.*l75.*3.0;
l471 = l2.*l27.*l29.*l46.*l69.*l75.*3.0;
l472 = l2.*l27.*l30.*l45.*l69.*l75.*6.0;
l473 = l2.*l27.*l30.*l47.*l68.*l75.*6.0;
l476 = l13.*l27.*l31.*l46.*l69.*l75.*3.0;
l477 = l13.*l312;
l478 = l13.*l27.*l32.*l45.*l69.*l75.*6.0;
l479 = A_init.*T.*l12.*l43.*l67.*l294.*1.8e+1;
l480 = l2.*l10.*l43.*l68.*l294.*3.0;
l483 = l20.*l27.*l32.*l75.*l294.*1.26e+2;
l484 = l9.*l27.*l37.*l75.*l294.*1.26e+2;
l493 = A_init.*l22.*l27.*l30.*l75.*l294.*4.2e+1;
l494 = A_init.*l7.*l27.*l37.*l75.*l294.*4.2e+1;
l499 = l2.*l27.*l37.*l42.*l68.*l75.*3.0;
l502 = l2.*l27.*l31.*l46.*l68.*l75.*2.7e+1;
l503 = l2.*l27.*l32.*l45.*l68.*l75.*4.8e+1;
l504 = T.*l24.*l27.*l30.*l75.*l294.*-6.0;
l507 = l13.*l349;
l508 = l13.*l27.*l35.*l44.*l69.*l75.*3.0;
l511 = A_init.*T.*l11.*l44.*l67.*l294.*1.08e+2;
l512 = A_init.*T.*l4.*l48.*l67.*l294.*1.08e+2;
l513 = A_init.*T.*l10.*l45.*l67.*l294.*2.7e+2;
l514 = A_init.*T.*l6.*l47.*l67.*l294.*2.7e+2;
l515 = A_init.*T.*l8.*l46.*l67.*l294.*3.6e+2;
l516 = l2.*l8.*l44.*l68.*l294.*1.5e+1;
l517 = l2.*l11.*l43.*l67.*l294.*2.1e+1;
l518 = l2.*l6.*l45.*l68.*l294.*3.0e+1;
l519 = l2.*l4.*l46.*l68.*l294.*3.0e+1;
l527 = l19.*l27.*l35.*l75.*l294.*2.1e+2;
l528 = l18.*l27.*l36.*l75.*l294.*2.1e+2;
l530 = A_init.*l20.*l27.*l31.*l75.*l294.*1.26e+2;
l531 = A_init.*l9.*l27.*l36.*l75.*l294.*1.26e+2;
l532 = A_init.*l19.*l27.*l32.*l75.*l294.*2.1e+2;
l538 = l2.*l27.*l30.*l43.*l75.*l125.*9.0;
l541 = l2.*l27.*l36.*l43.*l68.*l75.*1.8e+1;
l543 = l2.*l27.*l35.*l44.*l68.*l75.*4.2e+1;
l546 = T.*l7.*l27.*l38.*l75.*l294.*-4.2e+1;
l549 = l13.*l409;
l550 = l13.*l410;
l551 = l13.*l411;
l552 = l13.*l412;
l556 = l2.*l10.*l44.*l67.*l294.*1.26e+2;
l557 = l2.*l8.*l45.*l67.*l294.*3.15e+2;
l558 = l2.*l4.*l47.*l67.*l294.*3.15e+2;
l559 = l2.*l6.*l46.*l67.*l294.*4.2e+2;
l562 = A_init.*l18.*l27.*l35.*l75.*l294.*2.1e+2;
l568 = T.*l20.*l27.*l32.*l75.*l294.*-1.26e+2;
l573 = T.*l18.*l27.*l36.*l75.*l294.*-2.1e+2;
l296 = l48.*l68.*l295;
l297 = l45.*l124.*l295;
l298 = l49.*l67.*l295.*3.0;
l299 = J_max.*l47.*l68.*l295.*6.0;
l302 = l11.*l42.*l68.*l295;
l304 = J_max.*l44.*l124.*l295.*3.0;
l305 = J_max.*l48.*l67.*l295.*1.8e+1;
l308 = l11.*l43.*l67.*l295.*3.0;
l309 = l10.*l43.*l68.*l295.*6.0;
l313 = -l306;
l316 = l4.*l43.*l124.*l295.*2.0;
l317 = l8.*l44.*l68.*l295.*1.5e+1;
l318 = l10.*l44.*l67.*l295.*1.8e+1;
l320 = l4.*l46.*l68.*l295.*1.5e+1;
l321 = l6.*l45.*l68.*l295.*2.0e+1;
l323 = l8.*l45.*l67.*l295.*4.5e+1;
l325 = l4.*l47.*l67.*l295.*4.5e+1;
l327 = l6.*l46.*l67.*l295.*6.0e+1;
l354 = l2.*l45.*l124.*l294.*1.2e+1;
l357 = A_init.*l27.*l31.*l44.*l75.*l124.*6.0;
l358 = A_init.*l27.*l30.*l45.*l75.*l124.*6.0;
l363 = T.*l27.*l32.*l44.*l75.*l124.*6.0;
l364 = T.*l27.*l31.*l45.*l75.*l124.*6.0;
l367 = V_init.*l27.*l31.*l44.*l75.*l124.*6.0;
l368 = V_init.*l27.*l30.*l45.*l75.*l124.*6.0;
l369 = -l331;
l373 = V_max.*l27.*l31.*l44.*l75.*l124.*6.0;
l375 = V_max.*l27.*l30.*l45.*l75.*l124.*6.0;
l378 = A_init.*J_max.*T.*l45.*l124.*l294.*1.2e+1;
l388 = -l339;
l389 = -l342;
l390 = -l343;
l391 = -l346;
l408 = l27.*l32.*l43.*l76.*l124.*8.0;
l413 = -l353;
l418 = -l360;
l425 = -l365;
l426 = -l366;
l430 = -l370;
l443 = J_max.*l2.*l44.*l124.*l294.*2.4e+1;
l451 = -l385;
l455 = V_min.*l6.*l43.*l124.*l294.*1.2e+1;
l456 = V_min.*l4.*l44.*l124.*l294.*1.2e+1;
l457 = V_max.*l6.*l43.*l124.*l294.*1.2e+1;
l458 = V_max.*l4.*l44.*l124.*l294.*1.2e+1;
l459 = -l392;
l460 = -l394;
l461 = -l397;
l462 = -l399;
l463 = -l400;
l464 = -l404;
l465 = -l405;
l475 = T.*l361;
l481 = l13.*l310;
l482 = -l420;
l485 = -l429;
l486 = -l431;
l487 = -l432;
l488 = -l442;
l492 = -l466;
l495 = A_init.*T.*l27.*l32.*l43.*l75.*l124.*1.2e+1;
l496 = A_init.*T.*l27.*l31.*l44.*l75.*l124.*1.2e+1;
l500 = l2.*l27.*l29.*l45.*l75.*l124.*3.0;
l505 = T.*l419;
l509 = A_init.*T.*l6.*l43.*l124.*l294.*1.2e+1;
l510 = A_init.*T.*l4.*l44.*l124.*l294.*2.4e+1;
l520 = l13.*l315;
l521 = l13.*l319;
l522 = l13.*l322;
l523 = l13.*l324;
l524 = l13.*l326;
l525 = l13.*l328;
l526 = -l483;
l529 = -l494;
l539 = l2.*l27.*l30.*l44.*l75.*l124.*9.0;
l540 = l2.*l27.*l31.*l43.*l75.*l124.*1.2e+1;
l548 = T.*l484;
l555 = l2.*l4.*l43.*l124.*l294.*1.2e+1;
l560 = -l528;
l561 = -l530;
l563 = -l538;
l569 = T.*l527;
l572 = -l562;
l574 = l40+l41+l70+l71+l72+l73+l126;
l578 = l82+l88+l89+l90+l91+l94+l128+l129+l131+l135+l143+l144+l189+l190+l310+l312+l315+l319+l322+l324+l326+l328+l349+l350+l409+l410+l411+l412;
l303 = -l297;
l311 = -l304;
l355 = -l316;
l414 = -l354;
l427 = -l367;
l428 = -l368;
l441 = -l378;
l489 = -l443;
l490 = -l455;
l491 = -l456;
l533 = -l495;
l534 = -l496;
l553 = -l509;
l554 = -l510;
l564 = -l539;
l565 = -l540;
l571 = -l555;
l575 = 1.0./l574;
l579 = l578.^2;
l580 = l578.^3;
l586 = l62+l95+l96+l99+l100+l101+l102+l103+l104+l105+l107+l111+l130+l145+l146+l147+l148+l151+l153+l155+l157+l158+l160+l170+l195+l196+l197+l198+l199+l202+l216+l218+l219+l237+l238+l241+l242+l246+l252+l253+l263+l272+l273+l283+l285+l300+l329+l330+l336+l337+l356+l357+l358+l359+l361+l362+l363+l364+l380+l381+l382+l383+l384+l415+l416+l417+l418+l419+l421+l422+l423+l424+l444+l445+l446+l448+l449+l450+l482+l484+l526+l527+l560;
l576 = l575.^2;
l577 = l575.^3;
l581 = (l575.*l578)./3.0;
l587 = (l575.*l586)./3.0;
l593 = l55+l56+l57+l66+l77+l83+l84+l85+l86+l113+l116+l117+l119+l127+l132+l138+l139+l140+l141+l159+l161+l163+l164+l165+l166+l169+l173+l174+l177+l178+l179+l181+l182+l184+l187+l188+l192+l193+l194+l204+l205+l206+l208+l209+l210+l212+l215+l217+l220+l221+l222+l223+l224+l226+l228+l229+l231+l234+l235+l236+l243+l247+l250+l254+l255+l256+l257+l258+l264+l265+l266+l267+l268+l269+l270+l271+l274+l275+l276+l277+l278+l281+l282+l284+l286+l287+l288+l291+l292+l293+l296+l298+l299+l301+l302+l303+l305+l307+l308+l309+l311+l313+l314+l317+l318+l320+l321+l323+l325+l327+l332+l333+l334+l335+l338+l340+l341+l344+l345+l347+l348+l351+l352+l355+l369+l371+l372+l373+l374+l375+l376+l377+l379+l386+l387+l388+l389+l390+l391+l393+l395+l396+l398+l401+l402+l403+l406+l407+l408+l413+l414+l425+l426+l427+l428+l430+l433+l434+l435+l436+l437+l438+l439+l440+l441+l447+l451+l452+l453+l454+l457+l458+l459+l460+l461+l462+l463+l464+l465+l467+l468+l469+l470+l471+l472+l473+l475+l476+l477+l478+l479+l480+l481+l485+l486+l487+l488+l489+l490+l491+l492+l493+l497+l498+l499+l500+l501+l502+l503+l504+l505+l507+l508+l511+l512+l513+l514+l515+l516+l517+l518+l519+l520+l521+l522+l523+l524+l525+l529+l531+l532+l533+l534+l535+l536+l537+l541+l542+l543+l544+l545+l546+l548+l549+l550+l551+l552+l553+l554+l556+l557+l558+l559+l561+l563+l564+l565+l566+l567+l568+l569+l571+l572+l573;
l582 = -l581;
l583 = (l576.*l579)./9.0;
l584 = (l577.*l580)./2.7e+1;
l588 = (l576.*l578.*l586)./6.0;
l594 = (l575.*l593)./2.0;
l585 = -l584;
l589 = -l588;
l590 = l583+l587;
l595 = -l594;
l596 = l584+l588+l594;
l591 = l590.^3;
l597 = l596.^2;
l592 = -l591;
l598 = l592+l597;
l599 = sqrt(complex(l598));
l600 = l585+l589+l595+l599;
l601 = l600.^(1.0./3.0);
l602 = 1.0./l601;
l604 = l601./2.0;
l605 = -l604;
l606 = l590.*l602;
l607 = l606./2.0;
l610 = l28.*(l601-l606).*-5.0e-1i;
l608 = -l607;
t4 = [l582+l601+l606;l582+l605+l608+l28.*(l601-l606).*5.0e-1i;l582+l605+l608+l610];

l2 = A_init.^2;
l3 = J_max.*V_init.*2.0;
l4 = J_max.*V_max.*2.0;
l5 = -J_min;
l6 = -J_max;
l7 = -l3;
l8 = J_min+l6;
l9 = J_max+l5;
l10 = sqrt(complex(l5));
l11 = sqrt(complex(l9));
l12 = l2+l4+l7;
l13 = sqrt(complex(l12));
t7 = -(l10.^3.*l11.*l13+l5.*l8.*(A_init+J_max.*T)+J_max.*l10.*l11.*l13+J_min.*J_max.*l8.*t4+sqrt(2.0).*J_max.^(3.0./2.0).*l10.*l11.*sqrt(complex(-V_min+V_max)))./(J_min.*J_max.*l8);

l2 = J_min.^2;
l3 = J_min.*J_max;
l4 = -J_max;
l5 = -V_max;
l6 = sqrt(2.0);
l7 = sqrt(J_max);
l8 = -l3;
l9 = J_min+l4;
l10 = V_min+l5;
l11 = l2+l8;
l13 = J_min.*l9.*l10;
l12 = 1.0./l11;
l14 = -l13;
l15 = sqrt(complex(l14));
l16 = l6.*l7.*l12.*l15;
t5 = [l16;l16;l16];

l2 = J_min.^2;
l3 = t5.^2;
t3 = sqrt(complex(J_min.*(J_min-J_max).*(J_max.*V_init.*-2.0+J_max.*V_min.*2.0+l2.*l3+A_init.^2-J_min.*J_max.*l3)))./(l2-J_min.*J_max);

t1 = -(A_init+J_min.*t3)./J_max;

t6 = [0.0;0.0;0.0];

t2 = [0.0;0.0;0.0];

t = [t1, t2, t3, t4, t5, t6, t7];

end


