%module "Math::GSL::SF"
%include "typemaps.i"

%apply double *OUTPUT { double * sn, double * cn, double * dn, double * sgn };

%{
    #include "gsl/gsl_mode.h"
    #include "gsl/gsl_sf.h"
    #include "gsl/gsl_sf_airy.h"
    #include "gsl/gsl_sf_bessel.h"
    #include "gsl/gsl_sf_clausen.h"
    #include "gsl/gsl_sf_coulomb.h"
    #include "gsl/gsl_sf_coupling.h"
    #include "gsl/gsl_sf_dawson.h"
    #include "gsl/gsl_sf_debye.h"
    #include "gsl/gsl_sf_dilog.h"
    #include "gsl/gsl_sf_elementary.h"
    #include "gsl/gsl_sf_ellint.h"
    #include "gsl/gsl_sf_elljac.h"
    #include "gsl/gsl_sf_erf.h"
    #include "gsl/gsl_sf_exp.h"
    #include "gsl/gsl_sf_expint.h"
    #include "gsl/gsl_sf_fermi_dirac.h"
    #include "gsl/gsl_sf_gamma.h"
    #include "gsl/gsl_sf_gegenbauer.h"
    #include "gsl/gsl_sf_hyperg.h"
    #include "gsl/gsl_sf_laguerre.h"
    #include "gsl/gsl_sf_lambert.h"
    #include "gsl/gsl_sf_legendre.h"
    #include "gsl/gsl_sf_log.h"
    #include "gsl/gsl_sf_mathieu.h"
    #include "gsl/gsl_sf_pow_int.h"
    #include "gsl/gsl_sf_psi.h"
    #include "gsl/gsl_sf_result.h"
    #include "gsl/gsl_sf_synchrotron.h"
    #include "gsl/gsl_sf_transport.h"
    #include "gsl/gsl_sf_trig.h"
    #include "gsl/gsl_sf_zeta.h"
%}

%include "gsl/gsl_mode.h"
%include "gsl/gsl_sf.h"
%include "gsl/gsl_sf_airy.h"
%include "gsl/gsl_sf_bessel.h"
%include "gsl/gsl_sf_clausen.h"
%include "gsl/gsl_sf_coulomb.h"
%include "gsl/gsl_sf_coupling.h"
%include "gsl/gsl_sf_dawson.h"
%include "gsl/gsl_sf_debye.h"
%include "gsl/gsl_sf_dilog.h"
%include "gsl/gsl_sf_elementary.h"
%include "gsl/gsl_sf_ellint.h"
%include "gsl/gsl_sf_elljac.h"
%include "gsl/gsl_sf_erf.h"
%include "gsl/gsl_sf_exp.h"
%include "gsl/gsl_sf_expint.h"
%include "gsl/gsl_sf_fermi_dirac.h"
%include "gsl/gsl_sf_gamma.h"
%include "gsl/gsl_sf_gegenbauer.h"
%include "gsl/gsl_sf_hyperg.h"
%include "gsl/gsl_sf_laguerre.h"
%include "gsl/gsl_sf_lambert.h"
%include "gsl/gsl_sf_legendre.h"
%include "gsl/gsl_sf_log.h"
%include "gsl/gsl_sf_mathieu.h"
%include "gsl/gsl_sf_pow_int.h"
%include "gsl/gsl_sf_psi.h"
%include "gsl/gsl_sf_result.h"
%include "gsl/gsl_sf_synchrotron.h"
%include "gsl/gsl_sf_transport.h"
%include "gsl/gsl_sf_trig.h"
%include "gsl/gsl_sf_zeta.h"


