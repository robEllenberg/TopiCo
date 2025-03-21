//
// Student License - for use by students to meet course requirements and
// perform academic research at degree granting institutions only.  Not
// for government, commercial, or other organizational use.
//
// select_cases_TV.cpp
//
// Code generation for function 'select_cases_TV'
//

// Include files
#include "select_cases_TV.h"
#include "rt_nonfinite.h"
#include "topico_wrapper_internal_types.h"
#include "topico_wrapper_rtwutil.h"
#include "topico_wrapper_types.h"
#include "coder_bounded_array.h"

// Variable Definitions
static bool b_caselut_not_empty;

// Function Definitions
void select_cases_TV(unsigned char n, unsigned char cond, bool b_sync_V,
                     int cases_data[], int cases_size[2])
{
  static cell_wrap_22 caselut[224];
  static rtBoundsCheckInfo nb_emlrtBCI = {
      0,                                                      // iFirst
      31,                                                     // iLast
      272,                                                    // lineNo
      17,                                                     // colNo
      "caselut",                                              // aName
      "select_cases_TV",                                      // fName
      "/home/lmbeul/Desktop/TopiCo/MATLAB/select_cases_TV.m", // pName
      0                                                       // checkKind
  };
  static rtBoundsCheckInfo ob_emlrtBCI = {
      0,                                                      // iFirst
      6,                                                      // iLast
      272,                                                    // lineNo
      17,                                                     // colNo
      "caselut",                                              // aName
      "select_cases_TV",                                      // fName
      "/home/lmbeul/Desktop/TopiCo/MATLAB/select_cases_TV.m", // pName
      0                                                       // checkKind
  };
  static rtBoundsCheckInfo pb_emlrtBCI = {
      0,                                                      // iFirst
      31,                                                     // iLast
      272,                                                    // lineNo
      27,                                                     // colNo
      "caselut",                                              // aName
      "select_cases_TV",                                      // fName
      "/home/lmbeul/Desktop/TopiCo/MATLAB/select_cases_TV.m", // pName
      0                                                       // checkKind
  };
  static rtBoundsCheckInfo qb_emlrtBCI = {
      0,                                                      // iFirst
      6,                                                      // iLast
      272,                                                    // lineNo
      25,                                                     // colNo
      "caselut",                                              // aName
      "select_cases_TV",                                      // fName
      "/home/lmbeul/Desktop/TopiCo/MATLAB/select_cases_TV.m", // pName
      0                                                       // checkKind
  };
  static const short iv2[16] = {10101, 10102, 10103, 10104, 10105, 10106,
                                10107, 10108, 11101, 11102, 11103, 11104,
                                11105, 11106, 11107, 11108};
  static const short iv[9] = {10104, 10105, 10107, 10108, 11101,
                              11103, 11105, 11107, 11108};
  static const short iv1[9] = {10103, 10106, 10107, 10108, 11102,
                               11104, 11106, 11107, 11108};
  static const short iv4[8] = {10102, 10104, 10106, 10108,
                               11101, 11103, 11105, 11107};
  static const short iv6[8] = {10101, 10103, 10105, 10107,
                               11102, 11104, 11106, 11108};
  static const short iv3[6] = {10104, 10108, 11101, 11103, 11105, 11107};
  static const short iv5[6] = {10103, 10107, 11102, 11104, 11106, 11108};
  int i;
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
  if (!b_caselut_not_empty) {
    for (i = 0; i < 224; i++) {
      caselut[i].f1.size[0] = 0;
      caselut[i].f1.size[1] = 0;
    }
    b_caselut_not_empty = true;
    caselut[0].f1.size[0] = 1;
    caselut[0].f1.size[1] = 9;
    caselut[7].f1.size[0] = 1;
    caselut[7].f1.size[1] = 9;
    for (i = 0; i < 9; i++) {
      caselut[0].f1.data[i] = iv[i];
      caselut[7].f1.data[i] = iv1[i];
    }
    caselut[14].f1.size[0] = 1;
    caselut[14].f1.size[1] = 4;
    caselut[14].f1.data[0] = 10107;
    caselut[14].f1.data[1] = 10108;
    caselut[14].f1.data[2] = 11107;
    caselut[14].f1.data[3] = 11108;
    caselut[21].f1.size[0] = 1;
    caselut[21].f1.size[1] = 16;
    for (i = 0; i < 16; i++) {
      caselut[21].f1.data[i] = iv2[i];
    }
    caselut[28].f1.size[0] = 1;
    caselut[28].f1.size[1] = 9;
    caselut[35].f1.size[0] = 1;
    caselut[35].f1.size[1] = 9;
    for (i = 0; i < 9; i++) {
      caselut[28].f1.data[i] = iv[i];
      caselut[35].f1.data[i] = iv1[i];
    }
    caselut[42].f1.size[0] = 1;
    caselut[42].f1.size[1] = 4;
    caselut[42].f1.data[0] = 10107;
    caselut[42].f1.data[1] = 10108;
    caselut[42].f1.data[2] = 11107;
    caselut[42].f1.data[3] = 11108;
    caselut[49].f1.size[0] = 1;
    caselut[49].f1.size[1] = 16;
    for (i = 0; i < 16; i++) {
      caselut[49].f1.data[i] = iv2[i];
    }
    caselut[56].f1.size[0] = 1;
    caselut[56].f1.size[1] = 9;
    caselut[63].f1.size[0] = 1;
    caselut[63].f1.size[1] = 9;
    for (i = 0; i < 9; i++) {
      caselut[56].f1.data[i] = iv[i];
      caselut[63].f1.data[i] = iv1[i];
    }
    caselut[70].f1.size[0] = 1;
    caselut[70].f1.size[1] = 4;
    caselut[70].f1.data[0] = 10107;
    caselut[70].f1.data[1] = 10108;
    caselut[70].f1.data[2] = 11107;
    caselut[70].f1.data[3] = 11108;
    caselut[77].f1.size[0] = 1;
    caselut[77].f1.size[1] = 16;
    for (i = 0; i < 16; i++) {
      caselut[77].f1.data[i] = iv2[i];
    }
    caselut[84].f1.size[0] = 1;
    caselut[84].f1.size[1] = 9;
    caselut[91].f1.size[0] = 1;
    caselut[91].f1.size[1] = 9;
    for (i = 0; i < 9; i++) {
      caselut[84].f1.data[i] = iv[i];
      caselut[91].f1.data[i] = iv1[i];
    }
    caselut[98].f1.size[0] = 1;
    caselut[98].f1.size[1] = 4;
    caselut[98].f1.data[0] = 10107;
    caselut[98].f1.data[1] = 10108;
    caselut[98].f1.data[2] = 11107;
    caselut[98].f1.data[3] = 11108;
    caselut[105].f1.size[0] = 1;
    caselut[105].f1.size[1] = 16;
    for (i = 0; i < 16; i++) {
      caselut[105].f1.data[i] = iv2[i];
    }
    caselut[112].f1.size[0] = 1;
    caselut[112].f1.size[1] = 6;
    for (i = 0; i < 6; i++) {
      caselut[112].f1.data[i] = iv3[i];
    }
    caselut[119].f1.size[0] = 1;
    caselut[119].f1.size[1] = 3;
    caselut[119].f1.data[0] = 10106;
    caselut[119].f1.data[1] = 10108;
    caselut[119].f1.data[2] = 11107;
    caselut[126].f1.size[0] = 1;
    caselut[126].f1.size[1] = 2;
    caselut[126].f1.data[0] = 10108;
    caselut[126].f1.data[1] = 11107;
    caselut[133].f1.size[0] = 1;
    caselut[133].f1.size[1] = 8;
    for (i = 0; i < 8; i++) {
      caselut[133].f1.data[i] = iv4[i];
    }
    caselut[140].f1.size[0] = 1;
    caselut[140].f1.size[1] = 6;
    for (i = 0; i < 6; i++) {
      caselut[140].f1.data[i] = iv3[i];
    }
    caselut[147].f1.size[0] = 1;
    caselut[147].f1.size[1] = 3;
    caselut[147].f1.data[0] = 10106;
    caselut[147].f1.data[1] = 10108;
    caselut[147].f1.data[2] = 11107;
    caselut[154].f1.size[0] = 1;
    caselut[154].f1.size[1] = 2;
    caselut[154].f1.data[0] = 10108;
    caselut[154].f1.data[1] = 11107;
    caselut[161].f1.size[0] = 1;
    caselut[161].f1.size[1] = 8;
    for (i = 0; i < 8; i++) {
      caselut[161].f1.data[i] = iv4[i];
    }
    caselut[168].f1.size[0] = 1;
    caselut[168].f1.size[1] = 3;
    caselut[168].f1.data[0] = 10105;
    caselut[168].f1.data[1] = 10107;
    caselut[168].f1.data[2] = 11108;
    caselut[175].f1.size[0] = 1;
    caselut[175].f1.size[1] = 6;
    for (i = 0; i < 6; i++) {
      caselut[175].f1.data[i] = iv5[i];
    }
    caselut[182].f1.size[0] = 1;
    caselut[182].f1.size[1] = 2;
    caselut[182].f1.data[0] = 10107;
    caselut[182].f1.data[1] = 11108;
    caselut[189].f1.size[0] = 1;
    caselut[189].f1.size[1] = 8;
    for (i = 0; i < 8; i++) {
      caselut[189].f1.data[i] = iv6[i];
    }
    caselut[196].f1.size[0] = 1;
    caselut[196].f1.size[1] = 3;
    caselut[196].f1.data[0] = 10105;
    caselut[196].f1.data[1] = 10107;
    caselut[196].f1.data[2] = 11108;
    caselut[203].f1.size[0] = 1;
    caselut[203].f1.size[1] = 6;
    for (i = 0; i < 6; i++) {
      caselut[203].f1.data[i] = iv5[i];
    }
    caselut[210].f1.size[0] = 1;
    caselut[210].f1.size[1] = 2;
    caselut[210].f1.data[0] = 10107;
    caselut[210].f1.data[1] = 11108;
    caselut[217].f1.size[0] = 1;
    caselut[217].f1.size[1] = 8;
    for (i = 0; i < 8; i++) {
      caselut[217].f1.data[i] = iv6[i];
    }
    caselut[1].f1.size[0] = 0;
    caselut[1].f1.size[1] = 0;
    caselut[8].f1.size[0] = 0;
    caselut[8].f1.size[1] = 0;
    caselut[15].f1.size[0] = 0;
    caselut[15].f1.size[1] = 0;
    caselut[22].f1.size[0] = 0;
    caselut[22].f1.size[1] = 0;
    caselut[29].f1.size[0] = 0;
    caselut[29].f1.size[1] = 0;
    caselut[36].f1.size[0] = 0;
    caselut[36].f1.size[1] = 0;
    caselut[43].f1.size[0] = 0;
    caselut[43].f1.size[1] = 0;
    caselut[50].f1.size[0] = 0;
    caselut[50].f1.size[1] = 0;
    caselut[57].f1.size[0] = 0;
    caselut[57].f1.size[1] = 0;
    caselut[64].f1.size[0] = 0;
    caselut[64].f1.size[1] = 0;
    caselut[71].f1.size[0] = 0;
    caselut[71].f1.size[1] = 0;
    caselut[78].f1.size[0] = 0;
    caselut[78].f1.size[1] = 0;
    caselut[85].f1.size[0] = 0;
    caselut[85].f1.size[1] = 0;
    caselut[92].f1.size[0] = 0;
    caselut[92].f1.size[1] = 0;
    caselut[99].f1.size[0] = 0;
    caselut[99].f1.size[1] = 0;
    caselut[106].f1.size[0] = 0;
    caselut[106].f1.size[1] = 0;
    caselut[113].f1.size[0] = 0;
    caselut[113].f1.size[1] = 0;
    caselut[120].f1.size[0] = 0;
    caselut[120].f1.size[1] = 0;
    caselut[127].f1.size[0] = 0;
    caselut[127].f1.size[1] = 0;
    caselut[134].f1.size[0] = 0;
    caselut[134].f1.size[1] = 0;
    caselut[141].f1.size[0] = 0;
    caselut[141].f1.size[1] = 0;
    caselut[148].f1.size[0] = 0;
    caselut[148].f1.size[1] = 0;
    caselut[155].f1.size[0] = 0;
    caselut[155].f1.size[1] = 0;
    caselut[162].f1.size[0] = 0;
    caselut[162].f1.size[1] = 0;
    caselut[169].f1.size[0] = 0;
    caselut[169].f1.size[1] = 0;
    caselut[176].f1.size[0] = 0;
    caselut[176].f1.size[1] = 0;
    caselut[183].f1.size[0] = 0;
    caselut[183].f1.size[1] = 0;
    caselut[190].f1.size[0] = 0;
    caselut[190].f1.size[1] = 0;
    caselut[197].f1.size[0] = 0;
    caselut[197].f1.size[1] = 0;
    caselut[204].f1.size[0] = 0;
    caselut[204].f1.size[1] = 0;
    caselut[211].f1.size[0] = 0;
    caselut[211].f1.size[1] = 0;
    caselut[218].f1.size[0] = 0;
    caselut[218].f1.size[1] = 0;
    caselut[2].f1.size[0] = 0;
    caselut[2].f1.size[1] = 0;
    caselut[9].f1.size[0] = 0;
    caselut[9].f1.size[1] = 0;
    caselut[16].f1.size[0] = 0;
    caselut[16].f1.size[1] = 0;
    caselut[23].f1.size[0] = 0;
    caselut[23].f1.size[1] = 0;
    caselut[30].f1.size[0] = 0;
    caselut[30].f1.size[1] = 0;
    caselut[37].f1.size[0] = 0;
    caselut[37].f1.size[1] = 0;
    caselut[44].f1.size[0] = 0;
    caselut[44].f1.size[1] = 0;
    caselut[51].f1.size[0] = 0;
    caselut[51].f1.size[1] = 0;
    caselut[58].f1.size[0] = 0;
    caselut[58].f1.size[1] = 0;
    caselut[65].f1.size[0] = 0;
    caselut[65].f1.size[1] = 0;
    caselut[72].f1.size[0] = 0;
    caselut[72].f1.size[1] = 0;
    caselut[79].f1.size[0] = 0;
    caselut[79].f1.size[1] = 0;
    caselut[86].f1.size[0] = 0;
    caselut[86].f1.size[1] = 0;
    caselut[93].f1.size[0] = 0;
    caselut[93].f1.size[1] = 0;
    caselut[100].f1.size[0] = 0;
    caselut[100].f1.size[1] = 0;
    caselut[107].f1.size[0] = 0;
    caselut[107].f1.size[1] = 0;
    caselut[114].f1.size[0] = 0;
    caselut[114].f1.size[1] = 0;
    caselut[121].f1.size[0] = 0;
    caselut[121].f1.size[1] = 0;
    caselut[128].f1.size[0] = 0;
    caselut[128].f1.size[1] = 0;
    caselut[135].f1.size[0] = 0;
    caselut[135].f1.size[1] = 0;
    caselut[142].f1.size[0] = 0;
    caselut[142].f1.size[1] = 0;
    caselut[149].f1.size[0] = 0;
    caselut[149].f1.size[1] = 0;
    caselut[156].f1.size[0] = 0;
    caselut[156].f1.size[1] = 0;
    caselut[163].f1.size[0] = 0;
    caselut[163].f1.size[1] = 0;
    caselut[170].f1.size[0] = 0;
    caselut[170].f1.size[1] = 0;
    caselut[177].f1.size[0] = 0;
    caselut[177].f1.size[1] = 0;
    caselut[184].f1.size[0] = 0;
    caselut[184].f1.size[1] = 0;
    caselut[191].f1.size[0] = 0;
    caselut[191].f1.size[1] = 0;
    caselut[198].f1.size[0] = 0;
    caselut[198].f1.size[1] = 0;
    caselut[205].f1.size[0] = 0;
    caselut[205].f1.size[1] = 0;
    caselut[212].f1.size[0] = 0;
    caselut[212].f1.size[1] = 0;
    caselut[219].f1.size[0] = 0;
    caselut[219].f1.size[1] = 0;
    caselut[3].f1.size[0] = 0;
    caselut[3].f1.size[1] = 0;
    caselut[10].f1.size[0] = 0;
    caselut[10].f1.size[1] = 0;
    caselut[17].f1.size[0] = 0;
    caselut[17].f1.size[1] = 0;
    caselut[24].f1.size[0] = 0;
    caselut[24].f1.size[1] = 0;
    caselut[31].f1.size[0] = 0;
    caselut[31].f1.size[1] = 0;
    caselut[38].f1.size[0] = 0;
    caselut[38].f1.size[1] = 0;
    caselut[45].f1.size[0] = 0;
    caselut[45].f1.size[1] = 0;
    caselut[52].f1.size[0] = 0;
    caselut[52].f1.size[1] = 0;
    caselut[59].f1.size[0] = 0;
    caselut[59].f1.size[1] = 0;
    caselut[66].f1.size[0] = 0;
    caselut[66].f1.size[1] = 0;
    caselut[73].f1.size[0] = 0;
    caselut[73].f1.size[1] = 0;
    caselut[80].f1.size[0] = 0;
    caselut[80].f1.size[1] = 0;
    caselut[87].f1.size[0] = 0;
    caselut[87].f1.size[1] = 0;
    caselut[94].f1.size[0] = 0;
    caselut[94].f1.size[1] = 0;
    caselut[101].f1.size[0] = 0;
    caselut[101].f1.size[1] = 0;
    caselut[108].f1.size[0] = 0;
    caselut[108].f1.size[1] = 0;
    caselut[115].f1.size[0] = 0;
    caselut[115].f1.size[1] = 0;
    caselut[122].f1.size[0] = 0;
    caselut[122].f1.size[1] = 0;
    caselut[129].f1.size[0] = 0;
    caselut[129].f1.size[1] = 0;
    caselut[136].f1.size[0] = 0;
    caselut[136].f1.size[1] = 0;
    caselut[143].f1.size[0] = 0;
    caselut[143].f1.size[1] = 0;
    caselut[150].f1.size[0] = 0;
    caselut[150].f1.size[1] = 0;
    caselut[157].f1.size[0] = 0;
    caselut[157].f1.size[1] = 0;
    caselut[164].f1.size[0] = 0;
    caselut[164].f1.size[1] = 0;
    caselut[171].f1.size[0] = 0;
    caselut[171].f1.size[1] = 0;
    caselut[178].f1.size[0] = 0;
    caselut[178].f1.size[1] = 0;
    caselut[185].f1.size[0] = 0;
    caselut[185].f1.size[1] = 0;
    caselut[192].f1.size[0] = 0;
    caselut[192].f1.size[1] = 0;
    caselut[199].f1.size[0] = 0;
    caselut[199].f1.size[1] = 0;
    caselut[206].f1.size[0] = 0;
    caselut[206].f1.size[1] = 0;
    caselut[213].f1.size[0] = 0;
    caselut[213].f1.size[1] = 0;
    caselut[220].f1.size[0] = 0;
    caselut[220].f1.size[1] = 0;
    caselut[4].f1.size[0] = 0;
    caselut[4].f1.size[1] = 0;
    caselut[11].f1.size[0] = 0;
    caselut[11].f1.size[1] = 0;
    caselut[18].f1.size[0] = 0;
    caselut[18].f1.size[1] = 0;
    caselut[25].f1.size[0] = 0;
    caselut[25].f1.size[1] = 0;
    caselut[32].f1.size[0] = 0;
    caselut[32].f1.size[1] = 0;
    caselut[39].f1.size[0] = 0;
    caselut[39].f1.size[1] = 0;
    caselut[46].f1.size[0] = 0;
    caselut[46].f1.size[1] = 0;
    caselut[53].f1.size[0] = 0;
    caselut[53].f1.size[1] = 0;
    caselut[60].f1.size[0] = 0;
    caselut[60].f1.size[1] = 0;
    caselut[67].f1.size[0] = 0;
    caselut[67].f1.size[1] = 0;
    caselut[74].f1.size[0] = 0;
    caselut[74].f1.size[1] = 0;
    caselut[81].f1.size[0] = 0;
    caselut[81].f1.size[1] = 0;
    caselut[88].f1.size[0] = 0;
    caselut[88].f1.size[1] = 0;
    caselut[95].f1.size[0] = 0;
    caselut[95].f1.size[1] = 0;
    caselut[102].f1.size[0] = 0;
    caselut[102].f1.size[1] = 0;
    caselut[109].f1.size[0] = 0;
    caselut[109].f1.size[1] = 0;
    caselut[116].f1.size[0] = 0;
    caselut[116].f1.size[1] = 0;
    caselut[123].f1.size[0] = 0;
    caselut[123].f1.size[1] = 0;
    caselut[130].f1.size[0] = 0;
    caselut[130].f1.size[1] = 0;
    caselut[137].f1.size[0] = 0;
    caselut[137].f1.size[1] = 0;
    caselut[144].f1.size[0] = 0;
    caselut[144].f1.size[1] = 0;
    caselut[151].f1.size[0] = 0;
    caselut[151].f1.size[1] = 0;
    caselut[158].f1.size[0] = 0;
    caselut[158].f1.size[1] = 0;
    caselut[165].f1.size[0] = 0;
    caselut[165].f1.size[1] = 0;
    caselut[172].f1.size[0] = 0;
    caselut[172].f1.size[1] = 0;
    caselut[179].f1.size[0] = 0;
    caselut[179].f1.size[1] = 0;
    caselut[186].f1.size[0] = 0;
    caselut[186].f1.size[1] = 0;
    caselut[193].f1.size[0] = 0;
    caselut[193].f1.size[1] = 0;
    caselut[200].f1.size[0] = 0;
    caselut[200].f1.size[1] = 0;
    caselut[207].f1.size[0] = 0;
    caselut[207].f1.size[1] = 0;
    caselut[214].f1.size[0] = 0;
    caselut[214].f1.size[1] = 0;
    caselut[221].f1.size[0] = 0;
    caselut[221].f1.size[1] = 0;
    caselut[5].f1.size[0] = 0;
    caselut[5].f1.size[1] = 0;
    caselut[12].f1.size[0] = 0;
    caselut[12].f1.size[1] = 0;
    caselut[19].f1.size[0] = 0;
    caselut[19].f1.size[1] = 0;
    caselut[26].f1.size[0] = 0;
    caselut[26].f1.size[1] = 0;
    caselut[33].f1.size[0] = 0;
    caselut[33].f1.size[1] = 0;
    caselut[40].f1.size[0] = 0;
    caselut[40].f1.size[1] = 0;
    caselut[47].f1.size[0] = 0;
    caselut[47].f1.size[1] = 0;
    caselut[54].f1.size[0] = 0;
    caselut[54].f1.size[1] = 0;
    caselut[61].f1.size[0] = 0;
    caselut[61].f1.size[1] = 0;
    caselut[68].f1.size[0] = 0;
    caselut[68].f1.size[1] = 0;
    caselut[75].f1.size[0] = 0;
    caselut[75].f1.size[1] = 0;
    caselut[82].f1.size[0] = 0;
    caselut[82].f1.size[1] = 0;
    caselut[89].f1.size[0] = 0;
    caselut[89].f1.size[1] = 0;
    caselut[96].f1.size[0] = 0;
    caselut[96].f1.size[1] = 0;
    caselut[103].f1.size[0] = 0;
    caselut[103].f1.size[1] = 0;
    caselut[110].f1.size[0] = 0;
    caselut[110].f1.size[1] = 0;
    caselut[117].f1.size[0] = 0;
    caselut[117].f1.size[1] = 0;
    caselut[124].f1.size[0] = 0;
    caselut[124].f1.size[1] = 0;
    caselut[131].f1.size[0] = 0;
    caselut[131].f1.size[1] = 0;
    caselut[138].f1.size[0] = 0;
    caselut[138].f1.size[1] = 0;
    caselut[145].f1.size[0] = 0;
    caselut[145].f1.size[1] = 0;
    caselut[152].f1.size[0] = 0;
    caselut[152].f1.size[1] = 0;
    caselut[159].f1.size[0] = 0;
    caselut[159].f1.size[1] = 0;
    caselut[166].f1.size[0] = 0;
    caselut[166].f1.size[1] = 0;
    caselut[173].f1.size[0] = 0;
    caselut[173].f1.size[1] = 0;
    caselut[180].f1.size[0] = 0;
    caselut[180].f1.size[1] = 0;
    caselut[187].f1.size[0] = 0;
    caselut[187].f1.size[1] = 0;
    caselut[194].f1.size[0] = 0;
    caselut[194].f1.size[1] = 0;
    caselut[201].f1.size[0] = 0;
    caselut[201].f1.size[1] = 0;
    caselut[208].f1.size[0] = 0;
    caselut[208].f1.size[1] = 0;
    caselut[215].f1.size[0] = 0;
    caselut[215].f1.size[1] = 0;
    caselut[222].f1.size[0] = 0;
    caselut[222].f1.size[1] = 0;
    caselut[6].f1.size[0] = 0;
    caselut[6].f1.size[1] = 0;
    caselut[13].f1.size[0] = 0;
    caselut[13].f1.size[1] = 0;
    caselut[20].f1.size[0] = 0;
    caselut[20].f1.size[1] = 0;
    caselut[27].f1.size[0] = 0;
    caselut[27].f1.size[1] = 0;
    caselut[34].f1.size[0] = 0;
    caselut[34].f1.size[1] = 0;
    caselut[41].f1.size[0] = 0;
    caselut[41].f1.size[1] = 0;
    caselut[48].f1.size[0] = 0;
    caselut[48].f1.size[1] = 0;
    caselut[55].f1.size[0] = 0;
    caselut[55].f1.size[1] = 0;
    caselut[62].f1.size[0] = 0;
    caselut[62].f1.size[1] = 0;
    caselut[69].f1.size[0] = 0;
    caselut[69].f1.size[1] = 0;
    caselut[76].f1.size[0] = 0;
    caselut[76].f1.size[1] = 0;
    caselut[83].f1.size[0] = 0;
    caselut[83].f1.size[1] = 0;
    caselut[90].f1.size[0] = 0;
    caselut[90].f1.size[1] = 0;
    caselut[97].f1.size[0] = 0;
    caselut[97].f1.size[1] = 0;
    caselut[104].f1.size[0] = 0;
    caselut[104].f1.size[1] = 0;
    caselut[111].f1.size[0] = 0;
    caselut[111].f1.size[1] = 0;
    caselut[118].f1.size[0] = 0;
    caselut[118].f1.size[1] = 0;
    caselut[125].f1.size[0] = 0;
    caselut[125].f1.size[1] = 0;
    caselut[132].f1.size[0] = 0;
    caselut[132].f1.size[1] = 0;
    caselut[139].f1.size[0] = 0;
    caselut[139].f1.size[1] = 0;
    caselut[146].f1.size[0] = 0;
    caselut[146].f1.size[1] = 0;
    caselut[153].f1.size[0] = 0;
    caselut[153].f1.size[1] = 0;
    caselut[160].f1.size[0] = 0;
    caselut[160].f1.size[1] = 0;
    caselut[167].f1.size[0] = 0;
    caselut[167].f1.size[1] = 0;
    caselut[174].f1.size[0] = 0;
    caselut[174].f1.size[1] = 0;
    caselut[181].f1.size[0] = 0;
    caselut[181].f1.size[1] = 0;
    caselut[188].f1.size[0] = 0;
    caselut[188].f1.size[1] = 0;
    caselut[195].f1.size[0] = 0;
    caselut[195].f1.size[1] = 0;
    caselut[202].f1.size[0] = 0;
    caselut[202].f1.size[1] = 0;
    caselut[209].f1.size[0] = 0;
    caselut[209].f1.size[1] = 0;
    caselut[216].f1.size[0] = 0;
    caselut[216].f1.size[1] = 0;
    caselut[223].f1.size[0] = 0;
    caselut[223].f1.size[1] = 0;
  }
  if (b_sync_V) {
    int cases_size_tmp;
    int loop_ub;
    if ((n - 1 < 0) || (n - 1 > 6)) {
      rtDynamicBoundsError(n - 1, 0, 6, &qb_emlrtBCI);
    }
    if ((cond - 1 < 0) || (cond - 1 > 31)) {
      rtDynamicBoundsError(cond - 1, 0, 31, &pb_emlrtBCI);
    }
    cases_size_tmp = (n + 7 * (cond - 1)) - 1;
    cases_size[0] = caselut[cases_size_tmp].f1.size[0];
    if ((n - 1 < 0) || (n - 1 > 6)) {
      rtDynamicBoundsError(n - 1, 0, 6, &qb_emlrtBCI);
    }
    if ((cond - 1 < 0) || (cond - 1 > 31)) {
      rtDynamicBoundsError(cond - 1, 0, 31, &pb_emlrtBCI);
    }
    cases_size[1] = caselut[cases_size_tmp].f1.size[1];
    if ((n - 1 < 0) || (n - 1 > 6)) {
      rtDynamicBoundsError(n - 1, 0, 6, &qb_emlrtBCI);
    }
    if ((cond - 1 < 0) || (cond - 1 > 31)) {
      rtDynamicBoundsError(cond - 1, 0, 31, &pb_emlrtBCI);
    }
    if ((n - 1 < 0) || (n - 1 > 6)) {
      rtDynamicBoundsError(n - 1, 0, 6, &qb_emlrtBCI);
    }
    if ((cond - 1 < 0) || (cond - 1 > 31)) {
      rtDynamicBoundsError(cond - 1, 0, 31, &pb_emlrtBCI);
    }
    loop_ub =
        caselut[cases_size_tmp].f1.size[0] * caselut[cases_size_tmp].f1.size[1];
    for (i = 0; i < loop_ub; i++) {
      if ((n - 1 < 0) || (n - 1 > 6)) {
        rtDynamicBoundsError(n - 1, 0, 6, &ob_emlrtBCI);
      }
      if ((cond - 1 < 0) || (cond - 1 > 31)) {
        rtDynamicBoundsError(cond - 1, 0, 31, &nb_emlrtBCI);
      }
      cases_data[i] = caselut[cases_size_tmp].f1.data[i];
    }
  } else {
    cases_size[0] = 0;
    cases_size[1] = 0;
  }
}

void select_cases_TV_init()
{
  b_caselut_not_empty = false;
}

// End of code generation (select_cases_TV.cpp)
