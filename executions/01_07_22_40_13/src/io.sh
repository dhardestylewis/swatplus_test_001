#!/bin/bash

# -----------------------------------------------
# Option Parsing function for:
# -i<1..n> [files.. ] -p<1..n> {values} -o<1..n> [files.. ]
# {-iX fileX} {-pX valueX} {-oX fileX}
#
#
# - Please pass 3 Arguments to this script
#   - Arg1: Number of Inputs expected
#   - Arg2: Number of Parameters expected
#   - Arg3: Number of Outputs expected
# -----------------------------------------------

INUM=$1; shift
PNUM=$1; shift
ONUM=$1; shift

set_variables()
{
    for ((i=1; i<=INUM; i++)); do typeset ICOUNT$i=0; done
    for ((i=1; i<=PNUM; i++)); do typeset PCOUNT$i=0; done
    for ((i=1; i<=ONUM; i++)); do typeset OCOUNT$i=0; done
}

IFLAG=();
PFLAG=();
OFLAG=();
reset_flags()
{
    for ((j=1; j<=INUM; j++)); do IFLAG[$j]='0'; done
    for ((j=1; j<=PNUM; j++)); do PFLAG[$j]='0'; done
    for ((k=1; k<=ONUM; k++)); do OFLAG[$k]='0'; done
}

set_variables
reset_flags

while [ $# -gt 0 ]
do
    case "$1" in
        -i*) in=$(echo $1 | cut -di -f2); reset_flags; IFLAG[$in]='1';;
        -p*) pa=$(echo $1 | cut -dp -f2); reset_flags; PFLAG[$pa]='1';;
        -o*) op=$(echo $1 | cut -do -f2); reset_flags; OFLAG[$op]='1';;
        --) shift; break;;
        *)  for((ind=1; ind<=INUM; ind++)); do
                if [ "${IFLAG[$ind]}" = "1" ]
                then
                    x=""
                    if [ "${INPUTS[$ind]}" != "" ]; then x="|"; fi
                    INPUTS[$ind]="${INPUTS[$ind]}$x$1"
                fi
            done
            for((ind=1; ind<=PNUM; ind++)); do
                if [ "${PFLAG[$ind]}" = "1" ]
                then
                    x=""
                    if [ "${PARAM[$ind]}" != "" ]; then x="|"; fi
                    PARAMS[$ind]="${PARAMS[$ind]}$x$1"
                fi
            done
            for((ind=1; ind<=ONUM; ind++)); do
                if [ "${OFLAG[$ind]}" = "1" ]
                then
                    x=""
                    if [ "${OUTPUTS[$ind]}" != "" ]; then x="|"; fi
                    OUTPUTS[$ind]="${OUTPUTS[$ind]}$x$1"
                fi
            done;;
    esac
    shift
done

IFS='|'
for ((i=1; i<=INUM; i++)); do typeset INPUTS$i=$(echo ${INPUTS[$i]}); done
for ((i=1; i<=PNUM; i++)); do typeset PARAMS$i=$(echo ${PARAMS[$i]}); done
for ((i=1; i<=ONUM; i++)); do typeset OUTPUTS$i=$(echo ${OUTPUTS[$i]}); done
IFS=' '

snow_sno=${INPUTS1}
export snow_sno
chem_app_ops=${INPUTS2}
export chem_app_ops
cntable_lum=${INPUTS3}
export cntable_lum
rout_unit_def=${INPUTS4}
export rout_unit_def
hru_data_hru=${INPUTS5}
export hru-data_hru
plants_plt=${INPUTS6}
export plants_plt
aqu_unit_ele=${INPUTS7}
export aqu_unit_ele
channel_cha=${INPUTS8}
export channel_cha
urban_urb=${INPUTS9}
export urban_urb
hydrology_cha=${INPUTS10}
export hydrology_cha
soil_plant_ini=${INPUTS11}
export soil_plant_ini
weather_sta_cli=${INPUTS12}
export weather-sta_cli
graze_ops=${INPUTS13}
export graze_ops
ovn_table_lum=${INPUTS14}
export ovn_table_lum
septic_str=${INPUTS15}
export septic_str
sediment_cha=${INPUTS16}
export sediment_cha
flo_con_dtl=${INPUTS17}
export flo_con_dtl
chan_surf_lin=${INPUTS18}
export chan-surf_lin
management_sch=${INPUTS19}
export management_sch
rout_unit_ele=${INPUTS20}
export rout_unit_ele
object_cnt=${INPUTS21}
export object_cnt
aqu_cha_lin=${INPUTS22}
export aqu_cha_lin
ccw01_tmp=${INPUTS23}
export ccw01_tmp
nutrients_cha=${INPUTS24}
export nutrients_cha
codes_bsn=${INPUTS25}
export codes_bsn
field_fld=${INPUTS26}
export field_fld
aquifer_con=${INPUTS27}
export aquifer_con
pathogens_pth=${INPUTS28}
export pathogens_pth
soils_sol=${INPUTS29}
export soils_sol
parameters_bsn=${INPUTS30}
export parameters_bsn
weather_wgn_cli=${INPUTS31}
export weather-wgn_cli
ccw01_pcp=${INPUTS32}
export ccw01_pcp
channel_lte_cha=${INPUTS33}
export channel-lte_cha
pcp_cli=${INPUTS34}
export pcp_cli
print_prt=${INPUTS35}
export print_prt
cons_practice_lum=${INPUTS36}
export cons_practice_lum
septic_sep=${INPUTS37}
export septic_sep
rout_unit_con=${INPUTS38}
export rout_unit_con
om_water_ini=${INPUTS39}
export om_water_ini
topography_hyd=${INPUTS40}
export topography_hyd
rout_unit_rtu=${INPUTS41}
export rout_unit_rtu
hru_con=${INPUTS42}
export hru_con
chandeg_con=${INPUTS43}
export chandeg_con
aquifer_aqu=${INPUTS44}
export aquifer_aqu
sweep_ops=${INPUTS45}
export sweep_ops
initial_cha=${INPUTS46}
export initial_cha
plant_ini=${INPUTS47}
export plant_ini
time_sim=${INPUTS48}
export time_sim
hyd_sed_lte_cha=${INPUTS49}
export hyd-sed-lte_cha
fertilizer_frt=${INPUTS50}
export fertilizer_frt
tmp_cli=${INPUTS51}
export tmp_cli
harv_ops=${INPUTS52}
export harv_ops
res_rel_dtl=${INPUTS53}
export res_rel_dtl
lum_dtl=${INPUTS54}
export lum_dtl
pesticide_pst=${INPUTS55}
export pesticide_pst
ls_unit_ele=${INPUTS56}
export ls_unit_ele
tillage_til=${INPUTS57}
export tillage_til
hydrology_hyd=${INPUTS58}
export hydrology_hyd
object_prt=${INPUTS59}
export object_prt
nutrients_sol=${INPUTS60}
export nutrients_sol
initial_aqu=${INPUTS61}
export initial_aqu
ls_unit_def=${INPUTS62}
export ls_unit_def
landuse_lum=${INPUTS63}
export landuse_lum
scen_lu_dtl=${INPUTS64}
export scen_lu_dtl



## PARAMETERS VARIABLES


find . -maxdepth 1 -name '*.zip' -execdir unzip '{}' ';'

umask 0000

## PARAMETERS VARIABLES
if [ ! -f file.cio.bk ]; then
  cp file.cio file.cio.bk
fi

envsubst < file.cio.bk> file.cio
rm file.cio.bk