%perlcode %{

@EXPORT_airy = qw/
               gsl_sf_airy_Ai_e 
               gsl_sf_airy_Ai 
               gsl_sf_airy_Bi_e 
               gsl_sf_airy_Bi 
               gsl_sf_airy_Ai_scaled_e 
               gsl_sf_airy_Ai_scaled 
               gsl_sf_airy_Bi_scaled_e 
               gsl_sf_airy_Bi_scaled 
               gsl_sf_airy_Ai_deriv_e 
               gsl_sf_airy_Ai_deriv 
               gsl_sf_airy_Bi_deriv_e 
               gsl_sf_airy_Bi_deriv 
               gsl_sf_airy_Ai_deriv_scaled_e 
               gsl_sf_airy_Ai_deriv_scaled 
               gsl_sf_airy_Bi_deriv_scaled_e 
               gsl_sf_airy_Bi_deriv_scaled 
               gsl_sf_airy_zero_Ai_e 
               gsl_sf_airy_zero_Ai 
               gsl_sf_airy_zero_Bi_e 
               gsl_sf_airy_zero_Bi 
               gsl_sf_airy_zero_Ai_deriv_e 
               gsl_sf_airy_zero_Ai_deriv 
               gsl_sf_airy_zero_Bi_deriv_e 
               gsl_sf_airy_zero_Bi_deriv 
               /;
@EXPORT_bessel =qw/
               gsl_sf_bessel_J0_e 
               gsl_sf_bessel_J0 
               gsl_sf_bessel_J1_e 
               gsl_sf_bessel_J1 
               gsl_sf_bessel_Jn_e 
               gsl_sf_bessel_Jn 
               gsl_sf_bessel_Jn_array 
               gsl_sf_bessel_Y0_e 
               gsl_sf_bessel_Y0 
               gsl_sf_bessel_Y1_e 
               gsl_sf_bessel_Y1 
               gsl_sf_bessel_Yn_e 
               gsl_sf_bessel_Yn 
               gsl_sf_bessel_Yn_array 
               gsl_sf_bessel_I0_e 
               gsl_sf_bessel_I0 
               gsl_sf_bessel_I1_e 
               gsl_sf_bessel_I1 
               gsl_sf_bessel_In_e 
               gsl_sf_bessel_In 
               gsl_sf_bessel_In_array 
               gsl_sf_bessel_I0_scaled_e 
               gsl_sf_bessel_I0_scaled 
               gsl_sf_bessel_I1_scaled_e 
               gsl_sf_bessel_I1_scaled 
               gsl_sf_bessel_In_scaled_e 
               gsl_sf_bessel_In_scaled 
               gsl_sf_bessel_In_scaled_array 
               gsl_sf_bessel_K0_e 
               gsl_sf_bessel_K0 
               gsl_sf_bessel_K1_e 
               gsl_sf_bessel_K1 
               gsl_sf_bessel_Kn_e 
               gsl_sf_bessel_Kn 
               gsl_sf_bessel_Kn_array 
               gsl_sf_bessel_K0_scaled_e 
               gsl_sf_bessel_K0_scaled 
               gsl_sf_bessel_K1_scaled_e 
               gsl_sf_bessel_K1_scaled 
               gsl_sf_bessel_Kn_scaled_e 
               gsl_sf_bessel_Kn_scaled 
               gsl_sf_bessel_Kn_scaled_array 
               gsl_sf_bessel_j0_e 
               gsl_sf_bessel_j0 
               gsl_sf_bessel_j1_e 
               gsl_sf_bessel_j1 
               gsl_sf_bessel_j2_e 
               gsl_sf_bessel_j2 
               gsl_sf_bessel_jl_e 
               gsl_sf_bessel_jl 
               gsl_sf_bessel_jl_array 
               gsl_sf_bessel_jl_steed_array 
               gsl_sf_bessel_y0_e 
               gsl_sf_bessel_y0 
               gsl_sf_bessel_y1_e 
               gsl_sf_bessel_y1 
               gsl_sf_bessel_y2_e 
               gsl_sf_bessel_y2 
               gsl_sf_bessel_yl_e 
               gsl_sf_bessel_yl 
               gsl_sf_bessel_yl_array 
               gsl_sf_bessel_i0_scaled_e 
               gsl_sf_bessel_i0_scaled 
               gsl_sf_bessel_i1_scaled_e 
               gsl_sf_bessel_i1_scaled 
               gsl_sf_bessel_i2_scaled_e 
               gsl_sf_bessel_i2_scaled 
               gsl_sf_bessel_il_scaled_e 
               gsl_sf_bessel_il_scaled 
               gsl_sf_bessel_il_scaled_array 
               gsl_sf_bessel_k0_scaled_e 
               gsl_sf_bessel_k0_scaled 
               gsl_sf_bessel_k1_scaled_e 
               gsl_sf_bessel_k1_scaled 
               gsl_sf_bessel_k2_scaled_e 
               gsl_sf_bessel_k2_scaled 
               gsl_sf_bessel_kl_scaled_e 
               gsl_sf_bessel_kl_scaled 
               gsl_sf_bessel_kl_scaled_array 
               gsl_sf_bessel_Jnu_e 
               gsl_sf_bessel_Jnu 
               gsl_sf_bessel_Ynu_e 
               gsl_sf_bessel_Ynu 
               gsl_sf_bessel_sequence_Jnu_e 
               gsl_sf_bessel_Inu_scaled_e 
               gsl_sf_bessel_Inu_scaled 
               gsl_sf_bessel_Inu_e 
               gsl_sf_bessel_Inu 
               gsl_sf_bessel_Knu_scaled_e 
               gsl_sf_bessel_Knu_scaled 
               gsl_sf_bessel_Knu_e 
               gsl_sf_bessel_Knu 
               gsl_sf_bessel_lnKnu_e 
               gsl_sf_bessel_lnKnu 
               gsl_sf_bessel_zero_J0_e 
               gsl_sf_bessel_zero_J0 
               gsl_sf_bessel_zero_J1_e 
               gsl_sf_bessel_zero_J1 
               gsl_sf_bessel_zero_Jnu_e 
               gsl_sf_bessel_zero_Jnu 
               /;
@EXPORT_clausen = qw/
               gsl_sf_clausen_e 
               gsl_sf_clausen 
               /;
@EXPORT_hydrogenic =  qw/
               gsl_sf_hydrogenicR_1_e 
               gsl_sf_hydrogenicR_1 
               gsl_sf_hydrogenicR_e 
               gsl_sf_hydrogenicR 
               /;
@EXPORT_coulumb = qw/
               gsl_sf_coulomb_wave_FG_e 
               gsl_sf_coulomb_wave_F_array 
               gsl_sf_coulomb_wave_FG_array 
               gsl_sf_coulomb_wave_FGp_array 
               gsl_sf_coulomb_wave_sphF_array 
               gsl_sf_coulomb_CL_e 
               gsl_sf_coulomb_CL_array 
               /;
@EXPORT_coupling = qw/
               gsl_sf_coupling_3j_e 
               gsl_sf_coupling_3j 
               gsl_sf_coupling_6j_e 
               gsl_sf_coupling_6j 
               gsl_sf_coupling_RacahW_e 
               gsl_sf_coupling_RacahW 
               gsl_sf_coupling_9j_e 
               gsl_sf_coupling_9j 
               gsl_sf_coupling_6j_INCORRECT_e 
               gsl_sf_coupling_6j_INCORRECT  
               /;
@EXPORT_dawson = qw/
               gsl_sf_dawson_e 
               gsl_sf_dawson 
               /;
@EXPORT_debye = qw/
               gsl_sf_debye_1_e 
               gsl_sf_debye_1 
               gsl_sf_debye_2_e 
               gsl_sf_debye_2 
               gsl_sf_debye_3_e 
               gsl_sf_debye_3 
               gsl_sf_debye_4_e 
               gsl_sf_debye_4 
               gsl_sf_debye_5_e 
               gsl_sf_debye_5 
               gsl_sf_debye_6_e 
               gsl_sf_debye_6 
               /;
@EXPORT_dilog = qw/
               gsl_sf_dilog_e 
               gsl_sf_dilog 
               gsl_sf_complex_dilog_xy_e 
               gsl_sf_complex_dilog_e 
               /;

@EXPORT_misc = qw/
               gsl_sf_complex_spence_xy_e 
               gsl_sf_multiply_e 
               gsl_sf_multiply 
               gsl_sf_multiply_err_e 
               /;
@EXPORT_elliptic = qw/
               gsl_sf_ellint_Kcomp_e 
               gsl_sf_ellint_Kcomp 
               gsl_sf_ellint_Ecomp_e 
               gsl_sf_ellint_Ecomp 
               gsl_sf_ellint_Pcomp_e 
               gsl_sf_ellint_Pcomp 
               gsl_sf_ellint_Dcomp_e 
               gsl_sf_ellint_Dcomp 
               gsl_sf_ellint_F_e 
               gsl_sf_ellint_F 
               gsl_sf_ellint_E_e 
               gsl_sf_ellint_E 
               gsl_sf_ellint_P_e 
               gsl_sf_ellint_P 
               gsl_sf_ellint_D_e 
               gsl_sf_ellint_D 
               gsl_sf_ellint_RC_e 
               gsl_sf_ellint_RC 
               gsl_sf_ellint_RD_e 
               gsl_sf_ellint_RD 
               gsl_sf_ellint_RF_e 
               gsl_sf_ellint_RF 
               gsl_sf_ellint_RJ_e 
               gsl_sf_ellint_RJ 
               gsl_sf_elljac_e 
               /;
@EXPORT_error = qw/
               gsl_sf_erfc_e 
               gsl_sf_erfc 
               gsl_sf_log_erfc_e 
               gsl_sf_log_erfc 
               gsl_sf_erf_e 
               gsl_sf_erf 
               gsl_sf_erf_Z_e 
               gsl_sf_erf_Q_e 
               gsl_sf_erf_Z 
               gsl_sf_erf_Q 
               gsl_sf_hazard_e 
               gsl_sf_hazard 
               /;
push @EXPORT_misc, qw/
               gsl_sf_exp_e 
               gsl_sf_exp 
               gsl_sf_exp_e10_e 
               gsl_sf_exp_mult_e 
               gsl_sf_exp_mult 
               gsl_sf_exp_mult_e10_e 
               gsl_sf_expm1_e 
               gsl_sf_expm1 
               gsl_sf_exprel_e 
               gsl_sf_exprel 
               gsl_sf_exprel_2_e 
               gsl_sf_exprel_2 
               gsl_sf_exprel_n_e 
               gsl_sf_exprel_n 
               gsl_sf_exp_err_e 
               gsl_sf_exp_err_e10_e 
               gsl_sf_exp_mult_err_e 
               gsl_sf_exp_mult_err_e10_e 
               gsl_sf_expint_E1_e 
               gsl_sf_expint_E1 
               gsl_sf_expint_E2_e 
               gsl_sf_expint_E2 
               gsl_sf_expint_En_e 
               gsl_sf_expint_En 
               gsl_sf_expint_E1_scaled_e 
               gsl_sf_expint_E1_scaled 
               gsl_sf_expint_E2_scaled_e 
               gsl_sf_expint_E2_scaled 
               gsl_sf_expint_En_scaled_e 
               gsl_sf_expint_En_scaled 
               gsl_sf_expint_Ei_e 
               gsl_sf_expint_Ei 
               gsl_sf_expint_Ei_scaled_e 
               gsl_sf_expint_Ei_scaled 
               gsl_sf_Shi_e 
               gsl_sf_Shi 
               gsl_sf_Chi_e 
               gsl_sf_Chi 
               gsl_sf_expint_3_e 
               gsl_sf_expint_3 
               gsl_sf_Si_e 
               gsl_sf_Si 
               gsl_sf_Ci_e 
               gsl_sf_Ci 
               /;
@EXPORT_fermi_dirac = qw/
               gsl_sf_fermi_dirac_m1_e 
               gsl_sf_fermi_dirac_m1 
               gsl_sf_fermi_dirac_0_e 
               gsl_sf_fermi_dirac_0 
               gsl_sf_fermi_dirac_1_e 
               gsl_sf_fermi_dirac_1 
               gsl_sf_fermi_dirac_2_e 
               gsl_sf_fermi_dirac_2 
               gsl_sf_fermi_dirac_int_e 
               gsl_sf_fermi_dirac_int 
               gsl_sf_fermi_dirac_mhalf_e 
               gsl_sf_fermi_dirac_mhalf 
               gsl_sf_fermi_dirac_half_e 
               gsl_sf_fermi_dirac_half 
               gsl_sf_fermi_dirac_3half_e 
               gsl_sf_fermi_dirac_3half 
               gsl_sf_fermi_dirac_inc_0_e 
               gsl_sf_fermi_dirac_inc_0 
               /;
@EXPORT_legendre = qw/
               gsl_sf_legendre_Pl_e 
               gsl_sf_legendre_Pl 
               gsl_sf_legendre_Pl_array 
               gsl_sf_legendre_Pl_deriv_array 
               gsl_sf_legendre_P1_e 
               gsl_sf_legendre_P2_e 
               gsl_sf_legendre_P3_e 
               gsl_sf_legendre_P1 
               gsl_sf_legendre_P2 
               gsl_sf_legendre_P3 
               gsl_sf_legendre_Q0_e 
               gsl_sf_legendre_Q0 
               gsl_sf_legendre_Q1_e 
               gsl_sf_legendre_Q1 
               gsl_sf_legendre_Ql_e 
               gsl_sf_legendre_Ql 
               gsl_sf_legendre_Plm_e 
               gsl_sf_legendre_Plm 
               gsl_sf_legendre_Plm_array 
               gsl_sf_legendre_Plm_deriv_array 
               gsl_sf_legendre_sphPlm_e 
               gsl_sf_legendre_sphPlm 
               gsl_sf_legendre_sphPlm_array 
               gsl_sf_legendre_sphPlm_deriv_array 
               gsl_sf_legendre_array_size 
               gsl_sf_legendre_H3d_0_e 
               gsl_sf_legendre_H3d_0 
               gsl_sf_legendre_H3d_1_e 
               gsl_sf_legendre_H3d_1 
               gsl_sf_legendre_H3d_e 
               gsl_sf_legendre_H3d 
               gsl_sf_legendre_H3d_array 
               /;
@EXPORT_gamma = qw/
               gsl_sf_lngamma_e 
               gsl_sf_lngamma 
               gsl_sf_lngamma_sgn_e 
               gsl_sf_gamma_e 
               gsl_sf_gamma 
               gsl_sf_gammastar_e 
               gsl_sf_gammastar 
               gsl_sf_gammainv_e 
               gsl_sf_gammainv 
               gsl_sf_lngamma_complex_e 
               gsl_sf_gamma_inc_Q_e 
               gsl_sf_gamma_inc_Q 
               gsl_sf_gamma_inc_P_e 
               gsl_sf_gamma_inc_P 
               gsl_sf_gamma_inc_e 
               gsl_sf_gamma_inc 
               /;
@EXPORT_factorial = qw/
               gsl_sf_fact_e 
               gsl_sf_fact 
               gsl_sf_doublefact_e 
               gsl_sf_doublefact 
               gsl_sf_lnfact_e 
               gsl_sf_lnfact 
               gsl_sf_lndoublefact_e 
               gsl_sf_lndoublefact 
               /;
@EXPORT_hypergeometric = qw/
               gsl_sf_hyperg_0F1_e 
               gsl_sf_hyperg_0F1 
               gsl_sf_hyperg_1F1_int_e 
               gsl_sf_hyperg_1F1_int 
               gsl_sf_hyperg_1F1_e 
               gsl_sf_hyperg_1F1 
               gsl_sf_hyperg_U_int_e 
               gsl_sf_hyperg_U_int 
               gsl_sf_hyperg_U_int_e10_e 
               gsl_sf_hyperg_U_e 
               gsl_sf_hyperg_U 
               gsl_sf_hyperg_U_e10_e 
               gsl_sf_hyperg_2F1_e 
               gsl_sf_hyperg_2F1 
               gsl_sf_hyperg_2F1_conj_e 
               gsl_sf_hyperg_2F1_conj 
               gsl_sf_hyperg_2F1_renorm_e 
               gsl_sf_hyperg_2F1_renorm 
               gsl_sf_hyperg_2F1_conj_renorm_e 
               gsl_sf_hyperg_2F1_conj_renorm 
               gsl_sf_hyperg_2F0_e 
               gsl_sf_hyperg_2F0 
               /;
@EXPORT_laguerre = qw/
               gsl_sf_laguerre_1_e 
               gsl_sf_laguerre_2_e 
               gsl_sf_laguerre_3_e 
               gsl_sf_laguerre_1 
               gsl_sf_laguerre_2 
               gsl_sf_laguerre_3 
               gsl_sf_laguerre_n_e 
               gsl_sf_laguerre_n 
               /;
push @EXPORT_misc, qw/
               gsl_sf_taylorcoeff_e 
               gsl_sf_taylorcoeff 
               gsl_sf_lnchoose_e 
               gsl_sf_lnchoose 
               gsl_sf_choose_e 
               gsl_sf_choose 
               gsl_sf_lnpoch_e 
               gsl_sf_lnpoch 
               gsl_sf_lnpoch_sgn_e 
               gsl_sf_poch_e 
               gsl_sf_poch 
               gsl_sf_pochrel_e 
               gsl_sf_pochrel 
               gsl_sf_lnbeta_e 
               gsl_sf_lnbeta 
               gsl_sf_lnbeta_sgn_e 
               gsl_sf_beta_e 
               gsl_sf_beta 
               gsl_sf_beta_inc_e 
               gsl_sf_beta_inc 
               gsl_sf_gegenpoly_1_e 
               gsl_sf_gegenpoly_2_e 
               gsl_sf_gegenpoly_3_e 
               gsl_sf_gegenpoly_1 
               gsl_sf_gegenpoly_2 
               gsl_sf_gegenpoly_3 
               gsl_sf_gegenpoly_n_e 
               gsl_sf_gegenpoly_n 
               gsl_sf_gegenpoly_array 
               gsl_sf_lambert_W0_e 
               gsl_sf_lambert_W0 
               gsl_sf_lambert_Wm1_e 
               gsl_sf_lambert_Wm1 
               gsl_sf_conicalP_half_e 
               gsl_sf_conicalP_half 
               gsl_sf_conicalP_mhalf_e 
               gsl_sf_conicalP_mhalf 
               gsl_sf_conicalP_0_e 
               gsl_sf_conicalP_0 
               gsl_sf_conicalP_1_e 
               gsl_sf_conicalP_1 
               gsl_sf_conicalP_sph_reg_e 
               gsl_sf_conicalP_sph_reg 
               gsl_sf_conicalP_cyl_reg_e 
               gsl_sf_conicalP_cyl_reg 
               gsl_sf_log_e 
               gsl_sf_log 
               gsl_sf_log_abs_e 
               gsl_sf_log_abs 
               gsl_sf_complex_log_e 
               gsl_sf_log_1plusx_e 
               gsl_sf_log_1plusx 
               gsl_sf_log_1plusx_mx_e 
               gsl_sf_log_1plusx_mx 
               gsl_sf_pow_int_e 
               gsl_sf_pow_int 
               gsl_sf_psi_int_e 
               gsl_sf_psi_int 
               gsl_sf_psi_e 
               gsl_sf_psi 
               gsl_sf_psi_1piy_e 
               gsl_sf_psi_1piy 
               gsl_sf_complex_psi_e 
               gsl_sf_psi_1_int_e 
               gsl_sf_psi_1_int 
               gsl_sf_psi_1_e 
               gsl_sf_psi_1 
               gsl_sf_psi_n_e 
               gsl_sf_psi_n 
               gsl_sf_result_smash_e 
               gsl_sf_synchrotron_1_e 
               gsl_sf_synchrotron_1 
               gsl_sf_synchrotron_2_e 
               gsl_sf_synchrotron_2 
               /;
@EXPORT_mathieu = qw/
               gsl_sf_mathieu_a_array 
               gsl_sf_mathieu_b_array 
               gsl_sf_mathieu_a 
               gsl_sf_mathieu_b 
               gsl_sf_mathieu_a_coeff 
               gsl_sf_mathieu_b_coeff 
               gsl_sf_mathieu_alloc 
               gsl_sf_mathieu_free 
               gsl_sf_mathieu_ce 
               gsl_sf_mathieu_se 
               gsl_sf_mathieu_ce_array 
               gsl_sf_mathieu_se_array 
               gsl_sf_mathieu_Mc 
               gsl_sf_mathieu_Ms 
               gsl_sf_mathieu_Mc_array 
               gsl_sf_mathieu_Ms_array 
               /;
@EXPORT_transport = qw/
               gsl_sf_transport_2_e 
               gsl_sf_transport_2 
               gsl_sf_transport_3_e 
               gsl_sf_transport_3 
               gsl_sf_transport_4_e 
               gsl_sf_transport_4 
               gsl_sf_transport_5_e 
               gsl_sf_transport_5 
               /;
@EXPORT_trig = qw/
               gsl_sf_sin_e 
               gsl_sf_sin 
               gsl_sf_sin_pi_x_e
               gsl_sf_cos_e 
               gsl_sf_cos_pi_x_e
               gsl_sf_cos 
               gsl_sf_hypot_e 
               gsl_sf_hypot 
               gsl_sf_complex_sin_e 
               gsl_sf_complex_cos_e 
               gsl_sf_complex_logsin_e 
               gsl_sf_sinc_e 
               gsl_sf_sinc 
               gsl_sf_lnsinh_e 
               gsl_sf_lnsinh 
               gsl_sf_lncosh_e 
               gsl_sf_lncosh 
               gsl_sf_polar_to_rect 
               gsl_sf_rect_to_polar 
               gsl_sf_sin_err_e 
               gsl_sf_cos_err_e 
               gsl_sf_angle_restrict_symm_e 
               gsl_sf_angle_restrict_symm 
               gsl_sf_angle_restrict_pos_e 
               gsl_sf_angle_restrict_pos 
               gsl_sf_angle_restrict_symm_err_e 
               gsl_sf_angle_restrict_pos_err_e 
               gsl_sf_atanint_e 
               gsl_sf_atanint 
               /;
@EXPORT_zeta = qw/
               gsl_sf_zeta_int_e 
               gsl_sf_zeta_int 
               gsl_sf_zeta_e 
               gsl_sf_zeta 
               gsl_sf_zetam1_e 
               gsl_sf_zetam1 
               gsl_sf_zetam1_int_e 
               gsl_sf_zetam1_int 
               gsl_sf_hzeta_e 
               gsl_sf_hzeta 
               /;
@EXPORT_eta = qw/
               gsl_sf_eta_int_e 
               gsl_sf_eta_int 
               gsl_sf_eta_e 
               gsl_sf_eta 
               /;
@EXPORT_vars = qw/
               GSL_SF_GAMMA_XMAX 
               GSL_SF_FACT_NMAX 
               GSL_SF_DOUBLEFACT_NMAX 
               GSL_SF_MATHIEU_COEFF 
               /;

@EXPORT_OK = ( 
               @EXPORT_airy, @EXPORT_bessel, @EXPORT_clausen, @EXPORT_hydrogenic,
               @EXPORT_coulumb, @EXPORT_coupling, @EXPORT_dawson, @EXPORT_debye,
               @EXPORT_dilog, @EXPORT_misc, @EXPORT_elliptic, @EXPORT_error, @EXPORT_legendre,
               @EXPORT_gamma, @EXPORT_transport, @EXPORT_trig, @EXPORT_zeta, @EXPORT_eta,
               @EXPORT_vars
             );

%EXPORT_TAGS = ( 
                 all            => [ @EXPORT_OK ],
                 airy           => [ @EXPORT_airy ], 
                 bessel         => [ @EXPORT_bessel ], 
                 clausen        => [ @EXPORT_clausen ], 
                 coulumb        => [ @EXPORT_coulumb ], 
                 coupling       => [ @EXPORT_coupling ], 
                 dawson         => [ @EXPORT_dawson ], 
                 debye          => [ @EXPORT_debye ], 
                 dilog          => [ @EXPORT_dilog ], 
                 eta            => [ @EXPORT_eta ], 
                 elliptic       => [ @EXPORT_elliptic ], 
                 error          => [ @EXPORT_error ], 
                 factorial      => [ @EXPORT_factorial ],
                 gamma          => [ @EXPORT_gamma ], 
                 hydrogenic     => [ @EXPORT_hydrogenic ], 
                 hypergeometric => [ @EXPORT_hypergeometric ],
                 laguerre       => [ @EXPORT_laguerre ],
                 legendre       => [ @EXPORT_legendre ], 
                 mathieu        => [ @EXPORT_mathieu ], 
                 misc           => [ @EXPORT_misc ], 
                 transport      => [ @EXPORT_transport ], 
                 trig           => [ @EXPORT_trig ], 
                 vars           => [ @EXPORT_vars ],
                 zeta           => [ @EXPORT_zeta ],
                );

__END__

=head1 NAME

Math::GSL::SF - Special Functions

=head1 SYNOPSIS

    use Math::GSL::SF qw /:all/;

=head1 DESCRIPTION

This module contains a data structure named gsl_sf_result. To create a new one use

    $r = Math::GSL::SF::gsl_sf_result_struct->new;

You can then access the elements of the structure in this way :

    my $val   = $r->{val};

    my $error = $r->{err};

Here is a list of all included functions:

=over 

=item C<gsl_sf_airy_Ai_e($x, $mode)>

=item C<gsl_sf_airy_Ai($x, $mode, $result)> 

- These routines compute the Airy function Ai($x) with an accuracy specified by $mode. $mode should be $GSL_PREC_DOUBLE, $GSL_PREC_SINGLE or $GSL_PREC_APPROX. $result is a gsl_sf_result structure.

=back 

=over

=item C<gsl_sf_airy_Bi_e($x, $mode, $result)>

=item C<gsl_sf_airy_Bi($x, $mode)>

- These routines compute the Airy function Bi($x) with an accuracy specified by $mode. $mode should be $GSL_PREC_DOUBLE, $GSL_PREC_SINGLE or $GSL_PREC_APPROX. $result is a gsl_sf_result structure.

=back

=over

=item C<gsl_sf_airy_Ai_scaled_e($x, $mode, $result)>

=item C<gsl_sf_airy_Ai_scaled($x, $mode)> 

- These routines compute a scaled version of the Airy function S_A($x) Ai($x). For $x>0 the scaling factor S_A($x) is \exp(+(2/3) $x**(3/2)), and is 1 for $x<0. $result is a gsl_sf_result structure. 

=back

=over

=item C<gsl_sf_airy_Bi_scaled_e($x, $mode, $result)>

=item C<gsl_sf_airy_Bi_scaled($x, $mode)>

- These routines compute a scaled version of the Airy function S_B($x) Bi($x). For $x>0 the scaling factor S_B($x) is exp(-(2/3) $x**(3/2)), and is 1 for $x<0. $result is a gsl_sf_result structure.

=back

=over 

=item C<gsl_sf_airy_Ai_deriv_e($x, $mode, $result)>

=item C<gsl_sf_airy_Ai_deriv($x, $mode)>

- These routines compute the Airy function derivative Ai'($x) with an accuracy specified by $mode. $result is a gsl_sf_result structure.

=back

=over

=item C<gsl_sf_airy_Bi_deriv_e($x, $mode, $result)>

=item C<gsl_sf_airy_Bi_deriv($x, $mode)>

-These routines compute the Airy function derivative Bi'($x) with an accuracy specified by $mode. $result is a gsl_sf_result structure.

=back

=over

=item C<gsl_sf_airy_Ai_deriv_scaled_e($x, $mode, $result)>

=item C<gsl_sf_airy_Ai_deriv_scaled($x, $mode)>

-These routines compute the scaled Airy function derivative S_A(x) Ai'(x). For x>0 the scaling factor S_A(x) is \exp(+(2/3) x^(3/2)), and is 1 for x<0. $result is a gsl_sf_result structure.

=back

=over

=item C<gsl_sf_airy_Bi_deriv_scaled_e($x, $mode, $result)>

=item C<gsl_sf_airy_Bi_deriv_scaled($x, $mode)>

-These routines compute the scaled Airy function derivative S_B(x) Bi'(x). For x>0 the scaling factor S_B(x) is exp(-(2/3) x^(3/2)), and is 1 for x<0. $result is a gsl_sf_result structure.

=back

=over

=item C<gsl_sf_airy_zero_Ai_e($s, $result)>

=item C<gsl_sf_airy_zero_Ai($s)>

-These routines compute the location of the s-th zero of the Airy function Ai($x). $result is a gsl_sf_result structure.

=back

=over

=item C<gsl_sf_airy_zero_Bi_e($s, $result)>

=item C<gsl_sf_airy_zero_Bi($s)>

-These routines compute the location of the s-th zero of the Airy function Bi($x). $result is a gsl_sf_result structure.

=back

=over

=item C<gsl_sf_airy_zero_Ai_deriv_e($s, $result)>

=item C<gsl_sf_airy_zero_Ai_deriv($s)>

-These routines compute the location of the s-th zero of the Airy function derivative Ai'(x). $result is a gsl_sf_result structure.

=back

=over

=item C<gsl_sf_airy_zero_Bi_deriv_e($s, $result)>

=item C<gsl_sf_airy_zero_Bi_deriv($s)>

- These routines compute the location of the s-th zero of the Airy function derivative Bi'(x). $result is a gsl_sf_result structure.

=back

=over

=item C<gsl_sf_bessel_J0_e($x, $result)>

=item C<gsl_sf_bessel_J0($x)>

-These routines compute the regular cylindrical Bessel function of zeroth order, J_0($x). $result is a gsl_sf_result structure.

=back

=over

=item C<gsl_sf_bessel_J1_e($x, $result)>

=item C<gsl_sf_bessel_J1($x)>

- These routines compute the regular cylindrical Bessel function of first order, J_1($x). $result is a gsl_sf_result structure.

=back

=over

=item C<gsl_sf_bessel_Jn_e($n, $x, $result)>

=item C<gsl_sf_bessel_Jn($n, $x)>

-These routines compute the regular cylindrical Bessel function of order n, J_n($x).

=back

=over

=item C<gsl_sf_bessel_Jn_array($nmin, $nmax, $x, $result_array)> - This routine computes the values of the regular cylindrical Bessel functions J_n($x) for n from $nmin to $nmax inclusive, storing the results in the array $result_array. The values are computed using recurrence relations for efficiency, and therefore may differ slightly from the exact values.

=back

=over

=item C<gsl_sf_bessel_Y0_e($x, $result)>

=item C<gsl_sf_bessel_Y0($x)>

- These routines compute the irregular spherical Bessel function of zeroth order, y_0(x) = -\cos(x)/x.

=back

=over

=item C<gsl_sf_bessel_Y1_e($x, $result)>

=item C<gsl_sf_bessel_Y1($x)>

-These routines compute the irregular spherical Bessel function of first order, y_1(x) = -(\cos(x)/x + \sin(x))/x. 

=back

=over

=item C<gsl_sf_bessel_Yn_e>($n, $x, $result)

=item C<gsl_sf_bessel_Yn($n, $x)>

-These routines compute the irregular cylindrical Bessel function of order $n, Y_n(x), for x>0. 

=back

=over

=item C<gsl_sf_bessel_Yn_array>

-

=back

=over

=item C<gsl_sf_bessel_I0_e($x, $result)>

=item C<gsl_sf_bessel_I0($x)>

-These routines compute the regular modified cylindrical Bessel function of zeroth order, I_0(x). 

=back

=over

=item C<gsl_sf_bessel_I1_e($x, $result)>  

=item C<gsl_sf_bessel_I1($x)>

-These routines compute the regular modified cylindrical Bessel function of first order, I_1(x). 

=back

=over

=item C<gsl_sf_bessel_In_e($n, $x, $result)>

=item C<gsl_sf_bessel_In($n, $x)>

-These routines compute the regular modified cylindrical Bessel function of order $n, I_n(x). 

=back

=over

=item C<gsl_sf_bessel_In_array>

-

=back

=over

=item C<gsl_sf_bessel_I0_scaled_e($x, $result)>

=item C<gsl_sf_bessel_I0_scaled($x)>

-These routines compute the scaled regular modified cylindrical Bessel function of zeroth order \exp(-|x|) I_0(x). 

=back

=over

=item C<gsl_sf_bessel_I1_scaled_e($x, $result)>

=item C<gsl_sf_bessel_I1_scaled($x)>

-These routines compute the scaled regular modified cylindrical Bessel function of first order \exp(-|x|) I_1(x). 

=back

=over

=item C<gsl_sf_bessel_In_scaled_e($n, $x, $result)>

=item C<gsl_sf_bessel_In_scaled($n, $x)>

-These routines compute the scaled regular modified cylindrical Bessel function of order $n, \exp(-|x|) I_n(x) 

=back

=over

=item C<gsl_sf_bessel_In_scaled_array>

-

=back

=over

=item C<gsl_sf_bessel_K0_e($x, $result)>

=item C<gsl_sf_bessel_K0($x)>

-These routines compute the irregular modified cylindrical Bessel function of zeroth order, K_0(x), for x > 0.

=back

=over

=item C<gsl_sf_bessel_K1_e($x, $result)>

=item C<gsl_sf_bessel_K1($x)>

-These routines compute the irregular modified cylindrical Bessel function of first order, K_1(x), for x > 0. 

=back

=over

=item C<gsl_sf_bessel_Kn_e($n, $x, $result)>

=item C<gsl_sf_bessel_Kn($n, $x)>

-These routines compute the irregular modified cylindrical Bessel function of order $n, K_n(x), for x > 0.

=back

=over

=item C<gsl_sf_bessel_Kn_array>

-

=back

=over

=item C<gsl_sf_bessel_K0_scaled_e($x, $result)>

=item C<gsl_sf_bessel_K0_scaled($x)>

-These routines compute the scaled irregular modified cylindrical Bessel function of zeroth order \exp(x) K_0(x) for x>0. 

=back

=over

=item C<gsl_sf_bessel_K1_scaled_e($x, $result)>

=item C<gsl_sf_bessel_K1_scaled($x)>

-

=back

=over

=item C<gsl_sf_bessel_Kn_scaled_e($n, $x, $result)>

=item C<gsl_sf_bessel_Kn_scaled($n, $x)>

-

=back

=over

=item C<gsl_sf_bessel_Kn_scaled_array >

-

=back

=over

=item C<gsl_sf_bessel_j0_e($x, $result)>

=item C<gsl_sf_bessel_j0($x)>

-

=back

=over

=item C<gsl_sf_bessel_j1_e($x, $result)>

=item C<gsl_sf_bessel_j1($x)>

-

=back

=over

=item C<gsl_sf_bessel_j2_e($x, $result)>

=item C<gsl_sf_bessel_j2($x)>

-

=back

=over

=item C<gsl_sf_bessel_jl_e($l, $x, $result)>

=item C<gsl_sf_bessel_jl($l, $x)>

-

=back

=over

=item C<gsl_sf_bessel_jl_array>

-

=back

=over

=item C<gsl_sf_bessel_jl_steed_array>

-

=back

=over

=item C<gsl_sf_bessel_y0_e($x, $result)>

=item C<gsl_sf_bessel_y0($x)>

-

=back

=over

=item C<gsl_sf_bessel_y1_e($x, $result)>

=item C<gsl_sf_bessel_y1($x)>

-

=back

=over

=item C<gsl_sf_bessel_y2_e($x, $result)>

=item C<gsl_sf_bessel_y2($x)>

-

=back

=over

=item C<gsl_sf_bessel_yl_e($l, $x, $result)>

=item C<gsl_sf_bessel_yl($l, $x)>

-

=back

=over

=item C<gsl_sf_bessel_yl_array>

-

=back

=over

=item C<gsl_sf_bessel_i0_scaled_e($x, $result)>

=item C<gsl_sf_bessel_i0_scaled($x)>

-

=back

=over

=item C<gsl_sf_bessel_i1_scaled_e($x, $result)>

=item C<gsl_sf_bessel_i1_scaled($x)>

-

=back

=over

=item C<gsl_sf_bessel_i2_scaled_e($x, $result)>

=item C<gsl_sf_bessel_i2_scaled($x)>

-

=back

=over

=item C<gsl_sf_bessel_il_scaled_e($l, $x, $result)>

=item C<gsl_sf_bessel_il_scaled($x)>

-

=back

=over

=item C<gsl_sf_bessel_il_scaled_array>

-

=back

=over

=item C<gsl_sf_bessel_k0_scaled_e($x, $result)>

=item C<gsl_sf_bessel_k0_scale($x)>

-

=back

=over

=item C<gsl_sf_bessel_k1_scaled_e($x, $result)>

=item C<gsl_sf_bessel_k1_scaled($x)>

-

=back

=over

=item C<gsl_sf_bessel_k2_scaled_e($x, $result) >

=item C<gsl_sf_bessel_k2_scaled($x)>

-

=back

=over

=item C<gsl_sf_bessel_kl_scaled_e($l, $x, $result)>

=item C<gsl_sf_bessel_kl_scaled($l, $x)>

-

=back

=over

=item C<gsl_sf_bessel_kl_scaled_array>

-

=back

=over

=item C<gsl_sf_bessel_Jnu_e($nu, $x, $result)>

=item C<gsl_sf_bessel_Jnu($nu, $x)>

-

=back

=over

=item C<gsl_sf_bessel_sequence_Jnu_e >

-

=back

=over

=item C<gsl_sf_bessel_Ynu_e($nu, $x, $result)>

=item C<gsl_sf_bessel_Ynu($nu, $x)>

-

=back

=over

=item C<gsl_sf_bessel_Inu_scaled_e($nu, $x, $result)>

=item C<gsl_sf_bessel_Inu_scaled($nu, $x)>

-

=back

=over

=item C<gsl_sf_bessel_Inu_e($nu, $x, $result)>

=item C<gsl_sf_bessel_Inu($nu, $x)>

-

=back

=over

=item C<gsl_sf_bessel_Knu_scaled_e($nu, $x, $result)>

=item C<gsl_sf_bessel_Knu_scaled($nu, $x)>

-

=back

=over

=item C<gsl_sf_bessel_Knu_e($nu, $x, $result)>

=item C<gsl_sf_bessel_Knu($nu, $x)>

-

=back

=over

=item C<gsl_sf_bessel_lnKnu_e($nu, $x, $result)>

=item C<gsl_sf_bessel_lnKnu($nu, $x)>

-

=back

=over

=item C<gsl_sf_bessel_zero_J0_e($s, $result)>

=item C<gsl_sf_bessel_zero_J0($s)>

-

=back

=over

=item C<gsl_sf_bessel_zero_J1_e($s, $result)>

=item C<gsl_sf_bessel_zero_J1($s)>

-

=back

=over

=item C<gsl_sf_bessel_zero_Jnu_e($nu, $s, $result)>

=item C<gsl_sf_bessel_zero_Jnu($nu, $s)>

-

=back

=over

=item C<gsl_sf_clausen_e($x, $result)>

=item C<gsl_sf_clausen($x)>

-

=back

=over

=item C<gsl_sf_hydrogenicR_1_e($Z, $r, $result)>

=item C<gsl_sf_hydrogenicR_1($Z, $r)>

-

=back

=over

=item C<gsl_sf_hydrogenicR_e($n, $l, $Z, $r, $result)>

=item C<gsl_sf_hydrogenicR($n, $l, $Z, $r)>

-

=back

=over

=item C<gsl_sf_coulomb_wave_FG_e($eta, $x, $L_F, $k, $F, gsl_sf_result * Fp, gsl_sf_result * G, $Gp)> - This function computes the Coulomb wave functions F_L(\eta,x), G_{L-k}(\eta,x) and their derivatives F'_L(\eta,x), G'_{L-k}(\eta,x) with respect to $x. The parameters are restricted to L, L-k > -1/2, x > 0 and integer $k. Note that L itself is not restricted to being an integer. The results are stored in the parameters $F, $G for the function values and $Fp, $Gp for the derivative values. $F, $G, $Fp, $Gp are all gsl_result structs. If an overflow occurs, $GSL_EOVRFLW is returned and scaling exponents are returned as second and third values. 

=item C<gsl_sf_coulomb_wave_F_array > -

=item C<gsl_sf_coulomb_wave_FG_array> -

=item C<gsl_sf_coulomb_wave_FGp_array> -

=item C<gsl_sf_coulomb_wave_sphF_array> -

=item C<gsl_sf_coulomb_CL_e($L, $eta, $result)> - This function computes the Coulomb wave function normalization constant C_L($eta) for $L > -1. 

=item C<gsl_sf_coulomb_CL_arrayi> - 

=back

=over

=item C<gsl_sf_coupling_3j_e($two_ja, $two_jb, $two_jc, $two_ma, $two_mb, $two_mc, $result)>

=item C<gsl_sf_coupling_3j($two_ja, $two_jb, $two_jc, $two_ma, $two_mb, $two_mc)>

- These routines compute the Wigner 3-j coefficient,
   (ja jb jc
    ma mb mc)
 where the arguments are given in half-integer units, ja = $two_ja/2, ma = $two_ma/2, etc. 

=back

=over

=item C<gsl_sf_coupling_6j_e($two_ja, $two_jb, $two_jc, $two_jd, $two_je, $two_jf, $result)>

=item C<gsl_sf_coupling_6j($two_ja, $two_jb, $two_jc, $two_jd, $two_je, $two_jf)>

- These routines compute the Wigner 6-j coefficient,
   {ja jb jc
    jd je jf}
 where the arguments are given in half-integer units, ja = $two_ja/2, ma = $two_ma/2, etc. 

=back

=over

=item C<gsl_sf_coupling_RacahW_e>

=item C<gsl_sf_coupling_RacahW>

-

=back

=over

=item C<gsl_sf_coupling_9j_e($two_ja, $two_jb, $two_jc, $two_jd, $two_je, $two_jf, $two_jg, $two_jh, $two_ji, $result)>

=item C<gsl_sf_coupling_9j($two_ja, $two_jb, $two_jc, $two_jd, $two_je, $two_jf, $two_jg, $two_jh, $two_ji)>

-These routines compute the Wigner 9-j coefficient,

          {ja jb jc
           jd je jf
           jg jh ji}
 where the arguments are given in half-integer units, ja = two_ja/2, ma = two_ma/2, etc. 

=back

=over

=item C<gsl_sf_dawson_e($x, $result)> 

=item C<gsl_sf_dawson($x)>

-These routines compute the value of Dawson's integral for $x. 

=back

=over

=item C<gsl_sf_debye_1_e($x, $result)>

=item C<gsl_sf_debye_1($x)>

-These routines compute the first-order Debye function D_1(x) = (1/x) \int_0^x dt (t/(e^t - 1)). 

=back

=over

=item C<gsl_sf_debye_2_e($x, $result)>

=item C<gsl_sf_debye_2($x)>

-These routines compute the second-order Debye function D_2(x) = (2/x^2) \int_0^x dt (t^2/(e^t - 1)). 

=back

=over

=item C<gsl_sf_debye_3_e($x, $result)>

=item C<gsl_sf_debye_3($x)>

-These routines compute the third-order Debye function D_3(x) = (3/x^3) \int_0^x dt (t^3/(e^t - 1)). 

=back

=over

=item C<gsl_sf_debye_4_e($x, $result)>

=item C<gsl_sf_debye_4($x)>

-These routines compute the fourth-order Debye function D_4(x) = (4/x^4) \int_0^x dt (t^4/(e^t - 1)). 

=back

=over

=item C<gsl_sf_debye_5_e($x, $result)>

=item C<gsl_sf_debye_5($x)>

-These routines compute the fifth-order Debye function D_5(x) = (5/x^5) \int_0^x dt (t^5/(e^t - 1)). 

=back

=over

=item C<gsl_sf_debye_6_e($x, $result)>

=item C<gsl_sf_debye_6($x)>

-These routines compute the sixth-order Debye function D_6(x) = (6/x^6) \int_0^x dt (t^6/(e^t - 1)). 

=back

=over

=item C<gsl_sf_dilog_e ($x, $result)>

=item C<gsl_sf_dilog($x)>

- These routines compute the dilogarithm for a real argument. In Lewin's notation this is Li_2(x), the real part of the dilogarithm of a real x. It is defined by the integral representation Li_2(x) = - \Re \int_0^x ds \log(1-s) / s. Note that \Im(Li_2(x)) = 0 for x <= 1, and -\pi\log(x) for x > 1. Note that Abramowitz & Stegun refer to the Spence integral S(x)=Li_2(1-x) as the dilogarithm rather than Li_2(x). 

=back

=over

=item C<gsl_sf_complex_dilog_xy_e> -

=item C<gsl_sf_complex_dilog_e($r, $theta, $result_re, $result_im)> - This function computes the full complex-valued dilogarithm for the complex argument z = r \exp(i \theta). The real and imaginary parts of the result are returned in the $result_re and $result_im gsl_result structs. 

=item C<gsl_sf_complex_spence_xy_e> -

=back

=over

=item C<gsl_sf_multiply>

=item C<gsl_sf_multiply_e($x, $y, $result)> - This function multiplies $x and $y storing the product and its associated error in $result. 

=item C<gsl_sf_multiply_err_e($x, $dx, $y, $dy, $result)> - This function multiplies $x and $y with associated absolute errors $dx and $dy. The product xy +/- xy \sqrt((dx/x)^2 +(dy/y)^2) is stored in $result. 

-

=back

=over


=item C<gsl_sf_ellint_Kcomp_e($k, $mode, $result)>

=item C<gsl_sf_ellint_Kcomp($k, $mode)>

-These routines compute the complete elliptic integral K($k) to the accuracy specified by the mode variable mode. Note that Abramowitz & Stegun define this function in terms of the parameter m = k^2. 

=back

=over

=item C<gsl_sf_ellint_Ecomp_e($k, $mode, $result)>

=item C<gsl_sf_ellint_Ecomp($k, $mode)>

-

=back

=over

=item C<gsl_sf_ellint_Pcomp_e($k, $n, $mode, $result)>

=item C<gsl_sf_ellint_Pcomp($k, $n, $mode)>

-

=back

=over

=item C<gsl_sf_ellint_Dcomp_e>

=item C<gsl_sf_ellint_Dcomp >

-

=back

=over

=item C<gsl_sf_ellint_F_e($phi, $k, $mode, $result)>

=item C<gsl_sf_ellint_F($phi, $k, $mode)>

-These routines compute the incomplete elliptic integral F($phi,$k) to the accuracy specified by the mode variable mode. Note that Abramowitz & Stegun define this function in terms of the parameter m = k^2.

=back

=over

=item C<gsl_sf_ellint_E_e($phi, $k, $mode, $result)>

=item C<gsl_sf_ellint_E($phi, $k, $mode)>

-These routines compute the incomplete elliptic integral E($phi,$k) to the accuracy specified by the mode variable mode. Note that Abramowitz & Stegun define this function in terms of the parameter m = k^2.

=back

=over

=item C<gsl_sf_ellint_P_e($phi, $k, $n, $mode, $result)>

=item C<gsl_sf_ellint_P($phi, $k, $n, $mode)>

-These routines compute the incomplete elliptic integral \Pi(\phi,k,n) to the accuracy specified by the mode variable mode. Note that Abramowitz & Stegun define this function in terms of the parameters m = k^2 and \sin^2(\alpha) = k^2, with the change of sign n \to -n.

=back

=over

=item C<gsl_sf_ellint_D_e($phi, $k, $n, $mode, $result)>

=item C<gsl_sf_ellint_D($phi, $k, $n, $mode)>

-These functions compute the incomplete elliptic integral D(\phi,k) which is defined through the Carlson form RD(x,y,z) by the following relation, D(\phi,k,n) = (1/3)(\sin(\phi))^3 RD (1-\sin^2(\phi), 1-k^2 \sin^2(\phi), 1). The argument $n is not used and will be removed in a future release.

=back

=over

=item C<gsl_sf_ellint_RC_e($x, $y, $mode, $result)>

=item C<gsl_sf_ellint_RC($x, $y, $mode)>

- These routines compute the incomplete elliptic integral RC($x,$y) to the accuracy specified by the mode variable $mode. 

=back

=over

=item C<gsl_sf_ellint_RD_e($x, $y, $z, $mode, $result)>

=item C<gsl_sf_ellint_RD($x, $y, $z, $mode)>

- These routines compute the incomplete elliptic integral RD($x,$y,$z) to the accuracy specified by the mode variable $mode.

=back

=over

=item C<gsl_sf_ellint_RF_e($x, $y, $z, $mode, $result)>

=item C<gsl_sf_ellint_RF($x, $y, $z, $mode)>

- These routines compute the incomplete elliptic integral RF($x,$y,$z) to the accuracy specified by the mode variable $mode. 

=back

=over

=item C<gsl_sf_ellint_RJ_e($x, $y, $z, $p, $mode, $result)>

=item C<gsl_sf_ellint_RJ($x, $y, $z, $p, $mode)>

- These routines compute the incomplete elliptic integral RJ($x,$y,$z,$p) to the accuracy specified by the mode variable $mode. 

=back

=over

=item C<gsl_sf_elljac_e($u, $m)> - This function computes the Jacobian elliptic functions sn(u|m), cn(u|m), dn(u|m) by descending Landen transformations. The function returns 0 if the operation succeded, 1 otherwise and then returns the result of sn, cn and dn in this order.

=item C<gsl_sf_erfc_e($x, $result)>

=item C<gsl_sf_erfc($x)>

-These routines compute the complementary error function erfc(x) = 1 - erf(x) = (2/\sqrt(\pi)) \int_x^\infty \exp(-t^2). 

=back

=over

=item C<gsl_sf_log_erfc_e($x, $result)>

=item C<gsl_sf_log_erfc($x)>

-These routines compute the logarithm of the complementary error function \log(\erfc(x)).

=back

=over

=item C<gsl_sf_erf_e($x, $result)>

=item C<gsl_sf_erf($x)>

-These routines compute the error function erf(x), where erf(x) = (2/\sqrt(\pi)) \int_0^x dt \exp(-t^2).

=back

=over

=item C<gsl_sf_erf_Z_e($x, $result)>

=item C<gsl_sf_erf_Z($x)>

-These routines compute the Gaussian probability density function Z(x) = (1/\sqrt{2\pi}) \exp(-x^2/2).

=back

=over

=item C<gsl_sf_erf_Q_e($x, $result)>

=item C<gsl_sf_erf_Q($x)>

- These routines compute the upper tail of the Gaussian probability function Q(x) = (1/\sqrt{2\pi}) \int_x^\infty dt \exp(-t^2/2). The hazard function for the normal distribution, also known as the inverse Mill's ratio, is defined as, h(x) = Z(x)/Q(x) = \sqrt{2/\pi} \exp(-x^2 / 2) / \erfc(x/\sqrt 2) It decreases rapidly as x approaches -\infty and asymptotes to h(x) \sim x as x approaches +\infty. 

=back

=over

=item C<gsl_sf_hazard_e($x, $result)>

=item C<gsl_sf_hazard($x)>

- These routines compute the hazard function for the normal distribution.

=back

=over

=item C<gsl_sf_exp_e($x, $result)>

=item C<gsl_sf_exp($x)>

- These routines provide an exponential function \exp(x) using GSL semantics and error checking. 

=back

=over

=item C<gsl_sf_exp_e10_e> -

=back

=over

=item C<gsl_sf_exp_mult_e >

=item C<gsl_sf_exp_mult>

-

=back

=over

=item C<gsl_sf_exp_mult_e10_e> - 

=back

=over

=item C<gsl_sf_expm1_e($x, $result)>

=item C<gsl_sf_expm1($x)>

-These routines compute the quantity \exp(x)-1 using an algorithm that is accurate for small x. 

=back

=over

=item C<gsl_sf_exprel_e($x, $result)>

=item C<gsl_sf_exprel($x)>

-These routines compute the quantity (\exp(x)-1)/x using an algorithm that is accurate for small x. For small x the algorithm is based on the expansion (\exp(x)-1)/x = 1 + x/2 + x^2/(2*3) + x^3/(2*3*4) + \dots. 

=back

=over

=item C<gsl_sf_exprel_2_e($x, $result)>

=item C<gsl_sf_exprel_2($x)>

-These routines compute the quantity 2(\exp(x)-1-x)/x^2 using an algorithm that is accurate for small x. For small x the algorithm is based on the expansion 2(\exp(x)-1-x)/x^2 = 1 + x/3 + x^2/(3*4) + x^3/(3*4*5) + \dots.

=back

=over

=item C<gsl_sf_exprel_n_e($x, $result)>

=item C<gsl_sf_exprel_n($x)>

-These routines compute the N-relative exponential, which is the n-th generalization of the functions gsl_sf_exprel and gsl_sf_exprel2. The N-relative exponential is given by, 
 exprel_N(x) = N!/x^N (\exp(x) - \sum_{k=0}^{N-1} x^k/k!)
  = 1 + x/(N+1) + x^2/((N+1)(N+2)) + ...
  = 1F1 (1,1+N,x)    

=back

=over

=item C<gsl_sf_exp_err_e($x, $dx, $result)> - This function exponentiates $x with an associated absolute error $dx. 

=item C<gsl_sf_exp_err_e10_e> - 

=item C<gsl_sf_exp_mult_err_e($x, $dx, $y, $dy, $result)> - 

=item C<gsl_sf_exp_mult_err_e10_e> -

=back

=over 

=item C<gsl_sf_expint_E1_e($x, $result)>

=item C<gsl_sf_expint_E1($x)>

-These routines compute the exponential integral E_1(x), E_1(x) := \Re \int_1^\infty dt \exp(-xt)/t.

=back

=over

=item C<gsl_sf_expint_E2_e($x, $result)>

=item C<gsl_sf_expint_E2($x)>

-These routines compute the second-order exponential integral E_2(x),
  E_2(x) := \Re \int_1^\infty dt \exp(-xt)/t^2.
     

=back

=over

=item C<gsl_sf_expint_En_e($n, $x, $result)>

=item C<gsl_sf_expint_En($n, $x)>

-These routines compute the exponential integral E_n(x) of order n,
  E_n(x) := \Re \int_1^\infty dt \exp(-xt)/t^n.
     

=back

=over

=item C<gsl_sf_expint_E1_scaled_e >

=item C<gsl_sf_expint_E1_scaled>

-

=back

=over

=item C<gsl_sf_expint_E2_scaled_e>

=item C<gsl_sf_expint_E2_scaled >

-

=back

=over

=item C<gsl_sf_expint_En_scaled_e>

=item C<gsl_sf_expint_En_scaled>

-

=back

=over

=item C<gsl_sf_expint_Ei_e($x, $result)>

=item C<gsl_sf_expint_Ei($x)>

-These routines compute the exponential integral Ei(x), Ei(x) := - PV(\int_{-x}^\infty dt \exp(-t)/t) where PV denotes the principal value of the integral. 

=back

=over

=item C<gsl_sf_expint_Ei_scaled_e>

=item C<gsl_sf_expint_Ei_scaled >

-

=back

=over

=item C<gsl_sf_Shi_e($x, $result)>

=item C<gsl_sf_Shi($x)>

-These routines compute the integral Shi(x) = \int_0^x dt \sinh(t)/t. 

=back

=over

=item C<gsl_sf_Chi_e($x, $result)>

=item C<gsl_sf_Chi($x)>

-These routines compute the integral Chi(x) := \Re[ \gamma_E + \log(x) + \int_0^x dt (\cosh[t]-1)/t] , where \gamma_E is the Euler constant (available as $M_EULER from the Math::GSL::Const module).

=back

=over

=item C<gsl_sf_expint_3_e($x, $result)>

=item C<gsl_sf_expint_3($x)>

-These routines compute the third-order exponential integral Ei_3(x) = \int_0^xdt \exp(-t^3) for x >= 0.

=back

=over

=item C<gsl_sf_Si_e($x, $result)>

=item C<gsl_sf_Si($x)>

-These routines compute the Sine integral Si(x) = \int_0^x dt \sin(t)/t.

=back

=over

=item C<gsl_sf_Ci_e($x, $result)>

=item C<gsl_sf_Ci($x)>

-These routines compute the Cosine integral Ci(x) = -\int_x^\infty dt \cos(t)/t for x > 0.

=back

=over

=item C<gsl_sf_fermi_dirac_m1_e($x, $result)>

=item C<gsl_sf_fermi_dirac_m1($x)>

-These routines compute the complete Fermi-Dirac integral with an index of -1. This integral is given by F_{-1}(x) = e^x / (1 + e^x).

=back

=over

=item C<gsl_sf_fermi_dirac_0_e($x, $result)>

=item C<gsl_sf_fermi_dirac_0($x)>

-These routines compute the complete Fermi-Dirac integral with an index of 0. This integral is given by F_0(x) = \ln(1 + e^x).

=back

=over

=item C<gsl_sf_fermi_dirac_1_e($x, $result)>

=item C<gsl_sf_fermi_dirac_1($x)>

-These routines compute the complete Fermi-Dirac integral with an index of 1, F_1(x) = \int_0^\infty dt (t /(\exp(t-x)+1)). 

=back

=over

=item C<gsl_sf_fermi_dirac_2_e($x, $result)>

=item C<gsl_sf_fermi_dirac_2($x)>

-These routines compute the complete Fermi-Dirac integral with an index of 2, F_2(x) = (1/2) \int_0^\infty dt (t^2 /(\exp(t-x)+1)). 

=back

=over

=item C<gsl_sf_fermi_dirac_int_e($j, $x, $result)>

=item C<gsl_sf_fermi_dirac_int($j, $x)>

-These routines compute the complete Fermi-Dirac integral with an integer index of j, F_j(x) = (1/\Gamma(j+1)) \int_0^\infty dt (t^j /(\exp(t-x)+1)).

=back

=over

=item C<gsl_sf_fermi_dirac_mhalf_e($x, $result)>

=item C<gsl_sf_fermi_dirac_mhalf($x)>

-These routines compute the complete Fermi-Dirac integral F_{-1/2}(x).

=back

=over

=item C<gsl_sf_fermi_dirac_half_e($x, $result)>

=item C<gsl_sf_fermi_dirac_half($x)>

-These routines compute the complete Fermi-Dirac integral F_{1/2}(x). 

=back

=over

=item C<gsl_sf_fermi_dirac_3half_e($x, $result)>

=item C<gsl_sf_fermi_dirac_3half($x)>

-These routines compute the complete Fermi-Dirac integral F_{3/2}(x). 

=back

=over

=item C<gsl_sf_fermi_dirac_inc_0_e($x, $b, $result)>

=item C<gsl_sf_fermi_dirac_inc_0($x, $b, $result)>

-These routines compute the incomplete Fermi-Dirac integral with an index of zero, F_0(x,b) = \ln(1 + e^{b-x}) - (b-x). 

=back

=over

=item C<gsl_sf_legendre_Pl_e($l, $x, $result)>

=item C<gsl_sf_legendre_Pl($l, $x)>

-These functions evaluate the Legendre polynomial P_l(x) for a specific value of l, x subject to l >= 0, |x| <= 1 

=back

=over

=item C<gsl_sf_legendre_Pl_array>

=item C<gsl_sf_legendre_Pl_deriv_array>

-

=back

=over

=item C<gsl_sf_legendre_P1_e($x, $result)>

=item C<gsl_sf_legendre_P2_e($x, $result)>

=item C<gsl_sf_legendre_P3_e($x, $result)>

=item C<gsl_sf_legendre_P1($x)>

=item C<gsl_sf_legendre_P2($x)>

=item C<gsl_sf_legendre_P3($x)>

-These functions evaluate the Legendre polynomials P_l(x) using explicit representations for l=1, 2, 3. 

=back

=over

=item C<gsl_sf_legendre_Q0_e($x, $result)>

=item C<gsl_sf_legendre_Q0($x)>

-These routines compute the Legendre function Q_0(x) for x > -1, x != 1.

=back

=over

=item C<gsl_sf_legendre_Q1_e($x, $result)>

=item C<gsl_sf_legendre_Q1($x)>

-These routines compute the Legendre function Q_1(x) for x > -1, x != 1.

=back

=over

=item C<gsl_sf_legendre_Ql_e($l, $x, $result)>

=item C<gsl_sf_legendre_Ql($l, $x)>

-These routines compute the Legendre function Q_l(x) for x > -1, x != 1 and l >= 0.

=back

=over

=item C<gsl_sf_legendre_Plm_e($l, $m, $x, $result)>

=item C<gsl_sf_legendre_Plm($l, $m, $x)>

-These routines compute the associated Legendre polynomial P_l^m(x) for m >= 0, l >= m, |x| <= 1.

=back

=over

=item C<gsl_sf_legendre_Plm_array>

=item C<gsl_sf_legendre_Plm_deriv_array >

-

=back

=over

=item C<gsl_sf_legendre_sphPlm_e($l, $m, $x, $result)>

=item C<gsl_sf_legendre_sphPlm($l, $m, $x)>

-These routines compute the normalized associated Legendre polynomial $\sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x)$ suitable for use in spherical harmonics. The parameters must satisfy m >= 0, l >= m, |x| <= 1. Theses routines avoid the overflows that occur for the standard normalization of P_l^m(x).

