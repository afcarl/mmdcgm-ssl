THEANO_FLAGS=device=$1,lib.cnmem=1 python cdgm_x2y_xy2z_zy2x.py -name 'ssl-svhn-1000' -dataset svhn -flag evaluation -ssl_data_seed -1 -preprocess none -batch_norm_classifier true -top_mlp false -mlp_size 256 -nlayers_cla 6 -nk_cla 32,32,64,64,128,128  -str_cla 1,1,1,1,1,1 -ps_cla 1,2,1,2,1,1 -dk_cla 3,3,3,3,3,3 -pad_cla same,same,same,same,same,same -nonlin_cla rectify,rectify,rectify,rectify,rectify,rectify -dr_cla 0,0.2,0,0.2,0,0.2 -nz 128 -batch_norm_dgm false -nlayers_enc 5 -nk_enc 32,64,64,128,128 -dk_enc 5,3,3,3,3 -pad_enc same,same,same,same,same -str_enc 1,1,1,1,1 -ps_enc 2,1,2,1,2 -nonlin_enc rectify,rectify,rectify,rectify,rectify -dr_enc 0,0,0,0,0 -nlayers_dec 5 -nk_dec 128,64,64,32,3 -dk_dec 3,3,3,3,5 -pad_dec same,same,same,same,same -str_dec 1,1,1,1,1 -up_method unpool,none,unpool,none,unpool -ps_dec 2,1,2,1,2 -nonlin_dec rectify,rectify,rectify,rectify,sigmoid -dr_dec 0,0,0,0,0 -lr 3e-4 -nepochs 500 -anneal_lr_epoch 250 -anneal_lr_factor .99 -num_labelled_per_batch 500 -num_labelled 1000 -batch_size 1000 -alpha_decay 1e-4 -alpha_hinge 1. -alpha_hat 0.3 -alpha_reg 1e-3