//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// abcefg_T_AV.cpp
//
// Code generation for function 'abcefg_T_AV'
//

// Include files
#include "abcefg_T_AV.h"
#include "rt_nonfinite.h"

// Function Definitions
void abcefg_T_AV(double V_init, double A_init, double V_wayp, double A_wayp,
                 double A_max, double A_min, double J_max, double J_min,
                 double T, double t[7])
{
  double b_t6_tmp;
  double c_t6_tmp;
  double l2;
  double l3;
  double t6_tmp;
  //  ---------------------------------------------------------------------
  //  Package:    TopiCo (https://github.com/AIS-Bonn/TopiCo)
  //  Version:    2021-03-18 12:09:55
  //  Maintainer: Marius Beul (mbeul@ais.uni-bonn.de)
  //  License:    BSD
  //  ---------------------------------------------------------------------
  //  Software License Agreement (BSD License)
  //  Copyright (c) 2021, Computer Science Institute VI, University of Bonn
  //  All rights reserved.
  //  Redistribution and use in source and binary forms, with or without
  //  modification, are permitted provided that the following conditions
  //  are met:
  //
  //  * Redistributions of source code must retain the above copyright
  //    notice, this list of conditions and the following disclaimer.
  //  * Redistributions in binary form must reproduce the above
  //    copyright notice, this list of conditions and the following
  //    disclaimer in the documentation and/or other materials provided
  //    with the distribution.
  //  * Neither the name of University of Bonn, Computer Science Institute
  //    VI nor the names of its contributors may be used to endorse or
  //    promote products derived from this software without specific
  //    prior written permission.
  //
  //  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
  //  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
  //  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
  //  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
  //  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
  //  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
  //  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  //  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  //  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
  //  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  //  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  //  POSSIBILITY OF SUCH DAMAGE.
  //  --------------------------------------------------------------------
  //  Generated on 03-Sep-2019 11:32:29
  l2 = A_min * A_min;
  l3 = A_max * A_max;
  t6_tmp = J_min * J_max;
  b_t6_tmp = A_min + -A_max;
  c_t6_tmp = J_min * ((((A_init + A_min) - A_wayp) + -A_max) + J_max * T);
  l2 = -((((((((-J_min * l2 + J_min * l3) + J_max * l2) - J_max * l3) -
             A_init * A_init * J_min) +
            A_wayp * A_wayp * J_min) +
           A_max * (c_t6_tmp - J_max * b_t6_tmp) * 2.0) +
          t6_tmp * V_init * 2.0) -
         t6_tmp * V_wayp * 2.0) /
       (A_min * J_min * J_max * 2.0 - A_max * J_min * J_max * 2.0);
  t[0] = -(A_init - A_max) / J_max;
  t[1] = (c_t6_tmp - J_max * (b_t6_tmp + J_min * l2)) / t6_tmp;
  t[2] = (A_min - A_max) / J_min;
  t[3] = 0.0;
  t[4] = 0.0;
  t[5] = l2;
  t[6] = -(A_min - A_wayp) / J_max;
}

// End of code generation (abcefg_T_AV.cpp)