=back

=over

=item C<gsl_sf_legendre_sphPlm_array >

=item C<gsl_sf_legendre_sphPlm_deriv_array>

-

=back

=over

=item C<gsl_sf_legendre_array_size> -

=back

=over

=item C<gsl_sf_lngamma_e($x, $result)>

=item C<gsl_sf_lngamma($x)>

-These routines compute the logarithm of the Gamma function, \log(\Gamma(x)), subject to x not being a negative integer or zero. For x<0 the real part of \log(\Gamma(x)) is returned, which is equivalent to \log(|\Gamma(x)|). The function is computed using the real Lanczos method.

=back

=over

=item C<gsl_sf_lngamma_sgn_e($x, $result_lg)> - This routine returns the sign of the gamma function and the logarithm of its magnitude into this order, subject to $x not being a negative integer or zero. The function is computed using the real Lanczos method. The value of the gamma function can be reconstructed using the relation \Gamma(x) = sgn * \exp(resultlg).

=back

=over

=item C<gsl_sf_gamma_e >

=item C<gsl_sf_gamma>

-

=back

=over

=item C<gsl_sf_gammastar_e>

=item C<gsl_sf_gammastar >

-

=back

=over

=item C<gsl_sf_gammainv_e>

=item C<gsl_sf_gammainv>

