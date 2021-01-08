#!/bin/bash
BASEDIR=$PWD
set +x
. .colors.sh
set -e
if [ ! -f files_out.out ]; then
    echo -e "$(c R)[error] The model has not generated the output files_out.out"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output files_out.out"
    mv files_out.out ${OUTPUTS1}
fi
if [ ! -f diagnostics.out ]; then
    echo -e "$(c R)[error] The model has not generated the output diagnostics.out"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output diagnostics.out"
    mv diagnostics.out ${OUTPUTS2}
fi
if [ ! -f basin_crop_yld_aa.txt ]; then
    echo -e "$(c R)[error] The model has not generated the output basin_crop_yld_aa.txt"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output basin_crop_yld_aa.txt"
    mv basin_crop_yld_aa.txt ${OUTPUTS3}
fi
if [ ! -f channel_sd_yr.txt ]; then
    echo -e "$(c R)[error] The model has not generated the output channel_sd_yr.txt"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output channel_sd_yr.txt"
    mv channel_sd_yr.txt ${OUTPUTS4}
fi
if [ ! -f basin_wb_aa.txt ]; then
    echo -e "$(c R)[error] The model has not generated the output basin_wb_aa.txt"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output basin_wb_aa.txt"
    mv basin_wb_aa.txt ${OUTPUTS5}
fi
if [ ! -f hru_wb_aa.txt ]; then
    echo -e "$(c R)[error] The model has not generated the output hru_wb_aa.txt"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output hru_wb_aa.txt"
    mv hru_wb_aa.txt ${OUTPUTS6}
fi
if [ ! -f basin_crop_yld_yr.txt ]; then
    echo -e "$(c R)[error] The model has not generated the output basin_crop_yld_yr.txt"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output basin_crop_yld_yr.txt"
    mv basin_crop_yld_yr.txt ${OUTPUTS7}
fi
if [ ! -f basin_aqu_aa.txt ]; then
    echo -e "$(c R)[error] The model has not generated the output basin_aqu_aa.txt"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output basin_aqu_aa.txt"
    mv basin_aqu_aa.txt ${OUTPUTS8}
fi
if [ ! -f outlet.out ]; then
    echo -e "$(c R)[error] The model has not generated the output outlet.out"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output outlet.out"
    mv outlet.out ${OUTPUTS9}
fi
if [ ! -f hru_pw_aa.txt ]; then
    echo -e "$(c R)[error] The model has not generated the output hru_pw_aa.txt"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output hru_pw_aa.txt"
    mv hru_pw_aa.txt ${OUTPUTS10}
fi
if [ ! -f success.fin ]; then
    echo -e "$(c R)[error] The model has not generated the output success.fin"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output success.fin"
    mv success.fin ${OUTPUTS11}
fi
if [ ! -f hru_wb_day.txt ]; then
    echo -e "$(c R)[error] The model has not generated the output hru_wb_day.txt"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output hru_wb_day.txt"
    mv hru_wb_day.txt ${OUTPUTS12}
fi
if [ ! -f basin_pw_yr.txt ]; then
    echo -e "$(c R)[error] The model has not generated the output basin_pw_yr.txt"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output basin_pw_yr.txt"
    mv basin_pw_yr.txt ${OUTPUTS13}
fi
if [ ! -f basin_wb_yr.txt ]; then
    echo -e "$(c R)[error] The model has not generated the output basin_wb_yr.txt"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output basin_wb_yr.txt"
    mv basin_wb_yr.txt ${OUTPUTS14}
fi
if [ ! -f channel_sdmorph_yr.txt ]; then
    echo -e "$(c R)[error] The model has not generated the output channel_sdmorph_yr.txt"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output channel_sdmorph_yr.txt"
    mv channel_sdmorph_yr.txt ${OUTPUTS15}
fi
if [ ! -f crop_yld_aa.txt ]; then
    echo -e "$(c R)[error] The model has not generated the output crop_yld_aa.txt"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output crop_yld_aa.txt"
    mv crop_yld_aa.txt ${OUTPUTS16}
fi