-

=back

=over

=item C<gsl_sf_lngamma_complex_e >

-

=back

=over

=item C<gsl_sf_gamma_inc_Q_e>

=item C<gsl_sf_gamma_inc_Q>

-

=back

=over

=item C<gsl_sf_gamma_inc_P_e >

=item C<gsl_sf_gamma_inc_P>

-

=back

=over

=item C<gsl_sf_gamma_inc_e>

=item C<gsl_sf_gamma_inc >

-

=back

=over

=item C<gsl_sf_taylorcoeff_e>

=item C<gsl_sf_taylorcoeff>

-

=back

=over

=item C<gsl_sf_fact_e >

=item C<gsl_sf_fact>

-

=back

=over

=item C<gsl_sf_doublefact_e>

=item C<gsl_sf_doublefact >

-

=back

=over

=item C<gsl_sf_lnfact_e>

=item C<gsl_sf_lnfact>

-

=back

=over

=item C<gsl_sf_lndoublefact_e >

=item C<gsl_sf_lndoublefact>

-

=back

=over

=item C<gsl_sf_lnchoose_e>

=item C<gsl_sf_lnchoose >

-

=back

=over

=item C<gsl_sf_choose_e>

=item C<gsl_sf_choose>

-

=back

=over

=item C<gsl_sf_lnpoch_e >

=item C<gsl_sf_lnpoch>

-

=back

=over

=item C<gsl_sf_lnpoch_sgn_e>

-

=back

=over

=item C<gsl_sf_poch_e >

=item C<gsl_sf_poch>

-

=back

=over

=item C<gsl_sf_pochrel_e>

=item C<gsl_sf_pochrel >

-

=back

=over

=item C<gsl_sf_lnbeta_e>

=item C<gsl_sf_lnbeta>

-

=back

=over

=item C<gsl_sf_lnbeta_sgn_e >

-

=back

=over

=item C<gsl_sf_beta_e>

=item C<gsl_sf_beta>

-

=back

=over

=item C<gsl_sf_beta_inc_e >

=item C<gsl_sf_beta_inc>

-

=back

=over

=item C<gsl_sf_gegenpoly_1_e>

=item C<gsl_sf_gegenpoly_2_e >

=item C<gsl_sf_gegenpoly_3_e>

=item C<gsl_sf_gegenpoly_1>

=item C<gsl_sf_gegenpoly_2 >

=item C<gsl_sf_gegenpoly_3>

-

=back

=over

=item C<gsl_sf_gegenpoly_n_e>

=item C<gsl_sf_gegenpoly_n >

-

=back

=over

=item C<gsl_sf_gegenpoly_array>

=item C<gsl_sf_hyperg_0F1_e>

=item C<gsl_sf_hyperg_0F1 >

-

=back

=over

=item C<gsl_sf_hyperg_1F1_int_e>

=item C<gsl_sf_hyperg_1F1_int>

-

=back

=over

=item C<gsl_sf_hyperg_1F1_e >

=item C<gsl_sf_hyperg_1F1>

-

=back

=over

=item C<gsl_sf_hyperg_U_int_e>

=item C<gsl_sf_hyperg_U_int >

-

=back

=over

=item C<gsl_sf_hyperg_U_int_e10_e>

-

=back

=over

=item C<gsl_sf_hyperg_U_e>

=item C<gsl_sf_hyperg_U >

-

=back

=over

=item C<gsl_sf_hyperg_U_e10_e>

-

=back

=over

=item C<gsl_sf_hyperg_2F1_e>

=item C<gsl_sf_hyperg_2F1 >

-

=back

=over

=item C<gsl_sf_hyperg_2F1_conj_e>

=item C<gsl_sf_hyperg_2F1_conj>

-

=back

=over

=item C<gsl_sf_hyperg_2F1_renorm_e >

=item C<gsl_sf_hyperg_2F1_renorm>

-

=back

=over

=item C<gsl_sf_hyperg_2F1_conj_renorm_e>

=item C<gsl_sf_hyperg_2F1_conj_renorm >

-

=back

=over

=item C<gsl_sf_hyperg_2F0_e>

=item C<gsl_sf_hyperg_2F0>

-

=back

=over

=item C<gsl_sf_laguerre_1_e >

=item C<gsl_sf_laguerre_2_e>

=item C<gsl_sf_laguerre_3_e>

=item C<gsl_sf_laguerre_1 >

=item C<gsl_sf_laguerre_2>

=item C<gsl_sf_laguerre_3>

-

=back

=over

=item C<gsl_sf_laguerre_n_e >

=item C<gsl_sf_laguerre_n>

-

=back

=over

=item C<gsl_sf_lambert_W0_e>

=item C<gsl_sf_lambert_W0 >

-

=back

=over

=item C<gsl_sf_lambert_Wm1_e>

=item C<gsl_sf_lambert_Wm1>

-

=back

=over

=item C<gsl_sf_conicalP_half_e >

=item C<gsl_sf_conicalP_half>

-

=back

=over

=item C<gsl_sf_conicalP_mhalf_e>

=item C<gsl_sf_conicalP_mhalf >

-

=back

=over

=item C<gsl_sf_conicalP_0_e>

=item C<gsl_sf_conicalP_0>

-

=back

=over

=item C<gsl_sf_conicalP_1_e >

=item C<gsl_sf_conicalP_1>

-

=back

=over

=item C<gsl_sf_conicalP_sph_reg_e>

=item C<gsl_sf_conicalP_sph_reg >

-

=back

=over

=item C<gsl_sf_conicalP_cyl_reg_e>

=item C<gsl_sf_conicalP_cyl_reg>

-

=back

=over

=item C<gsl_sf_legendre_H3d_0_e >

=item C<gsl_sf_legendre_H3d_0>

-

=back

=over

=item C<gsl_sf_legendre_H3d_1_e>

=item C<gsl_sf_legendre_H3d_1 >

-

=back

=over

=item C<gsl_sf_legendre_H3d_e>

=item C<gsl_sf_legendre_H3d>

-

=back

=over

=item C<gsl_sf_legendre_H3d_array >

-

=back

=over

=item C<gsl_sf_log_e>

=item C<gsl_sf_log>

-

=back

=over

=item C<gsl_sf_log_abs_e >

=item C<gsl_sf_log_abs>

-

=back

=over

=item C<gsl_sf_complex_log_e>

-

=back

=over

=item C<gsl_sf_log_1plusx_e >

=item C<gsl_sf_log_1plusx>

-

=back

=over

=item C<gsl_sf_log_1plusx_mx_e>

=item C<gsl_sf_log_1plusx_mx >

-

=back

=over

=item C<gsl_sf_mathieu_a_array>

=item C<gsl_sf_mathieu_b_array>

-

=back

=over

=item C<gsl_sf_mathieu_a >

=item C<gsl_sf_mathieu_b>

-

=back

=over

=item C<gsl_sf_mathieu_a_coeff>

=item C<gsl_sf_mathieu_b_coeff >

-

=back

=over

=item C<gsl_sf_mathieu_alloc>

-

=back

=over

=item C<gsl_sf_mathieu_free>

-

=back

=over

=item C<gsl_sf_mathieu_ce >

=item C<gsl_sf_mathieu_se>

-

=back

=over

=item C<gsl_sf_mathieu_ce_array>

=item C<gsl_sf_mathieu_se_array >

-

=back

=over

=item C<gsl_sf_mathieu_Mc>

=item C<gsl_sf_mathieu_Ms>

-

=back

=over

=item C<gsl_sf_mathieu_Mc_array >

=item C<gsl_sf_mathieu_Ms_array>

-

=back

=over

=item C<gsl_sf_pow_int_e>

=item C<gsl_sf_pow_int >

-

=back

=over

=item C<gsl_sf_psi_int_e>

=item C<gsl_sf_psi_int>

-

=back

=over

=item C<gsl_sf_psi_e >

=item C<gsl_sf_psi>

-

=back

=over

=item C<gsl_sf_psi_1piy_e>

=item C<gsl_sf_psi_1piy >

-

=back

=over

=item C<gsl_sf_complex_psi_e>

-

=back

=over

=item C<gsl_sf_psi_1_int_e>

=item C<gsl_sf_psi_1_int >

-

=back

=over

=item C<gsl_sf_psi_1_e >

=item C<gsl_sf_psi_1>

-

=back

=over

=item C<gsl_sf_psi_n_e >

=item C<gsl_sf_psi_n>

-

=back

=over

=item C<gsl_sf_result_smash_e>

-

=back

=over

=item C<gsl_sf_synchrotron_1_e >

=item C<gsl_sf_synchrotron_1>

-

=back

=over

=item C<gsl_sf_synchrotron_2_e>

=item C<gsl_sf_synchrotron_2 >

-

=back

=over

=item C<gsl_sf_transport_2_e>

=item C<gsl_sf_transport_2>

-

=back

=over

=item C<gsl_sf_transport_3_e >

=item C<gsl_sf_transport_3>

-

=back

=over

=item C<gsl_sf_transport_4_e>

=item C<gsl_sf_transport_4 >

-

=back

=over

=item C<gsl_sf_transport_5_e>

=item C<gsl_sf_transport_5>

-

=back

=over

=item C<gsl_sf_sin_e >

=item C<gsl_sf_sin>

-

=back

=over

=item C<gsl_sf_cos_e>

=item C<gsl_sf_cos >

-

=back

=over

=item C<gsl_sf_hypot_e>

=item C<gsl_sf_hypot>

-

=back

=over

=item C<gsl_sf_complex_sin_e >

-

=back

=over

=item C<gsl_sf_complex_cos_e>

-

=back

=over

=item C<gsl_sf_complex_logsin_e>

-

=back

=over

=item C<gsl_sf_sinc_e >

=item C<gsl_sf_sinc>

-

=back

=over

=item C<gsl_sf_lnsinh_e>

=item C<gsl_sf_lnsinh >

-

=back

=over

=item C<gsl_sf_lncosh_e>

=item C<gsl_sf_lncosh>

-

=back

=over

=item C<gsl_sf_polar_to_rect >

-

=back

=over

=item C<gsl_sf_rect_to_polar>

-

=back

=over

=item C<gsl_sf_sin_err_e>

=item C<gsl_sf_cos_err_e >

-

=back

=over

=item C<gsl_sf_angle_restrict_symm_e>

=item C<gsl_sf_angle_restrict_symm>

-

=back

=over

=item C<gsl_sf_angle_restrict_pos_e >

=item C<gsl_sf_angle_restrict_pos>

-

=back

=over

=item C<gsl_sf_angle_restrict_symm_err_e>

=item C<gsl_sf_angle_restrict_pos_err_e >

=over

=item C<gsl_sf_atanint_e>

=item C<gsl_sf_atanint>

-These routines compute the Arctangent integral, which is defined as AtanInt(x) = \int_0^x dt \arctan(t)/t.

=back

=item C<gsl_sf_zeta_int_e >

=item C<gsl_sf_zeta_int>

=item C<gsl_sf_zeta_e gsl_sf_zeta >

=item C<gsl_sf_zetam1_e>

=item C<gsl_sf_zetam1>

=item C<gsl_sf_zetam1_int_e >

=item C<gsl_sf_zetam1_int>

=item C<gsl_sf_hzeta_e>

=item C<gsl_sf_hzeta >

=item C<gsl_sf_eta_int_e>

=item C<gsl_sf_eta_int>

=item C<gsl_sf_eta_e>

=item C<gsl_sf_eta >

=back

This module also contains the following constants used as mode in various of those functions :

=over

=item * GSL_PREC_DOUBLE - Double-precision, a relative accuracy of approximately 2 * 10^-16.

=item * GSL_PREC_SINGLE - Single-precision, a relative accuracy of approximately 10^-7.

=item * GSL_PREC_APPROX - Approximate values, a relative accuracy of approximately 5 * 10^-4. 

=back

 You can import the functions that you want to use by giving a space separated
 list to Math::GSL::SF when you use the package.  You can also write 
 use Math::GSL::SF qw/:all/ 
 to use all avaible functions of the module. Note that
 the tag names begin with a colon.  Other tags are also available, here is a
 complete list of all tags for this module :

=over

=item C<airy>

=item C<bessel> 

=item C<clausen> 

=item C<hydrogenic>

=item C<coulumb>

=item C<coupling>

=item C<dawson>

=item C<debye>

=item C<dilog>

=item C<factorial>

=item C<misc>

=item C<elliptic>

=item C<error>

=item C<hypergeometric>

=item C<laguerre>

=item C<legendre>

=item C<gamma>

=item C<transport>

=item C<trig>

=item C<zeta>

=item C<eta>

=item C<vars>

=back

For more informations on the functions, we refer you to the GSL offcial
documentation: L<http://www.gnu.org/software/gsl/manual/html_node/>

Tip : search on google: site:http://www.gnu.org/software/gsl/manual/html_node/name_of_the_function_you_want

=head1 EXAMPLES

This example computes the dilogarithm of 1/10 :

    use Math::GSL::SF qw/dilog/;
    my $x = gsl_sf_dilog(0.1);
    print "gsl_sf_dilog(0.1) = $x\n";

An example using Math::GSL::SF and gnuplot is in the B<examples/sf> folder of the source code.

=head1 AUTHORS

Jonathan Leto <jonathan@leto.net> and Thierry Moisan <thierry.moisan@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2008 Jonathan Leto and Thierry Moisan

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut
%}
